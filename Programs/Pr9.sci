clear all;
clc,
a=zeros(10,10);
a(4:7,4:7)=1;
disp('Original Image = ');
disp(a);

se1=imcreatese('rect',3,3); 
disp('Structuring Element 1 = ');
disp(se1);

se2=imcreatese('ellipse',9,9); 
disp('Structuring Element 2 = ');
disp(se2);

e=imerode(a,se1);
disp('Erosion Result = ');
disp(e);

d=imdilate(a,se1);
disp('Dilation Result = ');
disp(d);

o=imopen(a,se1);
disp('Opening Result = ');
disp(o);

c=imclose(a,se1);
disp('Closing Result = ');
disp(c);

figure 
gcf().figure_name = "Structuring Element - Rectangle";
im1 = imread("C:\Users\DISHA\AppData\Roaming\Scilab\scilab-2024.0.0\atoms\x64\IPCV\4.5.0\images\morpex.png");
subplot(3, 2, 1.5);
imshow(im1);
title("Original Image");

er1=imerode(im1,se1);
subplot(3, 2, 3);
imshow(er1);
title("Erosion");

di1=imdilate(im1,se1);
subplot(3, 2, 4);
imshow(di1);
title("Dilation");

op1=imopen(im1,se1);
subplot(3, 2, 5);
imshow(op1);
title("Opening");

cl1=imclose(im1,se1);
subplot(3, 2, 6);
imshow(cl1);
title("Closing");

figure 
gcf().figure_name = "Structuring Element - Ellipse";
im2 = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\circles.png");
subplot(3, 2, 1.5);
imshow(im2);
title("Original Image");

er2=imerode(im2,se2);
subplot(3, 2, 3);
imshow(er2);
title("Erosion");

di2=imdilate(im2,se2);
subplot(3, 2, 4);
imshow(di2);
title("Dilation");

op2=imopen(im2,se2);
subplot(3, 2, 5);
imshow(op2);
title("Opening");

cl2=imclose(im2,se2);
subplot(3, 2, 6);
imshow(cl2);
title("Closing");

figure
gcf().figure_name = "Boundaries";
b1=di2-im2;
subplot(2, 2, 1);
imshow(b1);
title("Dilation-Original");

b2=im2-er2;
subplot(2, 2, 2);
imshow(b2);
title("Original-Erosion");

b3=di2-er2;
subplot(2, 2, 3.5);
imshow(b3);
title("Dilation-Erosion");
