#include "sbn_remap_tbl.h"
#include "cfe_tbl_filedef.h"
#include "cfe_sb.h" 

SBN_RemapTbl_t SBN_RemapTbl = {
    .RemapDefaultFlag = SBN_REMAP_DEFAULT_SEND,
    // .Entries = {
    //     {
    //         .ProcessorID = 1,
    //         .SpacecraftID = 0x43,
    //         .FromMID = {0x1d84},
    //         .ToMID = {0x1d84}
    //     }
    // }
};

// typedef struct
// {
//     /** @brief The ProcessorID of the peer to remap this MID for. */
//     CFE_ProcessorID_t ProcessorID;

//     /** @brief The SpacecraftID of the peer to remap this MID for. */
//     CFE_SpacecraftID_t SpacecraftID;

//     /** @brief The local MID I'll receive from the pipe. */
//     CFE_SB_MsgId_t FromMID;

//     /** @brief The MID to send to the peer. If 0, filter the from MID. */
//     CFE_SB_MsgId_t ToMID;
// } SBN_RemapTblEntry_t;

CFE_TBL_FILEDEF(SBN_RemapTbl, SBN.SBN_RemapTbl, SBN Remap Table, sbn_remap_tbl.tbl)
