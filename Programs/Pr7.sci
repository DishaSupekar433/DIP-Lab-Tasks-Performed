figure 
gcf().figure_name = "Sharpening Filter";

p2=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\coins.jpg");
p= rgb2gray(p2);
p1=im2double(p);
subplot(1,3,1);
title('Original Image');
imshow(p1);

lap_mask=[0 -1 0; -1 4 -1; 0 -1 0 ];
q=imfilter(p1,lap_mask);
s=p1+q;
subplot(1,3,2);
title('Laplacian Mask');
imshow(q);

subplot(1,3,3);
title('Sharpened Laplacian Image');
imshow(s);

