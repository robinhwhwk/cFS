/* FileTransferServer_app.h */
#ifndef _FILETRANSFERSERVER_APP_H_
#define _FILETRANSFERSERVER_APP_H_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

/*
 * Structure to hold server app global data
 */
typedef struct
{
    CFE_ES_RunStatus_t RunStatus;
    CFE_SB_PipeId_t    CmdPipe;

} FileTransferServer_AppData_t;

extern FileTransferServer_AppData_t g_FileTransferServer_AppData;

/* Function prototypes */
void  FILE_TRANSFER_SERVER_AppMain(void);
int32 FILE_TRANSFER_SERVER_AppInit(void);
void  FILE_TRANSFER_SERVER_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_SERVER_ProcessRequestFileCmd(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_SERVER_SendFile(const char *filename);

#endif /* _FILETRANSFERSERVER_APP_H_ */
