/*******************************************************************************
** File:  FileTransferClient_app.c
**
** Purpose:
**   Demonstrate a simple cFS app that requests a file from a remote “server”
**   and receives the file data in chunks over the Software Bus (potentially
**   forwarded by SBN).
**
*******************************************************************************/

#include "cfe_platform_cfg.h"
#include "file_transfer_client_app.h"
#include "file_transfer_client_app_events.h"
#include <string.h>
#include <stdio.h>
#include <time.h>

/*
 * App globals
 */
FileTransferClient_AppData_t g_FileTransferClient_AppData;
/* 
 ** For measuring operations per second
*/
struct timespec start, end;
double latency;

/*******************************************************************************
** Function:  FILE_TRANSFER_CLIENT_AppMain
**
** Purpose:
**   The entry point and main process loop for this example client app.
**
*******************************************************************************/
void FILE_TRANSFER_CLIENT_AppMain(void)
{
    printf("jere/n");
    int32 status;

    /* Register the app with Executive Services */
    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);
    printf("Initializing FileTransferClient\n");
    CFE_EVS_SendInfo(FILE_TRANSFER_CLIENT_STARTUP_INF_EID, "Initializing");

    /* Perform application-specific initialization */
    if ((status = FILE_TRANSFER_CLIENT_AppInit()) != CFE_SUCCESS)
    {
        /* If init fails, start a "run forever" loop that does nothing */
        CFE_ES_WriteToSysLog("FileTransferClient App: AppInit Failed, RC = 0x%08X\n", status);
        /* Let cFS kill us; or do your own error handling. */
        CFE_ES_ExitApp(CFE_ES_RunStatus_CORE_APP_INIT_ERROR);
    }
    printf("FileTransferApp Initialized\n");

    /* Main loop: process SB messages and do other work as needed */
    while (CFE_ES_RunLoop(&g_FileTransferClient_AppData.RunStatus) == true)
    {
        CFE_SB_Buffer_t *SBBufPtr = NULL;

        /* Pend on a message from the software bus (timeout = 500ms, as example) */
        status = CFE_SB_ReceiveBuffer(&SBBufPtr, g_FileTransferClient_AppData.CmdPipe, CFE_SB_PEND_FOREVER);

        if (status == CFE_SUCCESS && SBBufPtr != NULL)
        {
            printf("Received packet\n");
            FILE_TRANSFER_CLIENT_ProcessPacket(SBBufPtr);
        }

        /*
         * Optionally do other background processing here.
         */
    }

    /* If we exit the while loop, we are shutting down. */
    CFE_ES_ExitApp(g_FileTransferClient_AppData.RunStatus);
} /* End of FILE_TRANSFER_CLIENT_AppMain() */


/*******************************************************************************
** Function: FILE_TRANSFER_CLIENT_AppInit
**
** Purpose:
**   Initialize application data, subscribe to messages, etc.
**
*******************************************************************************/
int32 FILE_TRANSFER_CLIENT_AppInit(void)
{
    /* Initialize app data */
    // memset(&g_FileTransferClient_AppData, 0, sizeof(g_FileTransferClient_AppData));

    g_FileTransferClient_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;

    /* Create a command pipe to receive requests from the ground or other apps */
    int32 status = CFE_SB_CreatePipe(&g_FileTransferClient_AppData.CmdPipe, FILE_TRANSFER_CLIENT_PIPE_DEPTH, "FILE_TRANSFER_CLIENT_CMD_PIPE");
    if (status != CFE_SUCCESS)
    {
        printf("FileTransferClient App: CreatePipe failed\n");
        CFE_ES_WriteToSysLog("FileTransferClient App: CreatePipe failed, RC=0x%08X\n", status);
        return status;
    }

    /* Subscribe to the “File Request" command messages from ground */
    status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(FILE_TRANSFER_CLIENT_REQUEST_FILE_MID), g_FileTransferClient_AppData.CmdPipe);
    if (status != CFE_SUCCESS)
    {
        printf("FileTransferClient App: Subscribe to FILE_CHUNK_MID failed\n");
        CFE_ES_WriteToSysLog("FileTransferClient App: Subscribe to FILE_CHUNK_MID failed, RC=0x%08X\n", status);
        return status;
    }


    /* Subscribe to the “File Chunk” telemetry messages from the server */
    status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(FILE_TRANSFER_CLIENT_FILE_CHUNK_MID), g_FileTransferClient_AppData.CmdPipe);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("FileTransferClient App: Subscribe to FILE_CHUNK_MID failed, RC=0x%08X\n", status);
        return status;
    }

    /* (Optional) Subscribe to command messages if needed (e.g. for local housekeeping commands) */
    /* Example: CFE_SB_Subscribe(FILE_TRANSFER_CLIENT_CMD_MID, g_FileTransferClient_AppData.CmdPipe); */

    /* Register events (to send event messages) */
    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    CFE_ES_WriteToSysLog("FileTransferClient App Initialized.\n");
    return CFE_SUCCESS;
} /* End of FILE_TRANSFER_CLIENT_AppInit() */


