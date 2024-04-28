p1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\dark.png");
p=rgb2gray(p1);
p=imresize(p,[256 256]);
figure 
gcf().figure_name = "Dark Image";
subplot(2,2,1)
imshow(p);
subplot(2,2,2)
k=256;
[count cells]=imhist(p);
count=count/k*k;
x=[0:1:(k-1)];
plot2d3(x,[count]);
z=imhistequal(p);
subplot(2,2,3);
imshow(z);
subplot(2,2,4)
[count cells]=imhist(z);
q=256;
count=count/q*q;
x=[0:1:(k-1)];
plot2d3(x,[count]);

figure 
gcf().figure_name = "Bright Image";
p1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\swan.png");
p=rgb2gray(p1);
p=imresize(p,[256 256]);
subplot(2,2,1)
imshow(p);
subplot(2,2,2)
k=256;
[count cells]=imhist(p);
count=count/k*k;
x=[0:1:(k-1)];
plot2d3(x,[count]);
z=imhistequal(p);
subplot(2,2,3)
imshow(z);
subplot(2,2,4)
[count cells]=imhist(z);
q=256;
count=count/q*q;
x=[0:1:(k-1)];
plot2d3(x,[count]);

figure 
gcf().figure_name = "Low Contrast Image";
p1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\hill.png");
p=rgb2gray(p1);
p=imresize(p,[256 256]);
subplot(2,2,1)
imshow(p);
subplot(2,2,2)
k=256;
[count cells]=imhist(p);
count=count/k*k;
x=[0:1:(k-1)];
plot2d3(x,[count]);
z=imhistequal(p);
subplot(2,2,3)
imshow(z);
subplot(2,2,4)
[count cells]=imhist(z);
q=256;
count=count/q*q;
x=[0:1:(k-1)];
plot2d3(x,[count]);

