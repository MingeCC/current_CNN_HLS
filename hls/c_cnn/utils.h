#ifndef _UTILS_H_
#define _UTILS_H_

#include <iostream>
#include <hls_stream.h>
#include <ap_int.h>

typedef float data_t;

//#define CSIM_ON   	1
//两级的数据缓存，axi_stream接口，乒乓读取数据，边界检查

#define w_max_buffer_size	5*5*20	// 定义最大的kx * ky * chin

const int S		= 1		;

const int CONV1_CHIN	= 1		;
const int CONV1_CHOUT	= 6		;
const int CONV2_CHIN	= 6		;
const int CONV2_CHOUT	= 16	;
const int CONV3_CHIN	= 16	;
const int CONV3_CHOUT	= 120	;

const int FC1_CHIN		= 120	;
const int FC1_CHOUT		= 84	;
const int FC2_CHIN		= 84	;
const int FC2_CHOUT		= 10	;

const int CONV1_WIN		= 28	;
const int CONV1_HIN		= 28	;
const int CONV2_WIN		= 14	;
const int CONV2_HIN		= 14	;
const int CONV3_WIN		= 5		;
const int CONV3_HIN		= 5		;

const int CONV1_SIZE	= 5		;
const int CONV2_SIZE	= 5		;
const int CONV3_SIZE	= 5		;
const int FC_CONV_SIZE	= 1		;

const int MAXP1_CHIN	= 6		;
const int MAXP2_CHIN	= 16	;

const int MAXP1_WIN		= 28	;
const int MAXP1_HIN		= 28	;
const int MAXP2_WIN		= 10	;
const int MAXP2_HIN		= 10	;

const int C1_P			= 2		;
const int C2_P			= 0		;
const int C3_P			= 0		;
const int FC_P			= 0		;


const int C1_OUTPUT_SIZE	=	6*28*28		;
const int P1_OUTPUT_SIZE	=	6*14*14		;
const int C2_OUTPUT_SIZE	=	16*10*10	;
const int P2_OUTPUT_SIZE	=	16*5*5		;
const int C3_OUTPUT_SIZE	=	120*1*1		;

const int C4_OUTPUT_SIZE	=	84			;
const int C5_OUTPUT_SIZE	=	10			;




void conv(data_t in[], const data_t weight[], const data_t bias[], data_t output[], int win, int hin,
		int chin, int chout, int kx, int ky, int stride, int padding);

void max_pool_2D(data_t in[], data_t output[], int chin, int hin, int win);
void avg_pool_2D(data_t in[], data_t output[], int chin, int hin, int win);
int find_index(data_t *arr, int size);

void top_net(data_t in[],int &result);


//test main
int main_load();
int main_conv_test_output();
int main_img();
int main_c();


#endif
