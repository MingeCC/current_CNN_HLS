#include <stdio.h>
#include <string.h>
#include "utils.h"

#define CHIN_in 		1
#define W_in 			5
#define H_in 			5

#define CHIN_w1 	1	//1 1
#define KX_w1  		3	//3 5
#define KY_w1 		3	//3 5
#define CHOUT_w1 	3	//3 6

#define CHIN_w2 	1	//1 6
#define KX_w2  		3	//3 5
#define KY_w2 		3	//3 5
#define CHOUT_w2 	3	//3 16

#define CHIN_w3 	1	//1 16
#define KX_w3  		3	//3 5
#define KY_w3 		3	//3 5
#define CHOUT_w3 	3	//3 120



#define size_b1 	1	//6 1
#define size_b2 	3	//16 3
#define size_b3 	5	//120 5
#define size_b4 	7	//84 7
#define size_b5 	9	//10 9

int size_w1 = CHIN_w1 * KX_w1 * KY_w1 * CHOUT_w1 ;
int size_w2 = CHIN_w2 * KX_w2 * KY_w2 * CHOUT_w2 ;
int size_w3 = CHIN_w3 * KX_w3 * KY_w3 * CHOUT_w3 ;


void load_conv1_weight(data_t *W_buf, data_t conv_w1[CHIN_w1][KX_w1][KY_w1][CHOUT_w1]);
void load_conv2_weight(data_t *W_buf, data_t conv_w2[CHIN_w2][KX_w2][KY_w2][CHOUT_w2]);
void load_conv3_weight(data_t *W_buf, data_t conv_w3[CHIN_w3][KX_w3][KY_w3][CHOUT_w3]);
void load_input(data_t *input, data_t in[CHIN_in][W_in][H_in]);
void load_bias(data_t *bias, data_t bias1[size_b1],data_t bias2[size_b2],
		data_t bias3[size_b3],data_t bias4[size_b4],data_t bias5[size_b5]);

void load_conv1_weight(data_t *W_buf, data_t conv_w1[CHIN_w1][KX_w1][KY_w1][CHOUT_w1])
{
    // 将权重数据从DRAM加载到BRAM上
    memcpy(conv_w1, (data_t *)W_buf, size_w1 * sizeof(data_t));
}

void load_conv2_weight(data_t *W_buf, data_t conv_w2[CHIN_w2][KX_w2][KY_w2][CHOUT_w2])
{

    // 将权重数据从DRAM加载到BRAM上
    memcpy(conv_w2, (data_t *)(W_buf + size_w1), size_w2 * sizeof(data_t));
}

void load_conv3_weight(data_t *W_buf, data_t conv_w3[CHIN_w3][KX_w3][KY_w3][CHOUT_w3])
{

    // 将权重数据从DRAM加载到BRAM上
    memcpy(conv_w3, (data_t *)(W_buf + size_w1 + size_w2), size_w3 * sizeof(data_t));
}

void load_input(data_t *input, data_t in[CHIN_in][W_in][H_in])
{
	int size_input = CHIN_in * W_in * H_in * sizeof(data_t);

	memcpy(in, (data_t *)input, size_input);
}

void load_bias(data_t *bias, data_t bias1[size_b1],data_t bias2[size_b2],
		data_t bias3[size_b3],data_t bias4[size_b4],data_t bias5[size_b5])
{
	// 从源地址bias不断取数据送给目标地址，每次进行偏移
	memcpy(bias1, (data_t *)(bias), size_b1 * sizeof(data_t));
	memcpy(bias2, (data_t *)(bias+size_b1), size_b2 * sizeof(data_t));
	memcpy(bias3, (data_t *)(bias+size_b1+size_b2), size_b3 * sizeof(data_t));
	memcpy(bias4, (data_t *)(bias+size_b1+size_b2+size_b3), size_b4 * sizeof(data_t));
	memcpy(bias5, (data_t *)(bias+size_b1+size_b2+size_b3+size_b4), size_b5 * sizeof(data_t));

}


