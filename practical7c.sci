//7 (c) :  Opening

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("rect", 50, 50);

op = imdilate(imerode(a, se), se);

subplot(1,2,1); imshow(a); title("Original");
subplot(1,2,2); imshow(op); title("Opening");
