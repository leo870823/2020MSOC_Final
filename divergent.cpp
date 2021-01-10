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

void my_filter_v1( eita_t f[HEIGHT][WIDTH],
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
	 // eita_t f  [HEIGHT][WIDTH]; //x
	 eita_t fx [HEIGHT][WIDTH];
	 eita_t fy [HEIGHT][WIDTH];
	 eita_t fxx[HEIGHT][WIDTH];
	 eita_t fyy[HEIGHT][WIDTH];
	 eita_t fxy[HEIGHT][WIDTH];

	 eita_t adj_fx [HEIGHT][WIDTH];
	 eita_t adj_fy [HEIGHT][WIDTH];
	 //eita_t adjChImg [HEIGHT][WIDTH]; //x

	 eita_t Sxf [HEIGHT][WIDTH];
	 eita_t Syf [HEIGHT][WIDTH];

	 //eita_t g1 [HEIGHT][WIDTH];//y1,typedef static
	 //eita_t g2 [HEIGHT][WIDTH];
	 //eita_t g3 [HEIGHT][WIDTH];
	 //eita_t g4 [HEIGHT][WIDTH];
	 //eita_t g5 [HEIGHT][WIDTH];
	 //eita_t g6 [HEIGHT][WIDTH];
	 //eita_t g7 [HEIGHT][WIDTH];

	 eita_t gx [HEIGHT][WIDTH];
	 eita_t gy [HEIGHT][WIDTH];
	 eita_t g3x [HEIGHT][WIDTH];
	 eita_t gxx [HEIGHT][WIDTH];
	 eita_t g4y [HEIGHT][WIDTH];
	 eita_t gyy [HEIGHT][WIDTH];
	 eita_t g5x [HEIGHT][WIDTH];

	 eita_t gxy [HEIGHT][WIDTH];

	 eita_t Sxtf [HEIGHT][WIDTH];
	 eita_t Sytf [HEIGHT][WIDTH];

      // Load window
	my_filter_fx ( fx, f);
	my_filter_fy ( fy, f);
	my_filter_fx ( fxx, fx    );
	my_filter_fy ( fyy, fy    );
	my_filter_fy ( fxy, fx    );

	my_filter_fx ( adj_fx , adjChImg);
	my_filter_fy ( adj_fy , adjChImg);


	//Proximal FS
	Loop_y_0 : for (int y = 0; y < HEIGHT; y++)
	{
		Loop_x_0 : for (int x = 0; x < WIDTH; x++)
	    	{
	    		Sxf[y][x] = (lambda_cross * cr_w) * ( adjChImg[y][x] * fx[y][x] - adj_fx[y][x] * f[y][x] );
	    		Syf[y][x] = (lambda_cross * cr_w) * ( adjChImg[y][x] * fy[y][x] - adj_fy[y][x] * f[y][x] );
	    		
	    	}
	}
	printf("[DEBUG] End of Loop_y_0 \n");





	Loop_y_1 : for (int y = 0; y < HEIGHT; y++)
  	{
		Loop_x_1 : for (int x = 0; x < WIDTH; x++)
    	{
			#pragma HLS PIPELINE
	  		g1[y][x] = g1[y][x] + eita_t(sigma) * fx[y][x] ;
			g2[y][x] = g2[y][x] + eita_t(sigma) * fy[y][x] ;
			g3[y][x] = g3[y][x] + eita_t(sigma) * fxx[y][x] ;
			g4[y][x] = g4[y][x] + eita_t(sigma) * fyy[y][x] ;
			g5[y][x] = g5[y][x] + eita_t(sigma) * fxy[y][x] ;
			g6[y][x] = g6[y][x] + eita_t(sigma) * Sxf[y][x] ; // Q
			g7[y][x] = g7[y][x] + eita_t(sigma) * Syf[y][x] ;
			if(g1[y][x]>1)
				g1[y][x] = 1 ;
			if(g2[y][x]>1)
				g2[y][x] = 1 ;
			if(g3[y][x]>1)
				g3[y][x] = 1 ;
			if(g4[y][x]>1)
				g4[y][x] = 1 ;
			if(g5[y][x]>1)
				g5[y][x] = 1 ;
			if(g6[y][x]>1)
				g6[y][x] = 1 ;
			if(g7[y][x]>1)
				g7[y][x] = 1 ;
        }
    }
	printf("[DEBUG] End of Loop_y_1 \n");
	//Proximal G
		my_filter_fx ( gx, g1);
		my_filter_fy ( gy, g2);
		my_filter_fx ( g3x, g3 );
		my_filter_fx ( gxx, g3x );
		my_filter_fy ( g4y, g4 );
		my_filter_fy ( gyy, g4y );
		my_filter_fx ( g5x, g5 );
		my_filter_fy ( gxy, g5x );


		eita_t temp_cross6 [HEIGHT][WIDTH];
		eita_t temp_cross7 [HEIGHT][WIDTH];
		eita_t cross_X [HEIGHT][WIDTH];
		eita_t cross_Y [HEIGHT][WIDTH];
		Loop_y_2 : for (int y = 0; y < HEIGHT; y++)
					{
			Loop_x_2  : for (int x = 0; x < WIDTH; x++)
					    	{

					    			temp_cross6[y][x] = adjChImg[y][x] * g6[y][x] ;
					    			temp_cross7[y][x] = adjChImg[y][x] * g7[y][x] ;
					    	}
					}

		printf("[DEBUG] End of Loop_y_2 \n");
		my_filter_fx ( cross_X, temp_cross6 );
		my_filter_fy ( cross_Y, temp_cross7 );


		Loop_y_3 : for (int y = 0; y < HEIGHT; y++)
			{
			Loop_x_3  : for (int x = 0; x < WIDTH; x++)
			    	{
			    		Sxtf[y][x] = eita_t(lambda_cross * cr_w) * ( cross_X[y][x] - adj_fx[y][x] * g6[y][x] );
			    		Sytf[y][x] = eita_t(lambda_cross * cr_w) * ( cross_Y[y][x] - adj_fy[y][x] * g7[y][x] );
			    	}
			}
		printf("[DEBUG] End of Loop_y_3 \n");
	Loop_y_4: for (int y = 0; y < HEIGHT; y++)
  	{
		Loop_x_4 : for (int x = 0; x < WIDTH; x++)
    	{
			#pragma HLS PIPELINE
	  		f[y][x] = f[y][x] - eita_t(tau) * (gx[y][x] + gy[y][x] + gxx[y][x] + gyy[y][x] + gxy[y][x]+Sxtf[y][x]+Sytf[y][x]) ;
			
        }
    }
	printf("[DEBUG] End of my filter \n");


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
            	x_bar[j][i] =  eita_t(theta)*(x[j][i]-x_old[j][i]);
            }
        }
}
                          
