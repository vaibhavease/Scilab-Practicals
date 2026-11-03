//7 (f) : Morphological Gradient

a = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
se = imcreatese("rect",30,30);
d = imdilate(a,se); e = imerode(a,se);
subplot(2,2,1); imshow(a); title("Original Image");
subplot(2,2,2); imshow(d); title("Dilated Image");
subplot(2,2,3); imshow(e); title("Eroded Image");
subplot(2,2,4); imshow(d-e); title("Morphological Gradient Image");
