clc;
clear all;
close all;

%Abrir imagen
img=imread('j.jpg');

figure()
imshow(img)
title('Original')

%Suma
imgS=img+20;
figure()
imshow(imgS)
title('+20')

%Resta
imgR=imgS-100;
figure()
imshow(imgR)
title('-100')

%Multiplicacion
imgM=imgR*5;
figure()
imshow(imgM)
title('*5')

%División
imgD=imgM*.3;
figure()
imshow(imgD)
title('*0.3')