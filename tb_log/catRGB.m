R=imread("R_blurred.bmp");
G=imread("G_blurred.bmp");
B=imread("B_blurred.bmp");
RGB=cat(3,R,G,B);
subplot(1,2,1),imshow(RGB)

R=imread("deblur_R.bmp");
G=imread("deblur_G.bmp");
B=imread("deblur_B.bmp");
RGB=cat(3,R,G,B);
subplot(1,2,2),imshow(RGB);