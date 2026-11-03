//5(b1) Image Averaging

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
g = imnoise(a,"salt & pepper",0.01);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(g); title("Noisy Image");
subplot(2,2,3); imshow(imfilter(g,fspecial("average"))); title("average Image");

//5(b2) Image Smoothening

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");  
mask = ones(3, 3);  
g = imfilter(a, mask);  

figure();  
subplot(1,2,1); imshow(a); title("Original Image");  
subplot(1,2,2); imshow(g); title("Smooth Image");

//5(b) Image enhancement via immedian functions

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
n = imnoise(a,"salt & pepper",0.02);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(n); title("Noisy Image");
subplot(2,2,3); imshow(immedian(n,[3,3])); title("Output Image");
