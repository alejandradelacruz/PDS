clear;
close all;
clc;

%fft2
A=imread('lena.bmp');
figure(1);
imshow(A);
impixelinfo;

%Pedir el tamaño de una imagen
[m,n,K]=size(A);

%Pasar a escala de grises
B=rgb2gray(A);
figure(2);
imshow(B);
impixelinfo;

%Aplicar la transformada rapida de fourier
C=fft2(B);
absC=abs(C); %valor absoluto
figure(3);
imshow(absC);
impixelinfo;

%Ajuste de la imagen 
%Ecuacion 
vmax=max(absC);
vmin=min(absC);

for i=1:m
    for j=1:n
        IS(i,j)=((absC(i,j)-vmin)/(vmax-vmin))*255;
    end 
end

figure(4);
imshow(IS);
title("Imagen con ajuste de valores");
impixelinfo;



