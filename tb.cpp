#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <string.h>
#include <malloc.h>
#include "hls_video.h"
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
// image processing lib
#include <stdio.h>
//#include <opencv2/core/core.hpp>
#include <hls_opencv.h>

#define MAX_WIDTH 128
#define H 128
#define W 128



void write_file(const char* file_name,eita_t out_array[WIDTH][HEIGHT]);
void read_coe(fft_operation denom[128][128],proxGSDataIn xn_input[128][128],const char* file_name_real,const char* file_name_imag,const char* file_name_denominator);
void COMPUTE_PSNR(eita_t blurred_R[HEIGHT][WIDTH],eita_t blurred_G[HEIGHT][WIDTH],eita_t blurred_B[HEIGHT][WIDTH],eita_t data_R[HEIGHT][WIDTH],eita_t data_G[HEIGHT][WIDTH],eita_t data_B[HEIGHT][WIDTH]);

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





//====== Deblur ISP kernel ======
	// read coefficient(Real,Imaginary,Denominator)
	fft_operation denom_R[128][128],denom_G[128][128],denom_B[128][128];
	proxGSDataIn nominator_R[128][128],nominator_G[128][128],nominator_B[128][128];
	read_coe(denom_R,nominator_R,"REAL.txt","IMAGINARY.txt","DENOM.txt");
	read_coe(denom_G,nominator_G,"REAL2.txt","IMAGINARY2.txt","DENOM2.txt");
	read_coe(denom_B,nominator_B,"REAL3.txt","IMAGINARY3.txt","DENOM3.txt");


//====== Deblur kernel ======
	printf("==== Before deblurring ====\n");
	COMPUTE_PSNR(blurred_R,blurred_G,blurred_B,data_R,data_G,data_B);	
	printf("====  After deblurring ====\n");
	DEBLUR(blurred_R,blurred_G,blurred_B,nominator_R,denom_R,nominator_G,denom_G,nominator_B,denom_B);
	COMPUTE_PSNR(blurred_R,blurred_G,blurred_B,data_R,data_G,data_B);
	// output image
	write_file("C:/Users/leo870823/Desktop/MSOC/2020MSOC_Final/tb_log/deblur_R.bmp",blurred_R);
	write_file("C:/Users/leo870823/Desktop/MSOC/2020MSOC_Final/tb_log/deblur_G.bmp",blurred_G);
	write_file("C:/Users/leo870823/Desktop/MSOC/2020MSOC_Final/tb_log/deblur_B.bmp",blurred_B);


}

//===== utility function ====

void saveImage(const std::string path, cv::InputArray inArr)
{
	double min;
	double max;
	cv::minMaxIdx(inArr, &min, &max);
	cv::Mat adjMap;
	cv::convertScaleAbs(inArr, adjMap, 255 / max);
	cv::imwrite(path,adjMap);
}

void write_file(const char* file_name,eita_t out_array[WIDTH][HEIGHT]){

	int value;
	char outImage[WIDTH][HEIGHT];
	cv::Mat imgCvOut(cv::Size(WIDTH,HEIGHT), CV_8UC1, outImage, cv::Mat::AUTO_STEP);
		for (int y = 0; y < H; y++)
		{
			for (int x = 0; x < W; x++)
			{
				outImage[x][y]=char(out_array[y][x]);
			}

		}
		saveImage(std::string(file_name) ,imgCvOut);
		printf( "output file %s :\n",file_name );
}

void read_coe(fft_operation denom[128][128],proxGSDataIn xn_input[128][128],const char* file_name_real,const char* file_name_imag,const char* file_name_denominator){

	 float value_for_weight;
	 //static fft_operation denom[128][128];
	 //static proxGSDataIn xn_input[128][128];
	 fft_operation REAL[128][128] ;
	 fft_operation IMAG[128][128] ;
	 FILE *file_REAL = fopen(file_name_real, "r");
	 		if(!file_REAL) printf("ERROR: could not open %s for reading\n",file_name_real);
	 FILE *file_IMAG = fopen(file_name_imag, "r");
	 		if(!file_REAL) printf("ERROR: could not open %s for reading\n",file_name_imag);

	 for (int y = 0; y < H; y++)
	 {
	 	for (int x = 0; x < W; x++)
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


	 FILE *file_DENOM = fopen(file_name_denominator, "r");
	 		if(!file_DENOM) printf("ERROR: could not open %s for reading\n",file_name_denominator);



	 		for (int y = 0; y < H; y++)
	 		{
	 			for (int x = 0; x < W; x++)
	 			{
	 				fscanf(file_DENOM, "%f ", &value_for_weight);
	 				denom[y][x] = fft_operation(value_for_weight);
	 				//cout<<value_for_weight<<endl;
	 			}
	 		}
	 		fclose(file_DENOM);
}


void COMPUTE_PSNR(	
	eita_t blurred_R[HEIGHT][WIDTH],
	eita_t blurred_G[HEIGHT][WIDTH],
	eita_t blurred_B[HEIGHT][WIDTH],
	eita_t data_R[HEIGHT][WIDTH],
	eita_t data_G[HEIGHT][WIDTH],
	eita_t data_B[HEIGHT][WIDTH]
){
	double MSE_R,MSE_G,MSE_B,PSNR_R,PSNR_G,PSNR_B;
	MSE_R=0,MSE_G=0,MSE_B=0,PSNR_R=0,PSNR_G=0,PSNR_B=0 ;
	for (int y = 0; y < H; y++)
	{
		 for (int x = 0; x < W; x++)
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
}

