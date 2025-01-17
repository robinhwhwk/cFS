/* FileTransferClient_app.h */
#ifndef _FILETRANSFERCLIENT_APP_H_
#define _FILETRANSFERCLIENT_APP_H_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#include "file_transfer_client_app_msgids.h"
#include "file_transfer_client_app_msg.h"

#define FILE_TRANSFER_CLIENT_PIPE_DEPTH 32

/* Defines a structure to hold global app data */
typedef struct
{
    uint32  RunStatus;
    CFE_SB_PipeId_t     CmdPipe;

} FileTransferClient_AppData_t;

/* Function Prototypes */
void  FILE_TRANSFER_CLIENT_AppMain(void);
int32 FILE_TRANSFER_CLIENT_AppInit(void);
void  FILE_TRANSFER_CLIENT_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_CLIENT_ProcessChunkMsg(CFE_SB_Buffer_t *SBBufPtr);
void FILE_TRANSFER_CLIENT_ProcessGroundCommand(CFE_SB_Buffer_t *SBBufPtr);
int32 FILE_TRANSFER_CLIENT_RequestFile(const char *filename);

#endif /* _FILETRANSFERCLIENT_APP_H_ */
