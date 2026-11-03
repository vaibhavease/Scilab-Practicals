//6 Part B: Sobel & Canny

cd("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files");
g = rgb2gray(imread("birdy.jpg"));
subplot(1,3,1); imshow(g); title("Original");
subplot(1,3,2); imshow(edge(g,"sobel")); title("Sobel");
subplot(1,3,3); imshow(edge(g,"canny")); title("Canny");
