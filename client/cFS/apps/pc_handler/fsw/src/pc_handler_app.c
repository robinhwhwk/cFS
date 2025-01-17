#include "cfe_platform_cfg.h"
#include "pc_handler_app_events.h"
#include "pc_handler_app.h"

PC_HANDLER_AppData_t PC_HANDLER_AppData;

void PC_HANDLER_AppMain(void)
{
    int32     status;

    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    PC_HANDLER_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;

    if (CFE_SB_CreatePipe(&PC_HANDLER_AppData.Pipe, PC_HANDLER_PIPE_DEPTH, "PC_HANDLER_CMD_PIPE") != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR, "error creating pipe");
        return;
    }

    CFE_EVS_SendDbg(PC_HANDLER_EID, "Subscribing to 0x%04x", PC_HANDLER_CMD_MID);
    /*
        ** Subscribe to ground command packets
    */
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(PC_HANDLER_CMD_MID), PC_HANDLER_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION, "PC_HANDLER subscribed to command pipe PC_HANDLER_CMD_MID 0x%04X", PC_HANDLER_CMD_MID);
     /*
        ** Subscribe to client request command packets
    */
   
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(CLIENT_REQUEST_MID), PC_HANDLER_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR, "error subscribing to request");
        return;
    }
    CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION, "PC_HANDLER subscribed to command pipe PC_HANDLER_CMD_MID 0x%04X", CLIENT_REQUEST_MID);

    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(USER_REQUEST_MID), PC_HANDLER_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR, "error subscribing to request");
        return;
    }
    CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION, "PC_HANDLER subscribed to command pipe PC_HANDLER_CMD_MID 0x%04X", USER_REQUEST_MID);
    
    CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION, "PC_HANDLER App Initialized.");


    while (CFE_ES_RunLoop(&PC_HANDLER_AppData.RunStatus) == true)
    {
        /* Pend on receipt of command packet */
        CFE_SB_Buffer_t *MsgBuf;

        status = CFE_SB_ReceiveBuffer(&MsgBuf, PC_HANDLER_AppData.Pipe, CFE_SB_PEND_FOREVER);

        if (status == CFE_SUCCESS)
        {
            // CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION, "PC Handler received message");
            FILE_TRANSFER_SERVER_ProcessPacket(MsgBuf);
        }
        else
        {
            CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR, "PC_HANDLER APP: SB Pipe Read Error, App Will Exit");

            PC_HANDLER_AppData.RunStatus = CFE_ES_RunStatus_APP_ERROR;
        }
    }

    CFE_ES_ExitApp(PC_HANDLER_AppData.RunStatus);
}

void FILE_TRANSFER_SERVER_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr)
{
    CFE_SB_MsgId_t MsgId = CFE_SB_INVALID_MSG_ID;
    CFE_MSG_GetMsgId(&SBBufPtr->Msg, &MsgId);

    switch (MsgId.Value)
    {
        case CLIENT_REQUEST_MID:
            FILE_TRANSFER_SERVER_ProcessRequestFileCmd(SBBufPtr);
            break;
        case USER_REQUEST_MID:
            FILE_TRANSFER_SERVER_ProcessRequestFileCmd(SBBufPtr);
            break;

        default:
            /* Unknown or unexpected message ID */
            CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR,
                              "FileTransferServer: invalid MsgId 0x%X", MsgId.Value);
            break;
    }
} /* End FILE_TRANSFER_SERVER_ProcessPacket */


void FILE_TRANSFER_SERVER_ProcessRequestFileCmd(CFE_SB_Buffer_t *SBBufPtr)
{
    const CPU_TEMP_request_t *CmdPtr = (const CPU_TEMP_request_t *) SBBufPtr;

    

    /* For demonstration, just log an event: which file is requested? */
    // CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION,
    //                   "FileTransferServer: Received request for file '%s'", CmdPtr->device_path);

    /* Send the requested file to the requesting client(s) */
    PC_HANDLER_AppData.chunkSize = CmdPtr->packetSize;
    FILE_TRANSFER_SERVER_SendFile(CmdPtr->device_path, CmdPtr->sender_mid);
} /* End FILE_TRANSFER_SERVER_ProcessRequestFileCmd */


/*******************************************************************************
** Function: FILE_TRANSFER_SERVER_SendFile
**
** Purpose:
**   Read the specified file from the local filesystem in chunks and publish
**   them as telemetry messages. The chunk messages can be forwarded by SBN
**   to all subscribers (or specifically to the client node if using filtered
**   subscription).
**
*******************************************************************************/
void FILE_TRANSFER_SERVER_SendFile(const char *filename, int32 message_id)
{
    PC_HANDLER_response_t response;
    /* Initialize the TLM message header for our chunk message */
    CFE_MSG_Init((CFE_MSG_Message_t *)&response, CFE_SB_ValueToMsgId(message_id), sizeof(response));

    /* Attempt to open the file */
    printf("File request for file %s from MID 0x%04x\n", filename, message_id);
    FILE *fp = fopen(filename, "rb");
    if (fp == NULL)
    {
        CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_ERROR,
                          "FileTransferServer: Unable to open file '%s'!", filename);
        return;
    }

    /* Read the file in chunks until EOF or an error occurs */
    size_t bytesRead = 0;
    do {
        /* Clear the chunk data each loop */
        response.Flags    = 0;  /* clear EOF flag initially */
        response.ChunkSize = 0;

        /* Read up to FILE_TRANSFER_MAX_CHUNK_SIZE bytes */
        bytesRead = fread(response.Data, 1, PC_HANDLER_AppData.chunkSize, fp);
        response.ChunkSize = (uint32)bytesRead;

        if (bytesRead > 0)
        {
            /* Publish the chunk to the software bus */
            // if (last == 1) {
            //     CFE_EVS_SendEvent(PC_HANDLER_EID, CFE_EVS_EventType_INFORMATION,
            //             "FileTransferServer: Last Packet for '%s'.", filename);
            // }
            // Check if the Queue is full here: pipe SBN_2_66_Pipe
            int status = CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&response, true);
            // printf("Sending response to MID 0x%4X\n", message_id);
            if (status != CFE_SUCCESS)
            {
                printf("FileTransferServer: SB transmit chunk failed, status=0x%08X\n", status);
                fclose(fp);
                return;
            }
            // while (status != CFE_SUCCESS)
            // {
            //     printf("PIPE_OVERFLOW_ERROR\n");
            //     status = CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&response, true);
            // }
        }

    } while (bytesRead == PC_HANDLER_AppData.chunkSize);

    // /* We reached EOF or a partial read. Now send a final chunk with EOF flag set. */
    response.Flags    = FILE_TRANSFER_FLAG_EOF;
    response.ChunkSize = 0;
    memset(response.Data, 0, sizeof(response.Data));
    CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&response, true);
    printf("Finished sending packets for request\n");

    /* Close the file */
    fclose(fp);
} /* End FILE_TRANSFER_SERVER_SendFile */


