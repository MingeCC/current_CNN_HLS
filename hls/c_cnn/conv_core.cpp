#include <string.h>
#include "utils.h"
#include <hls_stream.h>

void conv(data_t in[], const data_t weight[], const data_t bias[], data_t output[], int win, int hin,
		int chin, int chout, int kx, int ky, int stride, int padding)
{
//#pragma HLS INTERFACE s_axilite port=return
//#pragma HLS INTERFACE axis register both port=output
//#pragma HLS INTERFACE axis register both port=bias
//#pragma HLS INTERFACE axis register both port=in
//#pragma HLS INTERFACE axis register both port=weight
//#pragma HLS INTERFACE s_axilite port=padding
//#pragma HLS INTERFACE s_axilite port=stride
//#pragma HLS INTERFACE s_axilite port=ky
//#pragma HLS INTERFACE s_axilite port=kx
//#pragma HLS INTERFACE s_axilite port=chout
//#pragma HLS INTERFACE s_axilite port=chin
//#pragma HLS INTERFACE s_axilite port=hin
//#pragma HLS INTERFACE s_axilite port=win

	int hout = (hin + 2 * padding - ky) / stride + 1;
	int wout = (win + 2 * padding - kx) / stride + 1;

	data_t input_buffer;

	loop_chout:
	for (int cout = 0; cout < chout; cout++){
#pragma HLS LOOP_TRIPCOUNT min=16 max=16 avg=16

		loop_hout:
		for(int h =0; h < hout; h++){
#pragma HLS LOOP_TRIPCOUNT min=10 max=10 avg=10

			loop_wout:
			for(int w =0; w < wout; w++){
#pragma HLS LOOP_TRIPCOUNT min=10 max=10 avg=10
				data_t output_buffer=0;

				loop_chin:
				for(int cin = 0; cin < chin; cin++){
#pragma HLS LOOP_TRIPCOUNT min=6 max=6 avg=6

					loop_ky:
					for(int y =0 ; y<ky;y++){
#pragma HLS LOOP_TRIPCOUNT min=5 max=5 avg=5

						loop_kx:
						for(int x =0 ; x<kx;x++){
#pragma HLS LOOP_TRIPCOUNT min=5 max=5 avg=5
#pragma HLS PIPELINE II=1

							int xi = w * stride + x - padding;
							int yi = h * stride + y - padding;

							if (xi >= 0 && xi < win && yi >= 0 && yi < hin) {
								input_buffer = in[cin * hin * win + yi * win + xi];
							}else{
								input_buffer = 0;
							}

						output_buffer += input_buffer * weight[cout * chin * kx * ky + cin * kx * ky + y * kx + x];
						}
					}
				}
				output[cout*hout*wout+h*wout+w] = output_buffer + bias[cout];
			}
		}
	}
}


// load_data(ping/pang,feature_map,....):if ping=0:...else ping=1:...,乒乓过程在大的卷积函数中conv_1中
// conv_2(ping/pang,feature_map,....)
