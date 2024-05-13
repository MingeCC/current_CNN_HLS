// ==============================================================
// File generated on Mon May 13 18:06:56 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtop_net.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTop_net_CfgInitialize(XTop_net *InstancePtr, XTop_net_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTop_net_Start(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL) & 0x80;
    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTop_net_IsDone(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTop_net_IsIdle(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTop_net_IsReady(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTop_net_EnableAutoRestart(XTop_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XTop_net_DisableAutoRestart(XTop_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_AP_CTRL, 0);
}

void XTop_net_Set_in_r(XTop_net *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IN_R_DATA, Data);
}

u32 XTop_net_Get_in_r(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IN_R_DATA);
    return Data;
}

void XTop_net_Set_result(XTop_net *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_RESULT_DATA, Data);
}

u32 XTop_net_Get_result(XTop_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_RESULT_DATA);
    return Data;
}

void XTop_net_InterruptGlobalEnable(XTop_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_GIE, 1);
}

void XTop_net_InterruptGlobalDisable(XTop_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_GIE, 0);
}

void XTop_net_InterruptEnable(XTop_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IER);
    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IER, Register | Mask);
}

void XTop_net_InterruptDisable(XTop_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IER);
    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IER, Register & (~Mask));
}

void XTop_net_InterruptClear(XTop_net *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_net_WriteReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_ISR, Mask);
}

u32 XTop_net_InterruptGetEnabled(XTop_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_IER);
}

u32 XTop_net_InterruptGetStatus(XTop_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTop_net_ReadReg(InstancePtr->Axilites_BaseAddress, XTOP_NET_AXILITES_ADDR_ISR);
}

