#ifndef _PC_HANDLER_app_msg_h_
#define _PC_HANDLER_app_msg_h_

#define FILE_TRANSFER_MAX_CHUNK_SIZE (8192 * 2) /* Example chunk size */


typedef struct
{
    CFE_MSG_CommandHeader_t MsgHeader; /* cFS standard command header */
    uint8 opcode; /* READ = 0, WRITE = 1*/
    char device_path[64]; /* filename to read/write to */
    uint32 sender_mid; /* the message id that this app is subscribed to for responses */
    uint32 packetSize;
} CPU_TEMP_request_t;

typedef struct
{
    uint8  TlmHdr[sizeof(CFE_MSG_TelemetryHeader_t)];
    uint8   Flags;
    uint8   Data[FILE_TRANSFER_MAX_CHUNK_SIZE]; /* chunk payload */
    uint32  ChunkSize;               /* how many bytes of 'Data' are valid */
} PC_HANDLER_response_t;

#define FILE_TRANSFER_FLAG_EOF (0x01)

#endif
