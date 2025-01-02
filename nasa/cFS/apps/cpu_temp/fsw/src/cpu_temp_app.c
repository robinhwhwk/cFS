#include "cfe_platform_cfg.h"
#include "cpu_temp_app_events.h"
#include "cpu_temp_app.h"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>

#define PACKET_TYPE_MASK  0x1000  // Mask for bit 12
#define PACKET_TYPE_SHIFT 12      // Bit position of the packet type (TLM=0, CMD=1)
#define DEVICE_PATH "/dev/virtual_temp"
#define BUFFER_SIZE 128
#define ITERATIONS 10
#define EXPERIMENT_MODE 1

/* 
     ** For measuring operations per second
    */
struct timespec start, end;
double latency;
int success_count;

/**
 * Returns the current time in microseconds.
 */
long getMicrotime(void){
	struct timeval currentTime;
	gettimeofday(&currentTime, NULL);
	return currentTime.tv_sec * (int)1e6 + currentTime.tv_usec;
}


CPU_TEMP_AppData_t CPU_TEMP_AppData;
CPU_TEMP_request_t request;

void CPU_TEMP_AppMain(void)
{
    int32     status;

    /*
     ** For calculating latency from last packet
    */
    // long lastPacketTime;
    // long latency;

    CPU_TEMP_AppData.counter = 0;
    /*
     ** Initialize request packet
    */
    CFE_MSG_Init((CFE_MSG_Message_t *)&request, CFE_SB_ValueToMsgId(CPU_TEMP_REQUEST_MID), sizeof(request));

    /* 
     ** Registers the app with the EVS
    */
    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    CPU_TEMP_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;
    /*
     ** Create a pipe
    */
    if (CFE_SB_CreatePipe(&CPU_TEMP_AppData.Pipe, CPU_TEMP_PIPE_DEPTH, "CPU_TEMP_CMD_PIPE") != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR, "error creating pipe");
        return;
    }

    /*
        ** Subscribe to ground command packets
    */
    CFE_EVS_SendDbg(CPU_TEMP_EID, "Subscribing to 0x%04x", CPU_TEMP_CMD_MID);
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(CPU_TEMP_CMD_MID), CPU_TEMP_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION, "CPU_TEMP subscribed to command pipe CPU_TEMP_CMD_MID 0x%04X", CPU_TEMP_CMD_MID);

    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(CPU_TEMP_READ_LOCAL_MID), CPU_TEMP_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION, "CPU_TEMP subscribed to command pipe CPU_TEMP_CMD_MID 0x%04X", CPU_TEMP_READ_LOCAL_MID);

    /*
        ** Subscribe to PC Handler telemetry
    */
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(PC_HANDLER_RESPONSE_MID), CPU_TEMP_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION, "CPU_TEMP subscribed to command pipe PC_HANDLER_RESPONSE_MID 0x%04X", PC_HANDLER_RESPONSE_MID);

    CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION, "CPU_TEMP App Initialized.");


    while (CFE_ES_RunLoop(&CPU_TEMP_AppData.RunStatus) == true)
    {
        /* Pend on receipt of command packet */
        CFE_SB_Buffer_t *MsgBuf;

        status = CFE_SB_ReceiveBuffer(&MsgBuf, CPU_TEMP_AppData.Pipe, CFE_SB_PEND_FOREVER);
        

        if (status == CFE_SUCCESS)
        {
            // printf("Received packet\n");
            FILE_TRANSFER_CLIENT_ProcessPacket(MsgBuf);
        }
        else
        {
            CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR, "CPU_TEMP APP: SB Pipe Read Error, App Will Exit");

            CPU_TEMP_AppData.RunStatus = CFE_ES_RunStatus_APP_ERROR;
        }
    }

    CFE_ES_ExitApp(CPU_TEMP_AppData.RunStatus);
}

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
        case PC_HANDLER_RESPONSE_MID:
            // printf("Received response message\n");
            FILE_TRANSFER_CLIENT_ProcessResponse(SBBufPtr);
            break;

        case CPU_TEMP_CMD_MID:
            // printf("Received remote file request command\n");
            FILE_TRANSFER_CLIENT_ProcessGroundCommand(SBBufPtr);
            break;

        case CPU_TEMP_READ_LOCAL_MID:
            // printf("Received local file request command\n");
            ProcessLocalFile();
            break;

        default:
            /* Unknown message ID, ignore or log an event */
            CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR,
                              "FileTransferClient received invalid MsgId (0x%X)", MsgId.Value);
            break;
    }
} /* End of FILE_TRANSFER_CLIENT_ProcessPacket() */


