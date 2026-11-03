//8(b) Edge & Region Segmentation


g=double(rgb2gray(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg")));
Gx = imfilter(g, [-1 0 1; -2 0 2; -1 0 1]);
Gy = imfilter(g, [-1 -2 -1; 0 0 0; 1 2 1]);
e = sqrt(Gx.^2 + Gy.^2);

subplot(2,2,1); imshow(uint8(g)); title('Original');
subplot(2,2,2); imshow(e > 0.3*max(e)); title('Edge');
subplot(2,2,3); imshow(g > mean(g)); title('Region');
