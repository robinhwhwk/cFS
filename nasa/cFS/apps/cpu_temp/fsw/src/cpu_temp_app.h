#ifndef _CPU_TEMP_app_h_
#define _CPU_TEMP_app_h_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#include "cpu_temp_app_msgids.h"
#include "cpu_temp_app_msg.h"
#include "cpu_temp_app_fcncodes.h"

#define CPU_TEMP_PIPE_DEPTH 1000

typedef struct
{
    uint32 RunStatus;
    uint32 counter;
    uint32 chunkSize;

    CFE_SB_PipeId_t Pipe;
} CPU_TEMP_AppData_t;

void CPU_TEMP_AppMain(void);
void sendRequest(CPU_TEMP_request_t, char*, uint8_t, void*, size_t);
void  FILE_TRANSFER_CLIENT_ProcessPacket(CFE_SB_Buffer_t *SBBufPtr);
void  FILE_TRANSFER_CLIENT_ProcessResponse(CFE_SB_Buffer_t *SBBufPtr);
void FILE_TRANSFER_CLIENT_ProcessGroundCommand(CFE_SB_Buffer_t *SBBufPtr, int iterations);
int32 FILE_TRANSFER_CLIENT_RequestFile(const char *filename, int last);
void ProcessLocalFile(int iterations);

#endif
