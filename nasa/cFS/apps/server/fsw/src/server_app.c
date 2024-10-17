#include "cfe_platform_cfg.h"
#include "server_app_events.h"
#include "server_app.h"

SERVER_AppData_t SERVER_AppData;

void SERVER_AppMain(void)
{
    int32     status;
    SERVER_tlm_t tlm;

    CFE_MSG_Init((CFE_MSG_Message_t *)&tlm, CFE_SB_ValueToMsgId(SERVER_TLM_MID), sizeof(tlm));

    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    SERVER_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;

    if (CFE_SB_CreatePipe(&SERVER_AppData.Pipe, SERVER_PIPE_DEPTH, "SERVER_CMD_PIPE") != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_ERROR, "error creating pipe");
        return;
    }

    CFE_EVS_SendDbg(SERVER_EID, "Subscribing to 0x%04x", SERVER_CMD_MID);
    /*
        ** Subscribe to ground command packets
    */
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(SERVER_CMD_MID), SERVER_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_INFORMATION, "SERVER subscribed to command pipe SERVER_CMD_MID 0x%04X", SERVER_CMD_MID);
     /*
        ** Subscribe to client telemetry packets
    */
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(CLIENT_TLM_MID), SERVER_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_INFORMATION, "SERVER subscribed to telemetry pipe CLIENT_TLM_MID 0x%04X", CLIENT_TLM_MID);

    CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_INFORMATION, "SERVER App Initialized.");

    CFE_SB_TimeStampMsg((CFE_MSG_Message_t *)&tlm);
    CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true); /* send out the 1, 1; as is tradition */
    CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true);

    while (CFE_ES_RunLoop(&SERVER_AppData.RunStatus) == true)
    {
        /* Pend on receipt of command packet */
        CFE_SB_Buffer_t *MsgBuf;

        status = CFE_SB_ReceiveBuffer(&MsgBuf, SERVER_AppData.Pipe, CFE_SB_PEND_FOREVER);

        if (status == CFE_SUCCESS)
        {
            // Set the tlm.counter to the counter we receive
            // tlm.counter = ((SERVER_tlm_t*)&(MsgBuf->Msg))->counter;
            CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_INFORMATION, "Server received message");

            // CFE_SB_TimeStampMsg((CFE_MSG_Message_t *)&tlm);
            CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true);
        }
        else
        {
            CFE_EVS_SendEvent(SERVER_EID, CFE_EVS_EventType_ERROR, "SERVER APP: SB Pipe Read Error, App Will Exit");

            SERVER_AppData.RunStatus = CFE_ES_RunStatus_APP_ERROR;
        }
    }

    CFE_ES_ExitApp(SERVER_AppData.RunStatus);
}
