I_sharp = imresize(imread('.\DeconvolutionColorPrior\I_sharp.png'),[128 128]);
R = I_sharp(:,:,1) ;
G = I_sharp(:,:,2) ;
B = I_sharp(:,:,3) ;

img1D = R(:);
fid = fopen('ground_truth_R.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);

img1D = G(:);
fid = fopen('ground_truth_G.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);

img1D = B(:);
fid = fopen('ground_truth_B.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%
I_blurred = imresize(imread('.\DeconvolutionColorPrior\I_blurred.png'),[128 128]);
R = I_blurred(:,:,1) ;
G = I_blurred(:,:,2) ;
B = I_blurred(:,:,3) ;

img1D = R(:);
fid = fopen('I_blurred_R.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);

img1D = G(:);
fid = fopen('I_blurred_G.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);

img1D = B(:);
fid = fopen('I_blurred_B.txt', 'wt');
fprintf(fid, '%d\n', img1D);
fclose(fid);