im1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\butterfly.png");
im=rgb2gray(im1);
imshow(im);
size_ = size(im);
disp("Size of the image is: ");
disp(size_);
sum_ = sum(im);
disp("Sum of the image is: ");
disp(sum_);
min_ = min(im);
disp("Min of the image is: ");
disp(min_);
max_ = max(im);
disp("Max of the image is: ");
disp(max_);
mean_ = mean2(im);
disp("Mean of the image is: ");
disp(mean_);
std_ = std2(im);
disp("Standard Deviation of the image is: ");
disp(std_);



