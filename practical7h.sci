//7 (h) : Bottom-Hat

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("rect",55,55);
cl = imdilate(imdilate(a,se),se);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(cl); title("Closing Image");
subplot(2,2,3); imshow(cl-a); title("Bottom-Hat Image");
