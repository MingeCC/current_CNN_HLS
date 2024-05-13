// ==============================================================
// File generated on Mon May 13 18:06:56 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtop_net.h"

extern XTop_net_Config XTop_net_ConfigTable[];

XTop_net_Config *XTop_net_LookupConfig(u16 DeviceId) {
	XTop_net_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTOP_NET_NUM_INSTANCES; Index++) {
		if (XTop_net_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTop_net_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTop_net_Initialize(XTop_net *InstancePtr, u16 DeviceId) {
	XTop_net_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTop_net_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTop_net_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

