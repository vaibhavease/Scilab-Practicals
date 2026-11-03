//5(a) Linear & Non-linear Smoothing

g = rgb2gray(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg"));
n = imnoise(g,"salt & pepper",0.05);
subplot(2,3,1); imshow(g); title("Original Image");
subplot(2,3,2); imshow(n); title("Noisy Image");
subplot(2,3,3); imshow(imfilter(n,ones(3,3)/9)); title("Linear: Mean Filter");
subplot(2,3,4); imshow(imfilter(n,fspecial("gaussian",[5 5],1))); title("Linear: Gaussian Filter");
subplot(2,3,5); imshow(immedian(n,[3,3])); title("Non-Linear: Median Filter");
