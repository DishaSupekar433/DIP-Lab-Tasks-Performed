/*p = imread('C:\Users\DISHA\OneDrive\Desktop\DIP\Images\car.jpg');
subplot(1, 2, 1);
imshow(p);
title('Original Image');
c = 1;
q = double(p) / 255;
f = c * log10(1 + q);
subplot(1, 2, 2);
imshow(f);
title('Log Transform');*/
i1 = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\point.jpg");
subplot(2,2,1)
imshow(i1);
title('Original')
i2=im2double(i1);

[row,col]=size(i2);
L1=1;
L2=5.0;
L3=0.5;
C=1;
for i=1:row
    for  j=1:col
        q1(i,j)=L1*log10(1+i2(i,j));
        q2(i,j)=L2*log10(1+i2(i,j));
        q3(i,j)=L3*log10(1+i2(i,j));
    end
end
subplot(2,2,2)
imshow(q1);
title('Log Transform L1=1')

subplot(2,2,3)
imshow(q2);
title('Log Transform L2=5.0')

subplot(2,2,4)
imshow(q3);
title('Log Transform L3=0.5')

