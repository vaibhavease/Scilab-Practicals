a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
c = 10*log(1+double(a));

subplot(1,2,1);
imshow(a);
title("Original Image");

subplot(1,2,2);
imshow(uint8(c));
title("Log transformation img");
