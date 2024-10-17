#ifndef _CLIENT_app_msg_h_
#define _CLIENT_app_msg_h_

typedef struct
{
    uint8  TlmHdr[sizeof(CFE_MSG_TelemetryHeader_t)];
    uint32 counter;
} CLIENT_tlm_t;

#endif
