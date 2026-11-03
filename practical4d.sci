//4(d) Histogram Equalization

a = double(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg"));
r = a(:,:,1);

for k = 0:255
    h(k+1) = sum(r == k);
end

m = round(cumsum(h) / length(r) * 255);
b = a;
b(:,:,1) = m(r+1);

subplot(1,2,1); imshow(uint8(a)); title("Original Image");
subplot(1,2,2); imshow(uint8(b)); title("Histogram Equalized Image");
