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

K_blur = imread('.\DeconvolutionColorPrior\kernels\fading.png');
K  = double(rgb2gray(K_blur)) ;
K  = K ./ sum(K(:));
otfk  = psf2otf(K, [128 128]); 
Nomin1 = conj(otfk).*fft2(I_sharp(:,:,2));
Denom1 = abs(otfk).^2; 

RE = real(Nomin1) ;
img1D = RE(:);
fid = fopen('REAL.txt', 'wt');
fprintf(fid, '%f\n', img1D);
fclose(fid);
    
IMAG = imag(Nomin1) ;
img1D = IMAG(:);
fid = fopen('IMAGINARY.txt', 'wt');
fprintf(fid, '%f\n', img1D);
fclose(fid);
    
img1D = Denom1(:);
fid = fopen('DENOM.txt', 'wt');
fprintf(fid, '%f\n', img1D);
fclose(fid);

