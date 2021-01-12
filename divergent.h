#include "ap_int.h"
#include "ap_fixed.h"
typedef  ap_uint<8>  eita_t;
#define sigma 0.4
#define tau   0.02
#define lambda_cross 1.0
#define  cr_w 1.0
#define theta 1.0
#define HEIGHT 128
#define WIDTH 128
#define ITERATION 1

void my_filter_v1( eita_t f[HEIGHT][WIDTH],eita_t adjChImg[HEIGHT][WIDTH],eita_t g1 [HEIGHT][WIDTH],eita_t g2 [HEIGHT][WIDTH],eita_t g3 [HEIGHT][WIDTH],eita_t g4 [HEIGHT][WIDTH],eita_t g5 [HEIGHT][WIDTH],eita_t g6 [HEIGHT][WIDTH],eita_t g7 [HEIGHT][WIDTH]);
void Relax(eita_t x[HEIGHT][WIDTH],eita_t x_old[HEIGHT][WIDTH],eita_t x_bar[HEIGHT][WIDTH]);
