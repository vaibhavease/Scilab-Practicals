//5(b1) Image Averaging

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
g = imnoise(a,"salt & pepper",0.01);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(g); title("Noisy Image");
subplot(2,2,3); imshow(imfilter(g,fspecial("average"))); title("average Image");
