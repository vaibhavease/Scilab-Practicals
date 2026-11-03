//8(a) Corner, Blob, HoG, Haar

g = double(rgb2gray(imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg")));
[m, n] = size(g);

Ix = imfilter(g, [-1 0 1; -2 0 2; -1 0 1]);
Iy = imfilter(g, [-1 -2 -1; 0 0 0; 1 2 1]);
gs = fspecial('gaussian', [5 5], 1);
A = imfilter(Ix.^2, gs); B = imfilter(Iy.^2, gs); C = imfilter(Ix.*Iy, gs);
R = (A.B - C.^2) - 0.04(A + B).^2;
bl = imfilter(g, [0 0 -1 0 0;0 -1 -2 -1 0;-1 -2 16 -2 -1;0 -1 -2 -1 0;0 0 -1 0 0]);

dr = modulo(atan(Iy./(Ix + %eps))*180/%pi, 180); h = zeros(1,9);
for b=1:9, h(b) = sum(sqrt(Ix.^2+Iy.^2)((dr >= (b-1)*20) & (dr < b*20))); end
hr = zeros(m, n-5);
for t=1:6, hr = hr + [1 1 1 -1 -1 -1](t) * g(:, t:n-6+t); end

subplot(2,3,1); imshow(uint8(g)); title('Original');
subplot(2,3,2); imshow(uint8((R > 0.01*max(R))*255)); title('Harris');
subplot(2,3,3); imshow(uint8((abs(bl) > 0.5*max(abs(bl)))*255)); title('Blob');
subplot(2,3,4); bar(h); title('HoG');
subplot(2,3,5); imshow(uint8(255*abs(hr)/(max(abs(hr)) + %eps))); title('Haar');
