#include "deblur.h"

void array_copy(eita_t data_in[HEIGHT][WIDTH],
		 	 	eita_t data_out[HEIGHT][WIDTH]) 
{   //data_in copy to data_out
for_y : for (int y = 0; y < HEIGHT; y++)
  {
    for_x : for (int x = 0; x < WIDTH; x++)
    {
    #pragma HLS PIPELINE 
    data_out[y][x] =  data_in[y][x] ;
    }
  }
}

void array_initialize(eita_t y_1[HEIGHT][WIDTH],
                      eita_t y_2[HEIGHT][WIDTH],
                      eita_t y_3[HEIGHT][WIDTH],
                      eita_t y_4[HEIGHT][WIDTH],
                      eita_t y_5[HEIGHT][WIDTH],
                      eita_t y_6[HEIGHT][WIDTH],
                      eita_t y_7[HEIGHT][WIDTH])
{
    for_y : for (int y = 0; y < HEIGHT; y++)
        {
            for_x : for (int x = 0; x < WIDTH; x++)
            {
                #pragma HLS PIPELINE  
                y_1[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_2[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_3[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_4[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_5[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_6[y][x] =  0 ;
                #pragma HLS PIPELINE  
                y_7[y][x] =  0 ;
            }
        }
}




void cross_channel_deblur(eita_t Img[HEIGHT][WIDTH],
		 	 	          eita_t adjChImg[HEIGHT][WIDTH],
                          cmpxDataIn coe_a[HEIGHT][WIDTH], //For ProxGS(FFT result)
                          eita_t coe_b[HEIGHT][WIDTH]) //For ProxGS(FFT result)
{   
    eita_t tmp[HEIGHT][WIDTH],x_bar[HEIGHT][WIDTH],x_old[HEIGHT][WIDTH],x[HEIGHT][WIDTH];
    eita_t y_1[HEIGHT][WIDTH],y_2[HEIGHT][WIDTH],y_3[HEIGHT][WIDTH],y_4[HEIGHT][WIDTH],y_5[HEIGHT][WIDTH],y_6[HEIGHT][WIDTH],y_7[HEIGHT][WIDTH];
    
    array_copy(Img,x_bar);//  x_bar = img 
    array_copy(Img,x);    //  x     = img 
    array_initialize(y_1,y_2,y_3,y_4,y_5,y_6,y_7);//  y_0   =Kx(ProxFs),initialize y_0(set flag=1 )

    for_iteration: for(int k=0;k<ITERATION;k++) {
        array_copy(x,x_old);
        my_filter_v1(x_bar,adjChImg,y_1,y_2,y_3,y_4,y_5,y_6,y_7); // ProxFS &&   
        ProxGS(x_bar,coe_a,coe_b);
        Relax(x,x_old,x_bar);
    }
}

void DEBLUR(eita_t refImg_R[HEIGHT][WIDTH],
		    eita_t adjChImg_G[HEIGHT][WIDTH],
            eita_t adjChImg_B[HEIGHT][WIDTH],
            cmpxDataIn coe_a[HEIGHT][WIDTH], //For ProxGS(FFT result)
            eita_t coe_b[HEIGHT][WIDTH]) //For ProxGS(FFT result)
{   cross_channel_deblur(  refImg_R,refImg_R,coe_a,coe_b);
    cross_channel_deblur(adjChImg_G,refImg_R,coe_a,coe_b);
    cross_channel_deblur(adjChImg_B,refImg_R,coe_a,coe_b);
}