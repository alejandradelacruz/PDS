clear;
close all;
clc;

%Filtrado1
A=imread('lena_corrupt.png');
figure(1);
imshow(A);
impixelinfo;
title("Imagen con ruido");

[m,n]=size(A); 

B=fft2(A); %Aplicamos la tranformada rapida en 2D
absB=abs(B); 

figure(2); 
imshow(absB);
impixelinfo;
title("Valor absoluto de la transformada de Fourier");

%Ajuste de valores 
vmax=max(absB);
vmin=min(absB);

for i=1:m
    for j=1:n
        IS(i,j)=((absB(i,j)-vmin)/(vmax-vmin))*255;
    end 
end

figure(3);
imshow(IS);
title("Imagen con ajuste de valores");
impixelinfo;


B(124,124)=0;
B(125,125)=0;
B(125,390)=0;
B(124,389)=0;
B(389,389)=0;
B(390,390)=0;
B(389,124)=0;
B(390,125)=0;
B(1,176)=0;
B(1,338)=0;
B(176,1)=0;
B(338,1)=0;
B(512,338)=0;

B_ifft=ifft2(B); 

figure(4);
imshow(B_ifft);
impixelinfo;

IM=uint8(B_ifft);
figure(5);
imshow(IM);
title("Imagen sin ruido");
impixel;