/*******************************************************************************
** Function: FILE_TRANSFER_CLIENT_ProcessResponse
*******************************************************************************/
void FILE_TRANSFER_CLIENT_ProcessResponse(CFE_SB_Buffer_t *SBBufPtr)
{
    const PC_HANDLER_response_t *ChunkPtr = (const PC_HANDLER_response_t *) SBBufPtr;

    /* If first chunk, open/clear local file. If subsequent chunk, append. */
    /* For simplicity, we open in append mode every time. Real code would do more checks. */

    printf("Data: %s\n", ChunkPtr->Data);
    success_count += 1;

    /* Check if this chunk has the EOF flag set */
    if (ChunkPtr->Flags & FILE_TRANSFER_FLAG_EOF)
    {
        // CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION,
        //                   "FileTransferClient: Received EOF for file. Transfer complete.");
        /* Maybe do some final handling: rename file, validate size, etc. */
        // Record end time
        clock_gettime(CLOCK_MONOTONIC, &end);

        // Calculate latency in microseconds
        latency = (end.tv_sec - start.tv_sec) * 1e6 + 
                (end.tv_nsec - start.tv_nsec) / 1e3;

        // Print the CPU temperature and latency
        printf("Latency: %.2f us, Operations per second: %.2f\n", latency, success_count / latency * 100000);
        
    }
} /* End of FILE_TRANSFER_CLIENT_ProcessChunkMsg() */

void FILE_TRANSFER_CLIENT_ProcessGroundCommand(CFE_SB_Buffer_t *SBBufPtr) {
    // Record start time
    clock_gettime(CLOCK_MONOTONIC, &start);
    success_count = 0;

    for (int i = 0; i < ITERATIONS; ++i) {
        if (FILE_TRANSFER_CLIENT_RequestFile("/dev/virtual_temp") != CFE_SUCCESS) {
            CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_ERROR,
                          "FileTransferClient: Error requesting for file!");
        }
    }

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

    /* Copy filename into the command struct */
    strncpy(request.device_path, filename, sizeof(request.device_path) - 1);
    request.device_path[sizeof(request.device_path) - 1] = '\0';  /* ensure null-termination */
    // printf("device path: %s\n", request.device_path);

    /* Optionally set a transaction ID, user info, etc. */

    /* Send message to software bus – SBN will forward it to the server node */
    return CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&request, true);
} /* End of FILE_TRANSFER_CLIENT_RequestFile() */

void ProcessLocalFile(void) {
    /*
     ** For reading file data
    */
    int fd;
    char buffer[BUFFER_SIZE];
    ssize_t bytes_read;
    int success_count;
    /* Open the virtual temperature device */
    fd = open(DEVICE_PATH, O_RDONLY);
    if (fd < 0) {
        perror("Error opening /dev/virtual_temp");
    }

    // Record start time
    clock_gettime(CLOCK_MONOTONIC, &start);
    success_count = 0;

    for (int i = 0; i < ITERATIONS; ++i) {
        bytes_read = read(fd, buffer, sizeof(buffer) - 1);
        if (bytes_read < 0) {
            perror("Error reading from /dev/virtual_temp");
            continue;
        }
        buffer[bytes_read] = '\0';
        // CFE_EVS_SendEvent(CPU_TEMP_EID, CFE_EVS_EventType_INFORMATION, "Buffer Contents: %s\n", buffer);
        success_count++;
    }
    printf("Total Successful Reads: %d/%d\n", success_count, ITERATIONS);
    // Record end time
    clock_gettime(CLOCK_MONOTONIC, &end);

    // Calculate latency in microseconds
    latency = (end.tv_sec - start.tv_sec) * 1e6 + 
            (end.tv_nsec - start.tv_nsec) / 1e3;

    // Null-terminate the received data
    buffer[bytes_read] = '\0';

    // Print the CPU temperature and latency
    printf("Latency: %.2f us, Operations per second: %.2f\n", latency, success_count / latency * 100000);
    // Close the device file
    close(fd);
} 