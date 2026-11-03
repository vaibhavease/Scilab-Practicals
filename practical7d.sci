//7 (d) : Closing

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("ellipse", 50, 50);

cl = imerode(imdilate(a, se), se);

subplot(1,2,1); imshow(a); title("Original");
subplot(1,2,2); imshow(cl); title("Closing");
