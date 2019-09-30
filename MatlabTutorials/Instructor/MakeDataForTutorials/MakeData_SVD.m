clear
close all
clc

X=imread('../../Data/Snowboarder.tiff');
Red = double(X(:,:,1));
Green = double(X(:,:,2));
Blue = double(X(:,:,3));

A = Red;
save('../../Data/SVD_Example.mat','A')

%%
clear
X=imread('../../Data/Snowboarder.tiff');
A_red = double(X(:,:,1));
A_green = double(X(:,:,2));
A_blue = double(X(:,:,3));


A_rgb(:,:,1) = A_red;
A_rgb(:,:,2) = A_green;
A_rgb(:,:,3) = A_blue;
A_rgb = uint8(A_rgb); 

figure
imagesc(A_rgb)

save('../../Data/SVD_Excercise.mat','A_red','A_green','A_blue')
