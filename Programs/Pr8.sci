figure 
gcf().figure_name = "Sharpening Spatial Operators";

img1=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\coins.jpg");
img= rgb2gray(img1);
subplot(2,2,1);
title("Original Image");
imshow(img);
subplot(2,2,2);
title("Prewitt")
fs1=edge(img,'prewitt');
imshow(fs1);
subplot(2,2,3);
title("Sobel");
fs2=fspecial('sobel');
ft1=imfilter(img,fs2);
imshow(ft1);
subplot(2,2,4);
title("Canny");
ft2=edge(img,'canny',[0.02 0.6]);
imshow(ft2);


figure 
gcf().figure_name = "Sharpening Spatial Operator";

subplot(2,2,1)
title("Original Image");
img=imread("C:\Users\DISHA\OneDrive\Desktop\DIP\Images\testpat1.png");
imshow(img);
q=double(img);
[r c]=size(q);
w1=[-1 0 ; 0 1];
w2=[0 -1 ; 1 0];
subplot(2,2,2)
title("Robert-x")
for x=1 : r-1
    for y=1 : c-1
        a1(x,y)=q(x,y)*w1(1)+q(x+1,y)*w1(2)+q(x,y+1)*w1(3)+q(x+1,y+1)*w1(4);
        a2(x,y)=q(x,y)*w2(1)+q(x+1,y)*w2(2)+q(x,y+1)*w2(3)+q(x+1,y+1)*w2(4);
    end
end
a3=a1+a2;
imshow(uint8(a1));
subplot(2,2,3)
title("Robert-y");
imshow(uint8(a2));
subplot(2,2,4)
title("Robert Filter Output")
imshow(uint8(a3));
