/* FileTransferClient_msgids.h
 *
 * Example message ID definitions. Real IDs must be assigned as part of your
 * project’s overall MID map.
 */

#ifndef _FILETRANSFERCLIENT_MSGIDS_H_
#define _FILETRANSFERCLIENT_MSGIDS_H_

/* Command to request a file (Client -> Server) */
#define FILE_TRANSFER_CLIENT_REQUEST_FILE_MID  0x18A0

/* File chunk TLM (Server -> Client) */
#define FILE_TRANSFER_CLIENT_FILE_CHUNK_MID    0x08A1

/*
 * You may also have a local command MID for housekeeping or other commands:
 * #define FILE_TRANSFER_CLIENT_CMD_MID  0x18A2
 * #define FILE_TRANSFER_CLIENT_HK_TLM_MID  0x08A3
 */

#endif /* _FILETRANSFERCLIENT_MSGIDS_H_ */
