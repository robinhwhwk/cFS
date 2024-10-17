#include "cfe_platform_cfg.h"
#include "client_app_events.h"
#include "client_app.h"

#define PACKET_TYPE_MASK  0x1000  // Mask for bit 12
#define PACKET_TYPE_SHIFT 12      // Bit position of the packet type (TLM=0, CMD=1)

CLIENT_AppData_t CLIENT_AppData;

void CLIENT_AppMain(void)
{
    int32     status;
    CLIENT_tlm_t tlm;

    CLIENT_AppData.counter = 0;
    /*
     ** Initialize message packet
    */
    CFE_MSG_Init((CFE_MSG_Message_t *)&tlm, CFE_SB_ValueToMsgId(CLIENT_TLM_MID), sizeof(tlm));

    /* 
     ** Registers the app with the EVS
    */
    CFE_EVS_Register(NULL, 0, CFE_EVS_NO_FILTER);

    CLIENT_AppData.RunStatus = CFE_ES_RunStatus_APP_RUN;
    /*
     ** Create a pipe
    */
    if (CFE_SB_CreatePipe(&CLIENT_AppData.Pipe, CLIENT_PIPE_DEPTH, "CLIENT_CMD_PIPE") != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_ERROR, "error creating pipe");
        return;
    }

    /*
        ** Subscribe to ground command packets
    */
    CFE_EVS_SendDbg(CLIENT_EID, "Subscribing to 0x%04x", CLIENT_CMD_MID);
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(CLIENT_CMD_MID), CLIENT_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_INFORMATION, "CLIENT subscribed to command pipe CLIENT_CMD_MID 0x%04X", CLIENT_CMD_MID);

    /*
        ** Subscribe to server telemetry
    */
    if ((status = CFE_SB_Subscribe(CFE_SB_ValueToMsgId(SERVER_TLM_MID), CLIENT_AppData.Pipe)) != CFE_SUCCESS)
    {
        CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_ERROR, "error subscribing to command");
        return;
    }
    CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_INFORMATION, "CLIENT subscribed to command pipe SERVER_TLM_MID 0x%04X", SERVER_TLM_MID);

    CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_INFORMATION, "CLIENT App Initialized.");

    tlm.counter = 0;
    CFE_SB_TimeStampMsg((CFE_MSG_Message_t *)&tlm);
    CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true); /* send out the 1, 1; as is tradition */
    CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true);

    while (CFE_ES_RunLoop(&CLIENT_AppData.RunStatus) == true)
    {
        /* Pend on receipt of command packet */
        CFE_SB_Buffer_t *MsgBuf;

        status = CFE_SB_ReceiveBuffer(&MsgBuf, CLIENT_AppData.Pipe, CFE_SB_PEND_FOREVER);

        if (status == CFE_SUCCESS)
        {
            tlm.counter          = CLIENT_AppData.counter;
            CLIENT_AppData.counter = CLIENT_AppData.counter + 1;

            // CFE_SB_TimeStampMsg((CFE_MSG_Message_t *)&tlm);
            // Only send back telemetry if the received message is a command type not a telemetry from server
            uint16_t stream_id = (MsgBuf->Msg.CCSDS.Pri.StreamId [0] << 8) | MsgBuf->Msg.CCSDS.Pri.StreamId[1];
            uint8_t packet_type = (stream_id & PACKET_TYPE_MASK) >> PACKET_TYPE_SHIFT;

            CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_INFORMATION, "Packet type: %d, Client counter: %d", packet_type, tlm.counter);

            if (packet_type == 1) {
                CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_INFORMATION, "Sending telemetry data onto SB");
                CFE_SB_TransmitMsg((CFE_MSG_Message_t *)&tlm, true);
            }
        }
        else
        {
            CFE_EVS_SendEvent(CLIENT_EID, CFE_EVS_EventType_ERROR, "CLIENT APP: SB Pipe Read Error, App Will Exit");

            CLIENT_AppData.RunStatus = CFE_ES_RunStatus_APP_ERROR;
        }
    }

    CFE_ES_ExitApp(CLIENT_AppData.RunStatus);
}
