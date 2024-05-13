#include "utils.h"
//#include <stdio.h>
//#include <string>
//#include <iostream>
//#include "hls_stream.h"

int main(){

//	main_load();
//	main_conv_test_output();
//	main_max_pool();
//	main_avg_pool();
	main_img();
//	main_c();
	return 0;
}


//int main_load() {
//    // 假设已经准备好了权重数据和输入数据的指针
//    data_t W_buf[CHIN_w1 * KX_w1 * KY_w1 * CHOUT_w1]={
//    		1,2,3,
//			4,5,6,
//			7,8,9,
//
//    		1,2,3,
//			4,5,6,
//			7,8,9,
//
//    		1,2,3,
//			4,5,6,
//			7,8,9
//
//    };
//    data_t input[CHIN_in * W_in * H_in]={
//    		1,2,3,4,5,
//			1,2,3,4,5,
//			1,2,3,4,5,
//			1,2,3,4,5,
//			1,2,3,4,5
//    };
//
//
//    data_t bias[size_b1+size_b2+size_b3+size_b4+size_b5]={
//    					1.0,2,3,4,5,
//						6,7,8,9,10,
//    					11,12,13,14,15,
//						16,17,18,19,20,
//    					21,22,23,24,25
//        };
//
//    // 测试 load_conv1_weight 函数
//    data_t conv1_weight[CHIN_w1][KX_w1][KY_w1][CHOUT_w1];
//    load_conv1_weight(W_buf, conv1_weight);
//
//    // 测试 load_input 函数
//    data_t input_data[CHIN_in][W_in][H_in];
//    load_input(input, input_data);
//
//    // 测试 load_bias 函数
//    data_t bias1[size_b1];data_t bias2[size_b2];data_t bias3[size_b3];
//    data_t bias4[size_b4];data_t bias5[size_b5];
//    load_bias(bias, bias1, bias2, bias3, bias4, bias5);
//
//    // 打印一些示例数据，验证函数是否正确加载了数据
//    printf("Example conv1_weight data:\n");
//    for (int i = 0; i < CHIN_w1; ++i) {
//        for (int j = 0; j < KX_w1; ++j) {
//            for (int k = 0; k < KY_w1; ++k) {
//                for (int l = 0; l < CHOUT_w1; ++l) {
//                    printf("%f ", conv1_weight[i][j][k][l]);
//                }
//                printf("\n");
//            }
//        }
//    }
//    printf("\nExample input data:\n");
//    for (int i = 0; i < CHIN_in; ++i) {
//        for (int j = 0; j < W_in; ++j) {
//            for (int k = 0; k < H_in; ++k) {
//                printf("%f ", input_data[i][j][k]);
//            }
//            printf("\n");
//        }
//    }
//
//    printf("bias1 data:\n");
//	for (int i = 0; i < size_b1; ++i) {
//	   printf("%f ", bias1[i]);
//	}
//	printf("\n");
//
//	printf("bias2 data:\n");
//	for (int i = 0; i < size_b2; ++i) {
//	   printf("%f ", bias2[i]);
//	}
//	printf("\n");
//
//	printf("bias3 data:\n");
//	for (int i = 0; i < size_b3; ++i) {
//	   printf("%f ", bias3[i]);
//	}
//	printf("\n");
//
//	printf("bias4 data:\n");
//	for (int i = 0; i < size_b4; ++i) {
//	   printf("%f ", bias4[i]);
//	}
//	printf("\n");
//
//	printf("bias5 data:\n");
//	for (int i = 0; i < size_b5; ++i) {
//	   printf("%f ", bias5[i]);
//	}
//	printf("\n");
//
//
//
//    return 0;
//}


