/*******************************************************************************
** File:  FileTransferServer_app.c
**
** Purpose:
**   Demonstrate a simple cFS server application that responds to “request file”
**   commands by reading a file from the local filesystem and sending chunked
**   telemetry messages over the software bus (which SBN can forward to clients).
**
*******************************************************************************/

#include "cfe.h"
#include "FileTransferServer_app.h"
#include "FileTransferServer_events.h"
#include "FileTransferServer_msgids.h"
#include "FileTransferServer_msg.h"
#include "FileTransferClient_msg.h"  /* We might reuse the same request/chunk structures */
#include "FileTransferClient_msgids.h"
#include <string.h>
#include <stdio.h>

/*
 * Application global data
 */
FileTransferServer_AppData_t g_FileTransferServer_AppData;

/*******************************************************************************
** Function: FILE_TRANSFER_SERVER_AppMain
**
** Purpose:
**   The server application’s entry point and main loop.
**
*******************************************************************************/
void FILE_TRANSFER_SERVER_AppMain(void)
{
    int32 status;

    /* Register the app with cFE Executive Services */
    CFE_ES_RegisterApp();

    /* Perform application-specific initialization */
    status = FILE_TRANSFER_SERVER_AppInit();
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("FileTransferServer App: AppInit Failed, RC = 0x%08X\n", status);
        CFE_ES_ExitApp(CFE_ES_RunStatus_CORE_APP_INIT_ERROR);
    }

    /* Main process loop */
    while (CFE_ES_RunLoop(&g_FileTransferServer_AppData.RunStatus))
    {
        CFE_SB_Buffer_t *SBBufPtr = NULL;

        /* Wait for a message (500ms timeout, as example) */
        status = CFE_SB_ReceiveBuffer(&SBBufPtr, g_FileTransferServer_AppData.CmdPipe, CFE_SB_PEND_FOREVER);

        if (status == CFE_SUCCESS && SBBufPtr != NULL)
        {
            FILE_TRANSFER_SERVER_ProcessPacket(SBBufPtr);
        }

        /* Could do other periodic tasks here if needed */
    }

    /* Exit cleanly */
    CFE_ES_ExitApp(g_FileTransferServer_AppData.RunStatus);
} /* End FILE_TRANSFER_SERVER_AppMain */


/*******************************************************************************
** Function: FILE_TRANSFER_SERVER_AppInit
**
** Purpose:
**   Initialize server application data, subscribe to commands, etc.
**
*******************************************************************************/
int32 FILE_TRANSFER_SERVER_AppInit(void)
{
    memset(&g_FileTransferServer_AppData, 0, sizeof(g_FileTransferServer_AppData));

    g_FileTransferServer_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;

    /* Create a pipe to receive commands (including “request file” commands). */
    int32 status = CFE_SB_CreatePipe(&g_FileTransferServer_AppData.CmdPipe, 10, "FILE_TRANSFER_SERVER_CMD_PIPE");
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("FileTransferServer App: CreatePipe failed, RC=0x%08X\n", status);
        return status;
    }

    /* Subscribe to the “request file” command from clients */
    status = CFE_SB_Subscribe(FILE_TRANSFER_CLIENT_REQUEST_FILE_MID,
                              g_FileTransferServer_AppData.CmdPipe);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("FileTransferServer App: Subscribe to REQUEST_FILE_MID failed, RC=0x%08X\n", status);
        return status;
    }

    /* Register for Event Services */
    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    CFE_ES_WriteToSysLog("FileTransferServer App Initialized.\n");
    return CFE_SUCCESS;
} /* End FILE_TRANSFER_SERVER_AppInit */


/*******************************************************************************
** Function: FILE_TRANSFER_SERVER_ProcessPacket
**
** Purpose:
**   Dispatch incoming messages to the appropriate handler.
**
*******************************************************************************/
void FILE_TRANSFER_SERVER_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr)
{
    CFE_SB_MsgId_t MsgId = CFE_SB_GetMsgId(SBBufPtr);

    switch (MsgId)
    {
        case FILE_TRANSFER_CLIENT_REQUEST_FILE_MID:
            FILE_TRANSFER_SERVER_ProcessRequestFileCmd(SBBufPtr);
            break;

        default:
            /* Unknown or unexpected message ID */
            CFE_EVS_SendEvent(FILE_TRANSFER_SERVER_INVALID_MSGID_ERR_EID, CFE_EVS_EventType_ERROR,
                              "FileTransferServer: invalid MsgId 0x%X", MsgId);
            break;
    }
} /* End FILE_TRANSFER_SERVER_ProcessPacket */


