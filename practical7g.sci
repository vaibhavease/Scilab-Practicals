//7 (g) : Top-Hat

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("ellipse",10,10);
o = imdilate(imerode(a,se),se);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(o); title("Opening Image");
subplot(2,2,3); imshow(a-o); title("Top-Hat Image");