int main_conv_test_output() {

	data_t c1_output[6*28*28];
	data_t p1_output[6*14*14];
	data_t c2_output[16*10*10];
	data_t p2_output[16*5*5];
	data_t c3_output[120*1*1];
	data_t c4_output[84];
	data_t c5_output[10];

    data_t input_data[28*28]={
			#include "param/img.h"
    };

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



    // 调用乒乓读取输入，乒乓写入输出的函数
    conv(input_data, c1_weight, c1_bias, c1_output, CONV1_WIN, CONV1_WIN, CONV1_CHIN, CONV1_CHOUT, CONV1_SIZE, CONV1_SIZE, S, C1_P);

    max_pool_2D(c1_output, p1_output, MAXP1_CHIN, MAXP1_WIN, MAXP1_HIN);

    conv(p1_output, c2_weight, c2_bias, c2_output, CONV2_WIN, CONV2_WIN, CONV2_CHIN, CONV2_CHOUT, CONV2_SIZE, CONV2_SIZE, S, C2_P);
    max_pool_2D(c2_output, p2_output,MAXP2_CHIN, MAXP2_WIN, MAXP2_HIN);
    conv(p2_output, c3_weight, c3_bias, c3_output, CONV3_WIN, CONV3_WIN, CONV3_CHIN, CONV3_CHOUT, CONV3_SIZE, CONV3_SIZE, S, C3_P);

    conv(c3_output, c4_weight, c4_bias, c4_output, FC_CONV_SIZE, FC_CONV_SIZE, FC1_CHIN, FC1_CHOUT, FC_CONV_SIZE, FC_CONV_SIZE, S, FC_P);
    conv(c4_output, c5_weight, c5_bias, c5_output, FC_CONV_SIZE, FC_CONV_SIZE, FC2_CHIN, FC2_CHOUT, FC_CONV_SIZE, FC_CONV_SIZE, S, FC_P);

    for (int i = 0; i < 10; ++i) {
        for (int j = 0; j < 1; ++j) {
            for (int k = 0; k < 1; ++k) {
                std::cout << c5_output[i * 1 * 1 + j * 1 + k] << " ";
            }
            std::cout << std::endl; // 外层循环每次迭代结束后打印换行符
        }
        std::cout << std::endl; // 外层循环每次迭代结束后打印换行符
    }



    return 0;
}


int main_img(){
	 int predicted_label;

	 data_t image_data[]={
	#include "param/img.h"
	 };
	    // 调用top_net函数检测图像结果
	    top_net(image_data, predicted_label); // image_data是您保存在img.h文件中的图像数据数组

	    // 输出预测结果
	    printf("Predicted Label: %d\n", predicted_label);

	    return 0;

}

int main_c(){

	    int chin = 3;
	    int chout = 2;
	    int kx = 3;
	    int ky = 3;
		int win = 5;
	    int hin = 5;
	    int stride = 2;
	    int padding = 1;

	    int wout = (win - kx + 2 * padding) / stride + 1;
	    int hout = (hin - ky + 2 * padding) / stride + 1;

	    data_t input_data[chin*win*hin]={

	    		0,1,1,2,2,
				0,1,1,0,0,
				1,1,0,1,0,
				1,0,1,1,1,
				0,2,0,1,0,

				1,1,1,2,0,
				0,2,1,1,2,
				1,2,0,0,2,
				0,2,1,2,1,
				2,0,1,2,0,

				2,0,2,0,2,
				0,0,1,2,1,
				1,0,2,2,1,
				2,0,2,0,0,
				0,0,1,1,2,


	    };
	    data_t weight_data[chout*chin*kx*ky]={

	    		1,1,-1,
				-1,0,1,
				-1,-1,0,

				-1,0,-1,
				0,0,-1,
				1,-1,0,

				0,1,0,
				1,0,1,
				0,-1,1,

				-1,-1,0,
				-1,1,0,
				-1,1,0,

				1,-1,0,
				-1,0,-1,
				-1,0,0,

				-1,0,1,
				1,0,1,
				0,-1,0,


	    };
	    data_t bias_data[chout]={1,0};
	    data_t output_data[chout * wout * hout];


	    // 调用乒乓读取输入，乒乓写入输出的函数
	    conv(input_data, weight_data, bias_data, output_data, win, hin, chin, chout, kx, ky, stride, padding);

	    for (int i = 0; i < chout; ++i) {
	            for (int j = 0; j < hout; ++j) {
	                for (int k = 0; k < wout; ++k) {
	                    std::cout << output_data[i * wout * hout + j * wout + k] << " ";
	                }
	                std::cout << std::endl; // 外层循环每次迭代结束后打印换行符
	            }
	            std::cout << std::endl; // 外层循环每次迭代结束后打印换行符
	        }


	    return 0;
}
