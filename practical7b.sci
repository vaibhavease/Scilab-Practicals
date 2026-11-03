//7 (b) :  Dilation

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("ellipse", 10, 10);
subplot(1,2,1);
imshow(a); title("Original");
subplot(1,2,2);
imshow(imdilate(a, se)); title("Dilated");
