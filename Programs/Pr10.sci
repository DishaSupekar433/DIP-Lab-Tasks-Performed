//LPF in Frequency Domain - Smoothing Effect
figure 
gcf().figure_name = "LowPass Filter in Frequency Domain";

im = imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\coins.jpg");
p = rgb2gray(im);
p1 = im2double(p);
p2 = fft2(p1);
subplot(2,2,1);
title('Original Image');
imshow(p);

ideal = mkfftfilter(p,'binary',0.3);
butterworth = mkfftfilter(p,'butterworth1',0.2);
gaussian = mkfftfilter(p,'gauss',0.4);

p3 = p2.*fftshift(ideal);
p4 = real(ifft(p3));
subplot(2,2,2);
title('Ideal LowPass Filter');
imshow(p4);

p5 = p2.*fftshift(butterworth);
p6 = real(ifft(p5));
subplot(2,2,3);
title('Butterworth Filter');
imshow(p6);

p7 = p2.*fftshift(gaussian);
p8 = real(ifft(p7));
subplot(2,2,4);
title('Gaussian Filter');
imshow(p8);
