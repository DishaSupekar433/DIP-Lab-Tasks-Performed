p = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\car.jpg");
q = imcomplement(p);
subplot(1, 3, 1);
imshow(p);
title("Original Image")
subplot(1, 3, 2);
imshow(q);
title("Digital Negative (with fuction)");

[r,c] = size(p);
//L = input("Enter value of L: ");
L=256;
for i=1:r
    for j=1:c
        q(i,j)=(L-1)-p(i,j);
    end
end
subplot(1, 3, 3);
imshow(q);
title("Digital Negative (without fuction)");
