// bit plane slicing
p = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\bit_plane.png");
p1 = im2double(p);
figure 
gcf().figure_name = "Original Image";
imshow(p);

b1 = double(bitget(p, 1));
b2 = double(bitget(p, 2));
b3 = double(bitget(p, 3));
b4 = double(bitget(p, 4));
b5 = double(bitget(p, 5));
b6 = double(bitget(p, 6));
b7 = double(bitget(p, 7));
b8 = double(bitget(p, 8));

figure
gcf().figure_name = "LSB";
subplot(2, 2, 1);
imshow(b1);
subplot(2, 2, 2);
imshow(b2);
subplot(2, 2, 3);
imshow(b3);
subplot(2, 2, 4);
imshow(b4);

figure
gcf().figure_name = "MSB";
subplot(2, 2, 1);
imshow(b5);
subplot(2, 2, 2);
imshow(b6);
subplot(2, 2, 3);
imshow(b7);
subplot(2, 2, 4);
imshow(b8);
