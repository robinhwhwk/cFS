/******************************************************************************
** File: sbn_platform_cfg.h
**
**      Copyright (c) 2004-2016, United States government as represented by the
**      administrator of the National Aeronautics Space Administration.
**      All rights reserved. This software(cFE) was created at NASA's Goddard
**      Space Flight Center pursuant to government contracts.
**
**      This software may be used only pursuant to a United States government
**      sponsored project and the United States government may not be charged
**      for use thereof.
**
** Purpose:
**      This header file contains prototypes for private functions and type
**      definitions for the Software Bus Network Application.
**
** Authors:   J. Wilmot/GSFC Code582
**            R. McGraw/SSI
**            C. Knight/ARC Code TI
******************************************************************************/
#include "cfe.h"

#ifndef _sbn_platform_cfg_h
#define _sbn_platform_cfg_h

/** @brief Maximum number of networks allowed. */
#define SBN_MAX_NETS 16

/** @brief Maximum number of subscriptions allowed per peer allowed. */
#define SBN_MAX_SUBS_PER_PEER 256

/** @brief Maximum number of incoming and outgoing message filters. */
#define SBN_MAX_FILTERS 16

/** @brief Maximum number of outgoing and incoming message filters for each peer. */
#define SBN_MAX_FILTERS_PER_PEER 8

/**
 * @brief At most process this many SB messages per peer per wakeup.
 * (To prevent starvation if a peer is babbling.)
 */
#define SBN_MAX_MSG_PER_WAKEUP 32

/**
 * @brief In the polling configuration, how long (in milliseconds) to wait for
 * a SCH wakeup message before SBN times out and processes. (Note, should
 * really be significantly longer than the expected time between SCH wakeup
 * messages.)
 */
#define SBN_MAIN_LOOP_DELAY 200

/**
 * @brief For each peer, a pipe is created to receive messages that the peer has
 * subscribed to. The pipe should be deep enough to handle all messages that
 * will queue between wakeups.
 */
#define SBN_PEER_PIPE_DEPTH 1000

/**
 * @brief The maximum number of messages that will be queued for a particular
 * message ID for a particular peer.
 */
#define SBN_DEFAULT_MSG_LIM 1000

/**
 * @brief The maximum number of subscription messages that will be queued
 * between wakeups.
 */
#define SBN_SUB_PIPE_DEPTH 32

/**
 * @brief The maximum number of subscription messages for a single message ID
 * that will be queued between wakeups. (These are received when updates occur
 * after SBN starts up.)
 */
#define SBN_MAX_ONESUB_PKTS_ON_PIPE 16

/**
 * @brief The maximum number of subscription messages for all message IDs that
 * will be queued between wakeups. (These are received on SBN startup.)
 */
#define SBN_MAX_ALLSUBS_PKTS_ON_PIPE 64

/**
 * @brief The maximum length of a module's name
 * file.
 */
#define SBN_MAX_MOD_NAME_LEN 16

/** @brief Maximum number of protocol modules. */
#define SBN_MAX_MOD_CNT 8

/** @brief Maximum number of peers. */
#define SBN_MAX_PEER_CNT 16

/**
 * @brief SBN modules can provide status messages for housekeeping requests,
 * this is the maximum length those messages can be.
 */
#define SBN_MOD_STATUS_MSG_SZ 128

/**
 * @brief The number of characters for a "peer address", this can be
 * an IP address, a device inode path, a DTN EIN, etc. The meaning
 * of the address field is network module-dependent.
 */
#define SBN_ADDR_SZ 48

/**
 * @brief If defined, remapping is enabled at boot time.
 */
#define SBN_REMAP_ENABLED

#define SBN_REMAP_TBL_FILENAME "/cf/sbn_remap_tbl.tbl"

#define SBN_CONF_TBL_FILENAME "/cf/sbn_conf_tbl.tbl"

#endif /* _sbn_platform_cfg_h_ */
