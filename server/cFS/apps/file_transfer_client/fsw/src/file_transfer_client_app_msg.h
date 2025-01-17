/* FileTransferClient_msg.h
 *
 * Example message definitions for request and chunk.
 */

#ifndef _FILETRANSFERCLIENT_MSG_H_
#define _FILETRANSFERCLIENT_MSG_H_

#include "cfe.h"

/*
 * Command message to request a file from the server
 */
typedef struct
{
    CFE_MSG_CommandHeader_t MsgHeader; /* cFS standard command header */

    char  FileName[64]; /* Name/path of the file on the server side */

} FileTransfer_RequestFileCmd_t;

/*
 * Telemetry (chunk) message for sending file data from the server to the client
 */
#define FILE_TRANSFER_MAX_CHUNK_SIZE (1024) /* Example chunk size */

typedef struct
{
    CFE_MSG_TelemetryHeader_t TlmHeader;

    uint8   Flags;                    /* e.g., bit 0 = EOF?  */
    uint8   Reserved[3];             /* alignment/padding */
    uint32  ChunkSize;               /* how many bytes of 'Data' are valid */

    uint8   Data[FILE_TRANSFER_MAX_CHUNK_SIZE]; /* chunk payload */

} FileTransfer_FileChunkTlm_t;

/* Example bitmask for Flags field */
#define FILE_TRANSFER_FLAG_EOF (0x01)

#endif /* _FILETRANSFERCLIENT_MSG_H_ */
