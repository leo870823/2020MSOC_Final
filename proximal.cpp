#include "proximal.h"


void ProxGS(
    eita_t      x_io[HEIGHT][WIDTH], //input or output port
    cmpxDataIn coe_a[HEIGHT][WIDTH],
	data_in_t coe_b[HEIGHT][WIDTH]
    )
{
	//====== Data member ======
	bool  fft_ovflo,ifft_ovflo;
    cmpxDataIn tmp[HEIGHT][WIDTH],fft_result[HEIGHT][WIDTH],MAD[HEIGHT][WIDTH];//,ifft_result[SIZE];
    data_in_t input_data_re, input_data_im,scale_const;
    scale_const=data_in_t(255);
    //====== Interface ======
	//#pragma HLS interface ap_fifo  port=fft_ovflo,ifft_ovflo
    //#pragma HLS interface ap_fifo  port=tmp,fft_result,ifft_result,MAD
    //=======================
    //  eita_t to cmpxDataIn
    P2S(x_io,tmp);
    // FFT
    fft_top_2D(1,tmp,fft_result,&fft_ovflo);
    //adder & divider
    for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {	printf("FFT result %f \n",float(fft_result[y][x].real()));
        	printf("FFT result %f \n",float(fft_result[y][x].real()));
            if(coe_b[y][x]!=0) {
            	input_data_re=(scale_const*fft_result[y][x].real()+coe_a[y][x].real())/coe_b[y][x];
            	input_data_im=(scale_const*fft_result[y][x].imag()+coe_a[y][x].imag())/coe_b[y][x];
            }else {
            	input_data_re=0;
            	input_data_im=0;
            }
            #pragma HLS PIPELINE
                MAD[y][x]=cmpxDataIn(input_data_re, input_data_im);
        }
    }
    // inverse FFT
    fft_top_2D(0,MAD,fft_result,&ifft_ovflo);
    // cmpxDataIn to eita_t
    S2P(fft_result,x_io);
}

void P2S(eita_t data_in[HEIGHT][WIDTH],cmpxDataIn data_out[HEIGHT][WIDTH]){
	for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {
            #pragma HLS PIPELINE
        	    data_out[y][x]=cmpxDataIn( data_in_t(data_in[y][x].to_int()/float(255)),0); //input image type casting to FFT domain
        	//printf("FFT out %f \n",float(data_out[y][x].real()));
        }
    }
}



void S2P(cmpxDataIn data_in[HEIGHT][WIDTH],eita_t data_out[HEIGHT][WIDTH]){
    for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {
            //printf("FFT out real %f \n",float(255*data_in[y][x].real()));
            //printf("FFT out imag %f \n",float(255*data_in[y][x].imag()));
            #pragma HLS PIPELINE
        	data_out[y][x]=eita_t(255*data_in[y][x].real()); //float(data_in[y][x].real())*255.0
        	//printf("after FFT out %f \n",float(data_out[y][x]));
        	//double hold = (double) data_out[tmp];
        	//printf("After FFT out %f \n",hold);
        }
    }
}
