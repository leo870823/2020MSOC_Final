#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <string.h>
#include <malloc.h>

//#include "ap_int.h"
//#include "ap_fixed.h"
//typedef  ap_int<8>  eita_t;
//typedef std::complex<eita_t> cmpxDataIn;
#include <iostream>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <stdio.h>
//#include "hls_fft.h"
#include "deblur.h"

#include <fstream>
#include <string>
#include <sstream>

#define MAX_WIDTH 128
#define H 128
#define W 128
int main(){
	unsigned short int y,x;
	int value;
// Read ground truth image
	value=128;
	printf("%d\n",value);
	FILE *file_truth_R = fopen("ground_truth_R.txt", "r");
	if(!file_truth_R) printf("ERROR: could not open %s for reading\n","ground_truth_R.txt");
	else printf("Open success file_truth_R\n");

	eita_t data_R[128][128] ;

	for (y = 0; y < H; y++)
	{
		for (x = 0; x < W; x++)
		{   //printf("(x,y)=(%d,%d)\n",x,y);
			fscanf(file_truth_R, "%d\n", &value);
			data_R[y][x] = eita_t(value);
			//printf("%d\n",int(value));
		}

	}
	fclose(file_truth_R);
	
	FILE *file_truth_G = fopen("ground_truth_G.txt", "r");
		if(!file_truth_G) printf("ERROR: could not open %s for reading\n","ground_truth_G.txt");
		else printf("Open success file_truth_G\n");

		eita_t data_G[128][128] ;

		for (y = 0; y < H; y++)
		{
			for (x = 0; x < W; x++)
			{
				fscanf(file_truth_G, "%d ", &value);
				data_G[y][x] = eita_t(value);
			}

		}
		fclose(file_truth_G);

	FILE *file_truth_B = fopen("ground_truth_B.txt", "r");
		if(!file_truth_B) printf("ERROR: could not open %s for reading\n","ground_truth_B.txt");
		else printf("Open success file_truth_B\n");

		eita_t data_B[128][128] ;

		for (y = 0; y < H; y++)
		{
			for (x = 0; x < W; x++)
			{
				fscanf(file_truth_B, "%d ", &value);
				data_B[y][x] = eita_t(value);
			}

		}
		fclose(file_truth_B);



// Read blurred image

	FILE *file_noise_R = fopen("I_blurred_R.txt", "r");
	if(!file_noise_R) printf("ERROR: could not open %s for reading\n","noise_R.txt");
	else printf("Open success I_blurred_R.txt\n");

	eita_t blurred_R[128][128] ;

	for (y = 0; y < H; y++)
	{
		for (x = 0; x < W; x++)
		{
			fscanf(file_noise_R, "%d ", &value);
			//printf("%d\n",&value);

			blurred_R[y][x] = eita_t(value);
			//printf("%d\n",blurred_R[y][x]);
		}
	}
	fclose(file_noise_R);
	

	FILE *file_noise_G = fopen("I_blurred_G.txt", "r");
	if(!file_noise_G) printf("ERROR: could not open %s for reading\n","noise_G.txt");
	else printf("Open success I_blurred_G.txt\n");
	eita_t blurred_G[128][128] ;

	for (y = 0; y < H; y++)
	{
		for (x = 0; x < W; x++)
		{
			fscanf(file_noise_G, "%d ", &value);
			blurred_G[y][x] = eita_t(value);
		}
	}
	fclose(file_noise_G);




	FILE *file_noise_B = fopen("I_blurred_B.txt", "r");
		if(!file_noise_B) printf("ERROR: could not open %s for reading\n","noise_B.txt");
		else printf("Open success I_blurred_B.txt\n");
		eita_t blurred_B[128][128];

		for (y = 0; y < H; y++)
		{
			for (x = 0; x < W; x++)
			{
				fscanf(file_noise_B, "%d ", &value);
				blurred_B[y][x] = eita_t(value);
			}
		}
		fclose(file_noise_B);

		 float value_for_weight;
		 static proxGSDataIn xn_input[128][128];
		 fft_operation REAL[128][128] ;
		 fft_operation IMAG[128][128] ;
		 FILE *file_REAL = fopen("REAL.txt", "r");
		 		if(!file_REAL) printf("ERROR: could not open %s for reading\n","REAL.txt");
		 FILE *file_IMAG = fopen("IMAGINARY.txt", "r");
		 		if(!file_REAL) printf("ERROR: could not open %s for reading\n","IMAGINARY.txt");

		 for (y = 0; y < H; y++)
		 {
		 	for (x = 0; x < W; x++)
		 		{
		 			fscanf(file_REAL, "%f ", &value_for_weight);
		 			REAL[y][x] = fft_operation(value_for_weight);
		 			fscanf(file_IMAG, "%f ", &value_for_weight);
		 			IMAG[y][x] = fft_operation(value_for_weight);
		 			xn_input[y][x] = proxGSDataIn( REAL[y][x],IMAG[y][x]); //Nominator
		 		}
		 }
		 fclose(file_REAL);
		 fclose(file_IMAG);


		 FILE *file_DENOM = fopen("DENOM.txt", "r");
		 		if(!file_DENOM) printf("ERROR: could not open %s for reading\n","DENOM.txt");

		 		fft_operation denom[128][128];

		 		for (y = 0; y < H; y++)
		 		{
		 			for (x = 0; x < W; x++)
		 			{
		 				fscanf(file_DENOM, "%f ", &value_for_weight);
		 				denom[y][x] = fft_operation(value_for_weight);
		 				//cout<<value_for_weight<<endl;
		 			}
		 		}
		 		fclose(file_DENOM);


		// deblur ISP kernel
	double MSE_R=0,MSE_G=0,MSE_B=0,PSNR_R=0,PSNR_G=0,PSNR_B=0 ;
	for (y = 0; y < H; y++)
	{
		 for (x = 0; x < W; x++)
		 {
		 	MSE_R = MSE_R + (blurred_R[y][x]- data_R[y][x]) * (blurred_R[y][x]- data_R[y][x]);
		 	MSE_B = MSE_B + (blurred_B[y][x]- data_B[y][x]) * (blurred_B[y][x]- data_B[y][x]);
		 	MSE_G = MSE_G + (blurred_G[y][x]- data_G[y][x]) * (blurred_G[y][x]- data_G[y][x]);
		 }
	}
	MSE_R = MSE_R/H/W ;
	MSE_B = MSE_B/H/W ;
	MSE_G = MSE_G/H/W ;
	if(MSE_R!=0){PSNR_R = 10 * log10(255*255/MSE_R);}
	if(MSE_B!=0){PSNR_B = 10 * log10(255*255/MSE_B);}
	if(MSE_G!=0){PSNR_G = 10 * log10(255*255/MSE_G);}

	printf( "R channel PSNR=%f \n", PSNR_R);
	printf( "B channel PSNR=%f \n", PSNR_B);
	printf( "G channel PSNR=%f \n", PSNR_G);
	DEBLUR(blurred_R,blurred_G,blurred_B,xn_input,denom);

	eita_t out[128*128] ;

	MSE_R=0,MSE_G=0,MSE_B=0,PSNR_R=0,PSNR_G=0,PSNR_B=0 ;
	for (y = 0; y < H; y++)
	{
		for (x = 0; x < W; x++)
		{	//printf("(x,y)=(%d,%d)\n",x,y);
			//printf("Pixel value %d for reading\n",int(blurred_R[y][x]));
			MSE_R = MSE_R + (blurred_R[y][x]- data_R[y][x]) * (blurred_R[y][x]- data_R[y][x]);
			MSE_B = MSE_B + (blurred_B[y][x]- data_B[y][x]) * (blurred_B[y][x]- data_B[y][x]);
			MSE_G = MSE_G + (blurred_G[y][x]- data_G[y][x]) * (blurred_G[y][x]- data_G[y][x]);
		}	
	}
	
	MSE_R = MSE_R/H/W ;
	MSE_B = MSE_B/H/W ;
	MSE_G = MSE_G/H/W ;
	if(MSE_R!=0){PSNR_R = 10 * log10(255*255/MSE_R);}
	if(MSE_B!=0){PSNR_B = 10 * log10(255*255/MSE_B);}
	if(MSE_G!=0){PSNR_G = 10 * log10(255*255/MSE_G);}


	printf( "R channel PSNR=%f \n", PSNR_R);
	printf( "B channel PSNR=%f \n", PSNR_B);
	printf( "G channel PSNR=%f \n", PSNR_G);
	
}
