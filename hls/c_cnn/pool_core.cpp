#include "utils.h"


// 还未进行验证***********************
void max_pool_2D(data_t in[], data_t output[], int chin, int hin, int win)
{
//#pragma HLS INTERFACE m_axi depth=999999 port=in offset=slave
//#pragma HLS INTERFACE m_axi depth=999999 port=output offset=slave
//
//#pragma HLS INTERFACE s_axilite port=return
//#pragma HLS INTERFACE s_axilite port=chin
//#pragma HLS INTERFACE s_axilite port=hin
//#pragma HLS INTERFACE s_axilite port=win

    for(int i=0; i<hin/2; i++) {
    #pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

        for(int j=0; j<win/2; j++) {
        #pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

            for(int n=0; n<chin; n++) {
            #pragma HLS LOOP_TRIPCOUNT min=2 max=2 avg=2
            #pragma HLS PIPELINE II=2

                float tmp[4];
                tmp[0] = in[n*hin*win + 2*i*win + 2*j];
                tmp[1] = in[n*hin*win + 2*i*win + 2*j + 1];
                tmp[2] = in[n*hin*win + (2*i+1)*win + 2*j];
                tmp[3] = in[n*hin*win + (2*i+1)*win + 2*j + 1];

                float max_val = tmp[0];

                for(int k = 1; k < 4; k++) {
                    if(tmp[k] > max_val) {
                        max_val = tmp[k];
                    }
                }

                output[n*(hin/2)*(win/2) + i*(win/2) + j] = max_val;

            }
        }
    }
}

void avg_pool_2D(data_t in[], data_t output[], int chin, int hin, int win)
{
//#pragma HLS INTERFACE m_axi depth=999999 port=in offset=slave
//#pragma HLS INTERFACE m_axi depth=999999 port=output offset=slave
//#pragma HLS INTERFACE s_axilite port=return
//#pragma HLS INTERFACE s_axilite port=chin
//#pragma HLS INTERFACE s_axilite port=hin
//#pragma HLS INTERFACE s_axilite port=win

    for(int i=0; i<hin/2; i++) {
    #pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

        for(int j=0; j<win/2; j++) {
        #pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

            for(int n=0; n<chin; n++) {
            #pragma HLS LOOP_TRIPCOUNT min=2 max=2 avg=2
            #pragma HLS PIPELINE II=2

                float sum = 0.0;
                sum += in[n*hin*win + 2*i*win + 2*j];
                sum += in[n*hin*win + 2*i*win + 2*j + 1];
                sum += in[n*hin*win + (2*i+1)*win + 2*j];
                sum += in[n*hin*win + (2*i+1)*win + 2*j + 1];

                // 计算平均值
                float avg_val = sum / 4.0;

                output[n*(hin/2)*(win/2) + i*(win/2) + j] = avg_val;

            }
        }
    }
}

int find_index(data_t *arr, int size) {

    int max_index = 0; // 假设第一个元素是最大的
    float max_value = arr[0]; // 将第一个元素作为最大值

    // 遍历数组，查找最大值及其索引
    for (int i = 1; i < size; i++) {
        if (arr[i] > max_value) {
            max_value = arr[i]; // 更新最大值
            max_index = i; // 更新最大值的索引
        }
    }

    return max_index;
}
