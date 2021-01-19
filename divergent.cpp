#include "divergent.h"
void my_filter_fx( eita_t data_out[HEIGHT][WIDTH],
		 	 	   eita_t data_in[HEIGHT][WIDTH])
{

  for_y : for (int y = 0; y < HEIGHT; y++)
  {
    for_x : for (int x = 0; x < WIDTH; x++)
    {
#pragma HLS PIPELINE

	  data_out[y][x] =  data_in[y][x+1]- data_in[y][x] ;

    }
  }
}

void my_filter_fy( eita_t data_out[HEIGHT][WIDTH],
		 eita_t data_in[HEIGHT][WIDTH])
{

  for_y : for (int y = 0; y < HEIGHT; y++)
  {
    for_x : for (int x = 0; x < WIDTH; x++)
    {
#pragma HLS PIPELINE

	  data_out[y][x] =  data_in[y+1][x]-data_in[y][x] ;

    }
  }
}

void ProxFS (eita_t data_out[HEIGHT][WIDTH],
		 	eita_t data_in[HEIGHT][WIDTH])
{

  for_y : for (int y = 0; y < HEIGHT; y++)
  {
    for_x : for (int x = 0; x < WIDTH; x++)
    {
#pragma HLS PIPELINE
	  if(data_in[y][x]>1)	
	  data_out[y][x] =  1 ;
	  else
	  data_out[y][x] =  data_in[y][x] ;

    }
  }
}

void my_filter_v1( eita_t f_n[HEIGHT][WIDTH],// x_bar
				   eita_t f[HEIGHT][WIDTH],// x_bar
				   eita_t adjChImg[HEIGHT][WIDTH],
				   eita_t g1 [HEIGHT][WIDTH],
				   eita_t g2 [HEIGHT][WIDTH],
				   eita_t g3 [HEIGHT][WIDTH],
				   eita_t g4 [HEIGHT][WIDTH],
				   eita_t g5 [HEIGHT][WIDTH],
				   eita_t g6 [HEIGHT][WIDTH],
				   eita_t g7 [HEIGHT][WIDTH]
		 	 	   )

{	 
	


	Loop_y_1 : for (int y = 0; y < HEIGHT; y++)
  	{
		Loop_x_1 : for (int x = 0; x < WIDTH; x++)
    	{
			//#pragma HLS PIPELINE
			//if( ~(x==0 || x==WIDTH-1 || x==0 || x==HEIGHT-1) )
			if( (x<=UPPER && x>=LOWER) && (y<=UPPER && y>=LOWER))
			{
	  			g1[y][x] = g1[y][x] + eita_t(SIGMA) * (f[y][x+1]- f[y][x]) ;
	  			g2[y][x] = g2[y][x] + eita_t(SIGMA) * (f[y+1][x]- f[y][x]) ;
	  			g3[y][x] = g3[y][x] + eita_t(SIGMA) * (f[y][x+2]- 2*f[y][x+1] + f[y][x]) ;
	  			g4[y][x] = g4[y][x] + eita_t(SIGMA) * (f[y+2][x]- 2*f[y+1][x] + f[y][x]) ;
	  			g5[y][x] = g5[y][x] + eita_t(SIGMA) * (f[y+1][x+1]- f[y+1][x] - f[y][x+1] + f[y][x] ) ;
	  			g6[y][x] = g6[y][x] + eita_t(SIGMA) * (lambda_cross * cr_w) * ( adjChImg[y][x] * (f[y][x+1]- f[y][x]) - (adjChImg[y][x+1]- adjChImg[y][x]) * f[y][x] );
	  			g7[y][x] = g7[y][x] + eita_t(SIGMA) * (lambda_cross * cr_w) * ( adjChImg[y][x] * (f[y+1][x]- f[y][x]) - (adjChImg[y+1][x]- adjChImg[y][x]) * f[y][x] );
			}
	  		if(g1[y][x]>1) g1[y][x] = 1 ;
	  		else if(g1[y][x]<-1)   g1[y][x] = -1;
			if(g2[y][x]>1) g2[y][x] = 1 ;
			else if(g2[y][x]<-1)   g2[y][x] = -1;
			if(g3[y][x]>1) g3[y][x] = 1 ;
			else if(g3[y][x]<-1)   g3[y][x] = -1;
			if(g4[y][x]>1) g4[y][x] = 1 ;
			else if(g4[y][x]<-1)   g4[y][x] = -1;
			if(g5[y][x]>1) g5[y][x] = 1 ;
			else if(g5[y][x]<-1)   g5[y][x] = -1;
			if(g6[y][x]>1) g6[y][x] = 1 ;
			else if(g6[y][x]<-1)   g6[y][x] = -1;
			if(g7[y][x]>1) g7[y][x] = 1 ;
			else if(g7[y][x]<-1)   g7[y][x] = -1;
        }
    }

	Loop_y_4: for (int y = 0; y < HEIGHT; y++)
  	{
		Loop_x_4 : for (int x = 0; x < WIDTH; x++)
    	{
			#pragma HLS PIPELINE
			//if( ~(x==0 || x==WIDTH-1 || x==0 || x==HEIGHT-1))
			if( (x<=UPPER && x>=LOWER) && (y<=UPPER && y>=LOWER))
			f_n[y][x] = f_n[y][x] - eita_t(TAU) *
			( (g1[y][x+1]- g1[y][x])
			+ (g2[y+1][x]- g2[y][x])
			+ (g3[y][x+2]- 2*g3[y][x+1] + g3[y][x])
			+ (g4[y+2][x]- 2*g4[y+1][x] + g4[y][x])
			+ (g5[y+1][x+1]- g5[y+1][x] - g5[y][x+1] + g5[y][x] )
			+ eita_t(lambda_cross * cr_w) * ( (adjChImg[y][x+1] * g6[y][x+1] - adjChImg[y][x] * g6[y][x]) - (adjChImg[y][x+1]- adjChImg[y][x]) * g6[y][x] )
			+ eita_t(lambda_cross * cr_w) * ( (adjChImg[y+1][x] * g7[y+1][x] - adjChImg[y][x] * g7[y][x]) - (adjChImg[y+1][x]- adjChImg[y][x]) * g7[y][x] )) ;
        }
    }


}


void Relax(eita_t x[HEIGHT][WIDTH],
		   eita_t x_old[HEIGHT][WIDTH],
           eita_t x_bar[HEIGHT][WIDTH])
{
    for_y : for (int j = 0; j < HEIGHT; j++)
        {
            for_x : for (int i = 0; i < WIDTH; i++)
            {
                #pragma HLS PIPELINE
            	x_bar[j][i] =  eita_t(THETA)*(x[j][i]-x_old[j][i]);
            }
        }
}
                          
