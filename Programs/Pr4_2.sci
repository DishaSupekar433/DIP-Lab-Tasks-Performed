//gray level slicing
p = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\lena.png");
subplot(1, 3, 1);
imshow(p);
title("Original Image");
L = max(max(p));
[r, c] = size(p);
r1 = 120;
r2 = 150;
for i = 1 : r
    for j = 1 : c
        if (p(i, j)>=r1 & p(i, j)<= r2)
            z1(i, j) = L-1;
        else 
            z1(i, j) = 0;  
        end
    end
end
subplot(1, 3, 2);
imshow(z1);
title("Without Background");
for i = 1 : r
    for j = 1 : c
        if p(i, j)>=r1 & p(i, j)<= r2
            z2(i, j) = L-1;
        else 
            z2(i, j) = p(i, j);  
        end
    end
end
subplot(1, 3, 3);
imshow(z2);
title("With Background");

