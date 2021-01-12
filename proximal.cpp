#include "proximal.h"


void ProxGS(
    eita_t      x_io[HEIGHT][WIDTH], //input or output port
    cmpxDataIn coe_a[HEIGHT][WIDTH],
    eita_t coe_b[HEIGHT][WIDTH]
    )
{
	//====== Data member ======
	bool  fft_ovflo,ifft_ovflo;
    cmpxDataIn tmp[SIZE],fft_result[SIZE],MAD[SIZE];//,ifft_result[SIZE];
    data_in_t input_data_re, input_data_im;
    //====== Interface ======
	//#pragma HLS interface ap_fifo  port=fft_ovflo,ifft_ovflo
    //#pragma HLS interface ap_fifo  port=tmp,fft_result,ifft_result,MAD
    //=======================
    //  eita_t to cmpxDataIn
    P2S(x_io,tmp);
    //printf("[DEBUG] End of P2S \n");
    // FFT
    fft_top(1,tmp,fft_result,&fft_ovflo);
    //printf("[DEBUG] End of FFT \n");
    //adder & divider
    for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {
            int tmp = x+y*HEIGHT;
            if(coe_b[y][x]!=0) {
            	input_data_re=(fft_result[tmp].real()+coe_a[y][x].real())/coe_b[y][x];
            	input_data_im=(fft_result[tmp].imag()+coe_a[y][x].imag())/coe_b[y][x];
            }else {
            	input_data_re=0;
            	input_data_im=0;
            }
            #pragma HLS PIPELINE
                MAD[tmp]=cmpxDataIn(input_data_re, input_data_im);
                //MAD[tmp].real()=(fft_result[tmp].real()+coe_a[y][x].real())/coe_b[y][x];
                //MAD[tmp].imag()=(fft_result[tmp].imag()+coe_a[y][x].imag())/coe_b[y][x];
        }
    }
    // inverse FFT
    fft_top(0,MAD,fft_result,&ifft_ovflo);
    // cmpxDataIn to eita_t
    S2P(fft_result,x_io);
}

void P2S(eita_t data_in[HEIGHT][WIDTH],cmpxDataIn data_out[SIZE]){
    for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {
            int tmp = x+y*HEIGHT;
            #pragma HLS PIPELINE
        	    data_out[tmp]=cmpxDataIn(data_in[y][x],0); //input image type casting to FFT domain 
            //data_out[tmp].real()=data_in[y][x];
        }
    }
}



void S2P(cmpxDataIn data_in[SIZE],eita_t data_out[HEIGHT][WIDTH]){
    for_y : for (int y = 0; y < HEIGHT; y++)
    {
        for_x : for (int x = 0; x < WIDTH; x++)
        {
            
            int tmp = x+y*HEIGHT;
            #pragma HLS PIPELINE
        	data_out[y][x]=eita_t(data_in[tmp].real());
        }
    }
}
