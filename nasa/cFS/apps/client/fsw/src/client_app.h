#ifndef _CLIENT_app_h_
#define _CLIENT_app_h_

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#include "client_app_msgids.h"
#include "client_app_msg.h"

#define CLIENT_PIPE_DEPTH 32

typedef struct
{
    uint32 RunStatus;
    uint32 counter;

    CFE_SB_PipeId_t Pipe;
} CLIENT_AppData_t;

void CLIENT_AppMain(void);

#endif
