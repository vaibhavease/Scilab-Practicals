//4(e) Thresholding

g = rgb2gray(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg"));

subplot(1,2,1);
imshow(g);
title("Grayscale Image");

subplot(1,2,2);
imshow(im2bw(g,0.5));
title("Thresholded (Binary) Image");
