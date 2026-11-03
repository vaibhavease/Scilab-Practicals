//7 (a) :  Erosion

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("rect",5,5);
subplot(1,2,1);
imshow(a);
title("Original Image");
subplot(1,2,2);
imshow(imerode(a,se));
title("Eroded Image")