/*******************************************************************************
** Function: FILE_TRANSFER_SERVER_ProcessRequestFileCmd
**
** Purpose:
**   Handle the “request file” command from a client. This command includes
**   the filename the client wants. The server reads that file (if possible)
**   and sends it back in chunks.
**
*******************************************************************************/
void FILE_TRANSFER_SERVER_ProcessRequestFileCmd(CFE_SB_Buffer_t *SBBufPtr)
{
    const FileTransfer_RequestFileCmd_t *CmdPtr = (const FileTransfer_RequestFileCmd_t *) SBBufPtr;

    /* For demonstration, just log an event: which file is requested? */
    CFE_EVS_SendEvent(FILE_TRANSFER_SERVER_REQFILE_EID, CFE_EVS_EventType_INFORMATION,
                      "FileTransferServer: Received request for file '%s'", CmdPtr->FileName);

    /* Send the requested file to the requesting client(s) */
    FILE_TRANSFER_SERVER_SendFile(CmdPtr->FileName);
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
void FILE_TRANSFER_SERVER_SendFile(const char *filename)
{
    FileTransfer_FileChunkTlm_t chunkMsg;
    memset(&chunkMsg, 0, sizeof(chunkMsg));

    /* Initialize the TLM message header for our chunk message */
    CFE_MSG_Init(&chunkMsg.TlmHeader.Msg, FILE_TRANSFER_CLIENT_FILE_CHUNK_MID, sizeof(chunkMsg));

    /* Attempt to open the file */
    FILE *fp = fopen(filename, "rb");
    if (fp == NULL)
    {
        CFE_EVS_SendEvent(FILE_TRANSFER_SERVER_FILE_ERR_EID, CFE_EVS_EventType_ERROR,
                          "FileTransferServer: Unable to open file '%s'!", filename);
        return;
    }

    /* Read the file in chunks until EOF or an error occurs */
    size_t bytesRead = 0;
    do
    {
        /* Clear the chunk data each loop */
        memset(chunkMsg.Data, 0, sizeof(chunkMsg.Data));
        chunkMsg.Flags    = 0;  /* clear EOF flag initially */
        chunkMsg.ChunkSize = 0;

        /* Read up to FILE_TRANSFER_MAX_CHUNK_SIZE bytes */
        bytesRead = fread(chunkMsg.Data, 1, FILE_TRANSFER_MAX_CHUNK_SIZE, fp);
        chunkMsg.ChunkSize = (uint32)bytesRead;

        if (bytesRead > 0)
        {
            /* Publish the chunk to the software bus */
            int32 status = CFE_SB_TransmitMsg(&chunkMsg.TlmHeader.Msg, true);
            if (status != CFE_SUCCESS)
            {
                CFE_EVS_SendEvent(FILE_TRANSFER_SERVER_SB_ERR_EID, CFE_EVS_EventType_ERROR,
                                  "FileTransferServer: SB transmit chunk failed, status=0x%08X", status);
                fclose(fp);
                return;
            }
        }

    } while (bytesRead == FILE_TRANSFER_MAX_CHUNK_SIZE);

    /* We reached EOF or a partial read. Now send a final chunk with EOF flag set. */
    chunkMsg.Flags    = FILE_TRANSFER_FLAG_EOF;
    chunkMsg.ChunkSize = 0;
    memset(chunkMsg.Data, 0, sizeof(chunkMsg.Data));

    CFE_SB_TransmitMsg(&chunkMsg.TlmHeader.Msg, true);

    /* Close the file */
    fclose(fp);

    CFE_EVS_SendEvent(FILE_TRANSFER_SERVER_EOF_EID, CFE_EVS_EventType_INFORMATION,
                      "FileTransferServer: Completed sending file '%s'.", filename);
} /* End FILE_TRANSFER_SERVER_SendFile */
