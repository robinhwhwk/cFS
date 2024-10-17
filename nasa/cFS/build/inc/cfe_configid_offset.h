/* This file is auto-generated from CMake build system.  Do not manually edit! */
#ifndef CFE_CONFIGID_OFFSET_H
#define CFE_CONFIGID_OFFSET_H

#define CFE_CONFIGID_OFFSETNAME(x) CFE_ConfigIdOffset_ ## x

#undef CFE_CONFIGID_DEFINE
#define CFE_CONFIGID_DEFINE(x) CFE_CONFIGID_OFFSETNAME(x),

/* Value offsets from base (needed for macros; do not use directly) */
typedef enum CFE_ConfigIdOffset_Enum
{
CFE_CONFIGID_DEFINE(MISSION_NAME)
CFE_CONFIGID_DEFINE(MISSION_SRCVER)
CFE_CONFIGID_DEFINE(MISSION_EDS_DB)
CFE_CONFIGID_DEFINE(MISSION_SBINTF_DB)
CFE_CONFIGID_DEFINE(CORE_VERSION_MAJOR)
CFE_CONFIGID_DEFINE(CORE_VERSION_MINOR)
CFE_CONFIGID_DEFINE(CORE_VERSION_REVISION)
CFE_CONFIGID_DEFINE(CORE_VERSION_MISSION_REV)
CFE_CONFIGID_DEFINE(CORE_VERSION_BUILDNUM)
CFE_CONFIGID_DEFINE(CORE_VERSION_BASELINE)
CFE_CONFIGID_DEFINE(CORE_VERSION_DESCRIPTION)
CFE_CONFIGID_DEFINE(CORE_BUILDINFO_DATE)
CFE_CONFIGID_DEFINE(CORE_BUILDINFO_USER)
CFE_CONFIGID_DEFINE(CORE_BUILDINFO_HOST)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CORE_API)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CORE_PRIVATE)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CI_LAB)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CLIENT)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CFE_ASSERT)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SBN)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SBN_UDP)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SBN_TCP)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SCH_LAB)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SBN_F_REMAP)
CFE_CONFIGID_DEFINE(MOD_SRCVER_ES)
CFE_CONFIGID_DEFINE(MOD_SRCVER_EVS)
CFE_CONFIGID_DEFINE(MOD_SRCVER_FS)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SB)
CFE_CONFIGID_DEFINE(MOD_SRCVER_TBL)
CFE_CONFIGID_DEFINE(MOD_SRCVER_TIME)
CFE_CONFIGID_DEFINE(MOD_SRCVER_OSAL)
CFE_CONFIGID_DEFINE(MOD_SRCVER_PSP)
CFE_CONFIGID_DEFINE(MOD_SRCVER_MSG)
CFE_CONFIGID_DEFINE(MOD_SRCVER_SBR)
CFE_CONFIGID_DEFINE(MOD_SRCVER_RESOURCEID)
CFE_CONFIGID_DEFINE(MOD_SRCVER_CONFIG)
CFE_CONFIGID_DEFINE(PLATFORM_TBL_VALID_SCID)
CFE_CONFIGID_DEFINE(PLATFORM_TBL_VALID_PRID)
CFE_CONFIGID_DEFINE(PLATFORM_ES_MEM_BLOCK_SIZE)
CFE_CONFIGID_DEFINE(PLATFORM_ES_CDS_MEM_BLOCK_SIZE)
CFE_CONFIGID_DEFINE(PLATFORM_SB_MEM_BLOCK_SIZE)

  CFE_ConfigIdOffset_MAX
} CFE_ConfigIdOffset_Enum_t;

#undef CFE_CONFIGID_DEFINE

#endif /* CFE_CONFIGID_OFFSET_H */
