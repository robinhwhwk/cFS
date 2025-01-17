#include <common_types.h>
#include <cfe_platform_cfg.h>

#include "cfe_config_core_internal.h"
#include "cfe_config_ids.h"
#include "cfe_config_set.h"

#define ARRAY_NAME(a) CFE_CONFIG_ ## a ## _CONTENT
#define ARRAY_LEN(a) (sizeof(ARRAY_NAME(a)) / sizeof(ARRAY_NAME(a)[0]))

#define CFE_PLATFORMCFG_ENTRY(x) {\
    static const CFE_Config_ArrayValue_t ARR_ ## x = { ARRAY_LEN(x), ARRAY_NAME(x) };\
    CFE_Config_SetArrayValue(CFE_CONFIGID_FROM_OFFSET(x), &ARR_ ## x);\
}

/* THIS IS GENERATED CONTENT, DO NOT EDIT */

static const size_t CFE_CONFIG_PLATFORM_ES_MEM_BLOCK_SIZE_CONTENT[17] = {
  CFE_PLATFORM_ES_MAX_BLOCK_SIZE,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_16,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_15,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_14,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_13,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_12,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_11,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_10,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_09,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_08,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_07,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_06,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_05,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_04,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_03,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_02,
  CFE_PLATFORM_ES_MEM_BLOCK_SIZE_01 
};

static const size_t CFE_CONFIG_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_CONTENT[17] = {
  CFE_PLATFORM_ES_CDS_MAX_BLOCK_SIZE,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_16,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_15,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_14,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_13,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_12,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_11,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_10,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_09,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_08,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_07,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_06,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_05,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_04,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_03,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_02,
  CFE_PLATFORM_ES_CDS_MEM_BLOCK_SIZE_01 
};

static const size_t CFE_CONFIG_PLATFORM_SB_MEM_BLOCK_SIZE_CONTENT[17] = {
  CFE_PLATFORM_SB_MAX_BLOCK_SIZE,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_16,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_15,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_14,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_13,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_12,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_11,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_10,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_09,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_08,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_07,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_06,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_05,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_04,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_03,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_02,
  CFE_PLATFORM_SB_MEM_BLOCK_SIZE_01 
};



void CFE_Config_SetupPlatformConfigInfo(void)
{
/* THIS IS GENERATED CONTENT, DO NOT EDIT */

CFE_PLATFORMCFG_ENTRY(PLATFORM_ES_MEM_BLOCK_SIZE)
CFE_PLATFORMCFG_ENTRY(PLATFORM_ES_CDS_MEM_BLOCK_SIZE)
CFE_PLATFORMCFG_ENTRY(PLATFORM_SB_MEM_BLOCK_SIZE)

}
