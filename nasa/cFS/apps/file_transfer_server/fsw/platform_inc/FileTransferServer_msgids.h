/* FileTransferServer_msgids.h
 *
 * Example message IDs for the server. We reuse the client’s request-file MID,
 * so we show it here or refer to the “client” header. In a real system, you’d
 * have a single shared set of message ID definitions to avoid duplication.
 */

#ifndef _FILETRANSFERSERVER_MSGIDS_H_
#define _FILETRANSFERSERVER_MSGIDS_H_

/*
 * The server must subscribe to the client's request-file MID:
 *
 * #define FILE_TRANSFER_CLIENT_REQUEST_FILE_MID  0x18A0
 *
 * The chunk TLM we send back is also recognized by the client:
 *
 * #define FILE_TRANSFER_CLIENT_FILE_CHUNK_MID    0x08A1
 *
 * We could define server-specific MIDs here if the server needed
 * its own commands or telemetry. For example:
 * #define FILE_TRANSFER_SERVER_CMD_MID      0x18B0
 * #define FILE_TRANSFER_SERVER_HK_TLM_MID   0x08B1
 */

#endif /* _FILETRANSFERSERVER_MSGIDS_H_ */
