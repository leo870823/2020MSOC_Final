#include "fft_top.h"
#include "ap_int.h"
#include "ap_fixed.h"
typedef  ap_uint<8>  eita_t;
//#define SIZE 1<<14
#define HEIGHT 128
#define WIDTH 128
void P2S(eita_t data_in[HEIGHT][WIDTH],cmpxDataIn data_out[HEIGHT][WIDTH]);
void S2P(cmpxDataIn data_in[HEIGHT][WIDTH],eita_t data_out[HEIGHT][WIDTH]);
void ProxGS(eita_t x_io[HEIGHT][WIDTH],cmpxDataIn coe_a[HEIGHT][WIDTH],data_in_t coe_b[HEIGHT][WIDTH]);
