figure 
gcf().figure_name = "Blurring Lowpass Filters";

im2=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\coins.jpg");
im1= rgb2gray(im2);
im=im2double(im1);
subplot(1,3,1);
imshow(im);
title("Original Image");

avg_mask=(ones(3,3)/9);
q1=conv2(im,avg_mask);
subplot(1,3,2);
imshow(q1);
title('Average Filter');

weighted_avg_mask=[1 2 1; 2 4 2; 1 2 1]/16;
q2=imfilter(im,weighted_avg_mask);
subplot(1,3,3);
imshow(q2);
title('Weighted Average Filter');
