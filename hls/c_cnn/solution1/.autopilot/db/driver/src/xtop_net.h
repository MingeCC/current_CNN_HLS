// ==============================================================
// File generated on Mon May 13 18:06:56 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTOP_NET_H
#define XTOP_NET_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtop_net_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XTop_net_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XTop_net;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTop_net_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTop_net_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTop_net_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTop_net_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XTop_net_Initialize(XTop_net *InstancePtr, u16 DeviceId);
XTop_net_Config* XTop_net_LookupConfig(u16 DeviceId);
int XTop_net_CfgInitialize(XTop_net *InstancePtr, XTop_net_Config *ConfigPtr);
#else
int XTop_net_Initialize(XTop_net *InstancePtr, const char* InstanceName);
int XTop_net_Release(XTop_net *InstancePtr);
#endif

void XTop_net_Start(XTop_net *InstancePtr);
u32 XTop_net_IsDone(XTop_net *InstancePtr);
u32 XTop_net_IsIdle(XTop_net *InstancePtr);
u32 XTop_net_IsReady(XTop_net *InstancePtr);
void XTop_net_EnableAutoRestart(XTop_net *InstancePtr);
void XTop_net_DisableAutoRestart(XTop_net *InstancePtr);

void XTop_net_Set_in_r(XTop_net *InstancePtr, u32 Data);
u32 XTop_net_Get_in_r(XTop_net *InstancePtr);
void XTop_net_Set_result(XTop_net *InstancePtr, u32 Data);
u32 XTop_net_Get_result(XTop_net *InstancePtr);

void XTop_net_InterruptGlobalEnable(XTop_net *InstancePtr);
void XTop_net_InterruptGlobalDisable(XTop_net *InstancePtr);
void XTop_net_InterruptEnable(XTop_net *InstancePtr, u32 Mask);
void XTop_net_InterruptDisable(XTop_net *InstancePtr, u32 Mask);
void XTop_net_InterruptClear(XTop_net *InstancePtr, u32 Mask);
u32 XTop_net_InterruptGetEnabled(XTop_net *InstancePtr);
u32 XTop_net_InterruptGetStatus(XTop_net *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
