#include "proximal.h"
#include "divergent.h"
void array_initialize(eita_t y_1[HEIGHT][WIDTH],
                      eita_t y_2[HEIGHT][WIDTH],
                      eita_t y_3[HEIGHT][WIDTH],
                      eita_t y_4[HEIGHT][WIDTH],
                      eita_t y_5[HEIGHT][WIDTH],
                      eita_t y_6[HEIGHT][WIDTH],
                      eita_t y_7[HEIGHT][WIDTH]);
void cross_channel_deblur(eita_t Img[HEIGHT][WIDTH],
		 	 	          eita_t adjChImg[HEIGHT][WIDTH],
                          cmpxDataIn coe_a[HEIGHT][WIDTH],
                          eita_t coe_b[HEIGHT][WIDTH]);
void array_copy(eita_t data_in[HEIGHT][WIDTH],eita_t data_out[HEIGHT][WIDTH]);
void DEBLUR(eita_t refImg_R[HEIGHT][WIDTH],eita_t adjChImg_G[HEIGHT][WIDTH],eita_t adjChImg_B[HEIGHT][WIDTH],cmpxDataIn coe_a[HEIGHT][WIDTH],data_in_t coe_b[HEIGHT][WIDTH]);
