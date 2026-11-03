//7 (e) : Boundary

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
e = imerode(a,imcreatese("ellipse",10,10));
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(e); title("Eroded Image");
subplot(2,2,3); imshow(a-e); title("Boundary of Image");
