im1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\jupiter.png");
im2=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\mercury.png");
im3=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\saturn.png");
im4=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\neptune.png");
subplot(2,2,1);
imshow(im1);
title('Jupiter');
subplot(2,2,2);
imshow(im2);
title('Mercury');
subplot(2,2,3);
imshow(im3);
title('Saturn');
subplot(2,2,4);
imshow(im4);
title('Neptune');
