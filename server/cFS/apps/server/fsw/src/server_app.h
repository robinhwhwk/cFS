#ifndef _SERVER_app_h_
#define _SERVER_app_h_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#include "server_app_msgids.h"
#include "server_app_msg.h"

#define SERVER_PIPE_DEPTH 32

typedef struct
{
    uint32 RunStatus;
    uint32 counter;

    CFE_SB_PipeId_t Pipe;
} SERVER_AppData_t;

void SERVER_AppMain(void);

#endif
