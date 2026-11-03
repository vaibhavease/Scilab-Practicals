//6 Part A: Gradient & Laplacian
 
g = double(rgb2gray(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg")));
s = [-1 0 1;-2 0 2;-1 0 1];
L = imfilter(g,[0 1 0;1 -4 1;0 1 0]);
I = list(g, sqrt(imfilter(g,s).^2+imfilter(g,s').^2), L, g-L);
T = ["Original","Gradient (Sobel)","Laplacian","Sharpened(Laplacian Enhanced)"];
for k = 1:4
    subplot(2,2,k), imshow(uint8(I(k))), title(T(k))
end
