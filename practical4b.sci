//4(b) Gamma / Power Law

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
c = double(a).^1;

subplot(1,2,1);
imshow(a);
title("Original Image");

subplot(1,2,2);
imshow(uint8(c));
title("Power Law img");
