#include "sbn_remap_tbl.h"
#include "cfe_tbl_filedef.h"
#include "cfe_sb.h" 

SBN_RemapTbl_t SBN_RemapTbl = {
    .RemapDefaultFlag = SBN_REMAP_DEFAULT_SEND
};

CFE_TBL_FILEDEF(SBN_RemapTbl, SBN.SBN_RemapTbl, SBN Remap Table, sbn_remap_tbl.tbl)
