#include "fft_top.h"
#include "ap_int.h"
#include "ap_fixed.h"
typedef  ap_int<8>  eita_t;
typedef  ap_int<16>  fft_t;
#define SIZE 1<<14
#define HEIGHT 128
#define WIDTH 128
void P2S(eita_t data_in[HEIGHT][WIDTH],cmpxDataIn data_out[SIZE]);
void S2P(cmpxDataIn data_in[SIZE],eita_t data_out[HEIGHT][WIDTH]);
void ProxGS(eita_t x_io[HEIGHT][WIDTH],cmpxDataIn coe_a[HEIGHT][WIDTH],eita_t coe_b[HEIGHT][WIDTH]);
