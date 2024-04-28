//p = imread("C:\Users\DISHA\AppData\Roaming\Scilab\scilab-2024.0.0\atoms\x64\IPCV\4.5.0\images\balloons_gray.png");
/*p = imread('C:\Users\DISHA\OneDrive\Desktop\DIP\Images\flower.png');
q1 = imcomplement(p);
subplot(1, 3, 1);
imshow(p);
title('Original Image');
L = 256;
Y1 = 0.4;
C = 1;
p_double = double(p); 
q1 = C * (p_double .^ Y1);
subplot(1, 3, 2);
imshow(q1);
title('Power Law Y=0.4');
Y2 = 1.1;
q2 = C * (p_double .^ Y2);
subplot(1, 3, 3);
imshow(q2);
title('Power Law Y=1.1');*/
p = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\strips.jpg");
subplot(2,2,1)
imshow(p);
title("Original Image")
q=im2double(p);
[row,col]=size(q);
Y1=1;
Y2=1.9;
Y3=0.2;
C=1;
for i=1:row
    for  j=1:col
        s1(i,j)=C*(q(i,j))^Y1;
        s2(i,j)=C*(q(i,j))^Y2;
        s3(i,j)=C*(q(i,j))^Y3;
    end
end
subplot(2,2,2)
imshow(s1);
title("Power Law Y1=1")
subplot(2,2,3)
imshow(s2);
title("Power Law Y2=1.9")
subplot(2,2,4)
imshow(s3);
title("Power Law Y3=0.2")
