//4(c) Contrast Enhancement

m = imread("C:\Users\ashut\OneDrive\Pictures\Desktop\My Files\birdy.jpg");
r = [0 1; 0.1 0.4; 0.6 1.0; 0.4 0.7; 0.1 1.0];
n = ["Original Image"; "Dark Image"; "Bright Image"; "Low Contrast Image"; "High Contrast Image"];

for i = 1:5
    subplot(3,2,i);
    imshow(imadjust(m,[0 1],r(i,:)));
    title(n(i));
end
