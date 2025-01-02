#ifndef _PC_HANDLER_app_h_
#define _PC_HANDLER_app_h_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#include "pc_handler_app_msgids.h"
#include "pc_handler_app_msg.h"

#define PC_HANDLER_PIPE_DEPTH 1000

typedef struct
{
    uint32 RunStatus;
    uint32 counter;

    CFE_SB_PipeId_t Pipe;
} PC_HANDLER_AppData_t;

void PC_HANDLER_AppMain(void);
void  FILE_TRANSFER_SERVER_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_SERVER_ProcessRequestFileCmd(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_SERVER_SendFile(const char *filename);

#endif