/*******************************************************************************
** Function: FILE_TRANSFER_CLIENT_ProcessPacket
**
** Purpose:
**   Dispatch incoming software bus messages to the appropriate handler
**
*******************************************************************************/
void FILE_TRANSFER_CLIENT_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr)
{   
    CFE_SB_MsgId_t MsgId = CFE_SB_INVALID_MSG_ID;
    CFE_MSG_GetMsgId(&SBBufPtr->Msg, &MsgId);

    switch (MsgId.Value)
    {
        case FILE_TRANSFER_CLIENT_FILE_CHUNK_MID:
            printf("Received chunk message\n");
            FILE_TRANSFER_CLIENT_ProcessChunkMsg(SBBufPtr);
            break;

        
        case FILE_TRANSFER_CLIENT_REQUEST_FILE_MID:
            printf("Received file request command\n");
            FILE_TRANSFER_CLIENT_ProcessGroundCommand(SBBufPtr);
            break;

        default:
            /* Unknown message ID, ignore or log an event */
            CFE_EVS_SendEvent(FILE_TRANSFER_CLIENT_INVALID_MSGID_ERR_EID, CFE_EVS_EventType_ERROR,
                              "FileTransferClient received invalid MsgId (0x%X)", MsgId.Value);
            break;
    }
} /* End of FILE_TRANSFER_CLIENT_ProcessPacket() */


/*******************************************************************************
** Function: FILE_TRANSFER_CLIENT_ProcessChunkMsg
**
** Purpose:
**   Handle an incoming “file chunk” message from the server. Write data
**   into a local buffer/file.
**
**   In a real app, you'd have a structure to track which file is in progress,
**   how many bytes received, etc. For this example, we simply create/append
**   to "received_file.bin" in the local RAM disk or persistent volume.
**
*******************************************************************************/
void FILE_TRANSFER_CLIENT_ProcessChunkMsg(CFE_SB_Buffer_t *SBBufPtr)
{
    const FileTransfer_FileChunkTlm_t *ChunkPtr = (const FileTransfer_FileChunkTlm_t *) SBBufPtr;

    /* If first chunk, open/clear local file. If subsequent chunk, append. */
    /* For simplicity, we open in append mode every time. Real code would do more checks. */

    FILE *fp = fopen("/ram/received_file.bin", "ab");  /* or some other path */
    if (fp == NULL)
    {
        CFE_EVS_SendEvent(FILE_TRANSFER_CLIENT_FILE_ERR_EID, CFE_EVS_EventType_ERROR,
                          "FileTransferClient: Cannot open local file for writing!");
        return;
    }

    fwrite(ChunkPtr->Data, 1, ChunkPtr->ChunkSize, fp);
    fclose(fp);

    /* Check if this chunk has the EOF flag set */
    if (ChunkPtr->Flags & FILE_TRANSFER_FLAG_EOF)
    {
        CFE_EVS_SendEvent(FILE_TRANSFER_CLIENT_EOF_EID, CFE_EVS_EventType_INFORMATION,
                          "FileTransferClient: Received EOF for file. Transfer complete.");
        /* Maybe do some final handling: rename file, validate size, etc. */
        // Record end time
        clock_gettime(CLOCK_MONOTONIC, &end);

        // Calculate latency in microseconds
        latency = (end.tv_sec - start.tv_sec) * 1e6 + 
                (end.tv_nsec - start.tv_nsec) / 1e3;

        // Print the CPU temperature and latency
        printf("Latency: %.2f us\n", latency);
    }
} /* End of FILE_TRANSFER_CLIENT_ProcessChunkMsg() */

void FILE_TRANSFER_CLIENT_ProcessGroundCommand(CFE_SB_Buffer_t *SBBufPtr) {
    int iterations = 1000;

    // Record start time
    clock_gettime(CLOCK_MONOTONIC, &start);
    int success_count = 0;

    for (int i = 0; i < iterations; ++i) {
        if (FILE_TRANSFER_CLIENT_RequestFile("/dev/virtual_temp") < 0) {
            CFE_EVS_SendEvent(FILE_TRANSFER_CLIENT_FILE_ERR_EID, CFE_EVS_EventType_ERROR,
                          "FileTransferClient: Error requesting for file!");
        }
        success_count++;
    }
    printf("Total Successful Reads: %d/%d\n", success_count, iterations);

    return;
}


/*******************************************************************************
** Function: FILE_TRANSFER_CLIENT_RequestFile
**
** Purpose:
**   Send a command message to the server requesting a file by name.
**   The server should see this command, open the file on its filesystem,
**   and send back chunk messages to us.
**
**   Typically you’d call this from a ground command handler or from somewhere
**   in your app logic.
**
*******************************************************************************/
int32 FILE_TRANSFER_CLIENT_RequestFile(const char *filename)
{
    FileTransfer_RequestFileCmd_t CmdMsg;
    memset(&CmdMsg, 0, sizeof(CmdMsg));

    CFE_MSG_Init(&CmdMsg.MsgHeader.Msg, CFE_SB_ValueToMsgId(FILE_TRANSFER_CLIENT_REQUEST_FILE_MID), sizeof(CmdMsg));

    /* Copy filename into the command struct */
    strncpy(CmdMsg.FileName, filename, sizeof(CmdMsg.FileName) - 1);
    CmdMsg.FileName[sizeof(CmdMsg.FileName) - 1] = '\0';  /* ensure null-termination */

    /* Optionally set a transaction ID, user info, etc. */

    /* Send message to software bus – SBN will forward it to the server node */
    return CFE_SB_TransmitMsg(&CmdMsg.MsgHeader.Msg, true);
} /* End of FILE_TRANSFER_CLIENT_RequestFile() */
