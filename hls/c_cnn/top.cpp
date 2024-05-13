#include "utils.h"

// 做一个不用乒乓缓冲的conv，对比乒乓缓冲conv的latency ；写一个softmax函数;双端口ram

void top_net(data_t in[], int &result){

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=99999999 port=in offset=slave
#pragma HLS INTERFACE m_axi depth=99999999 port=result offset=slave


//	输出结果写到dram
	data_t c1_output[C1_OUTPUT_SIZE];
	data_t p1_output[P1_OUTPUT_SIZE];
	data_t c2_output[C2_OUTPUT_SIZE];
	data_t p2_output[P2_OUTPUT_SIZE];
	data_t c3_output[C3_OUTPUT_SIZE];
	data_t c4_output[C4_OUTPUT_SIZE];
	data_t c5_output[C5_OUTPUT_SIZE];


//#pragma HLS RESOURCE variable=c1_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=p1_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=c2_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=p2_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=c3_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=c4_output core=RAM_2P_BRAM
//#pragma HLS RESOURCE variable=c5_output core=RAM_2P_BRAM


	const data_t c1_weight[6*1*5*5]={
		#include "param/conv1.weight.h"
	};
	const data_t c2_weight[16*6*5*5]={
		#include "param/conv2.weight.h"
	};
	const data_t c3_weight[120*16*5*5]={
		#include "param/conv3.weight.h"
	};
	const data_t c4_weight[120*84]={
		#include "param/fc1.weight.h"
	};
	const data_t c5_weight[84*10]={
		#include "param/fc2.weight.h"
	};

//#pragma HLS RESOURCE variable=c1_weight core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c2_weight core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c3_weight core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c4_weight core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c5_weight core=ROM_2P_LUTRAM


	const data_t c1_bias[6]={
		#include "param/conv1.bias.h"
	};
	const data_t c2_bias[16]={
		#include "param/conv2.bias.h"
	};
	const data_t c3_bias[120]={
		#include "param/conv3.bias.h"
	};
	const data_t c4_bias[84]={
		#include "param/fc1.bias.h"
	};
	const data_t c5_bias[10]={
		#include "param/fc2.bias.h"
	};

//#pragma HLS RESOURCE variable=c1_bias core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c2_bias core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c3_bias core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c4_bias core=ROM_2P_LUTRAM
//#pragma HLS RESOURCE variable=c5_bias core=ROM_2P_LUTRAM


	conv(in, c1_weight, c1_bias, c1_output, CONV1_WIN, CONV1_WIN, CONV1_CHIN, CONV1_CHOUT, CONV1_SIZE, CONV1_SIZE, S, C1_P);
	max_pool_2D(c1_output, p1_output, MAXP1_CHIN, MAXP1_WIN, MAXP1_HIN);

	conv(p1_output, c2_weight, c2_bias, c2_output, CONV2_WIN, CONV2_WIN, CONV2_CHIN, CONV2_CHOUT, CONV2_SIZE, CONV2_SIZE, S, C2_P);
	max_pool_2D(c2_output, p2_output,MAXP2_CHIN, MAXP2_WIN, MAXP2_HIN);

	conv(p2_output, c3_weight, c3_bias, c3_output, CONV3_WIN, CONV3_WIN, CONV3_CHIN, CONV3_CHOUT, CONV3_SIZE, CONV3_SIZE, S, C3_P);

	conv(c3_output, c4_weight, c4_bias, c4_output, FC_CONV_SIZE, FC_CONV_SIZE, FC1_CHIN, FC1_CHOUT, FC_CONV_SIZE, FC_CONV_SIZE, S, FC_P);
	conv(c4_output, c5_weight, c5_bias, c5_output, FC_CONV_SIZE, FC_CONV_SIZE, FC2_CHIN, FC2_CHOUT, FC_CONV_SIZE, FC_CONV_SIZE, S, FC_P);
	result = find_index(c5_output, FC2_CHOUT);

}



