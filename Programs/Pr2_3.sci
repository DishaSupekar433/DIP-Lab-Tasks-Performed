image1 = imread("C:\Users\DISHA\Downloads\testpat1.png");
subplot(3, 2, 1);
imshow(image1);
title('Image 1');

image2 = imread("C:\Users\DISHA\Downloads\circles.png");
subplot(3, 2, 2);
imshow(image2);
title('Image 2');

and_ = image1 & image2;
subplot(3, 2, 3);
imshow(and_);
title('Logical And');

or_ = image1 | image2;
subplot(3, 2, 4);
imshow(or_);
title('Logical Or');

not1_ = ~image1;
subplot(3, 2, 5);
imshow(not1_);
title('Logical Not');

not2_ = ~image2;
subplot(3, 2, 6);
imshow(not2_);
title('Logical Not');
