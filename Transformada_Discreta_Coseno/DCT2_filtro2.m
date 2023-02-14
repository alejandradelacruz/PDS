clear;
close all;
clc;
%filtrado 2 dct2
A=imread('lena_horiz_lines.png');
figure(1);
imshow(A); title('imagen con ruido'); impixelinfo;

B=dct2(A);
figure(2);
imshow(B); impixelinfo;
C=uint8(B);
figure(3); imshow(C); impixelinfo;

for i=90:512
    for j=1:60
        if B(i,j)~=0
            B(i,j)=0;
        end
    end
end
figure(4);
imshow(uint8(B)); impixelinfo;

I_B=idct2(B);
figure(5);
imshow(uint8(I_B)); impixelinfo;

%---compresi�n a la mitad---%


[m,n]=size(A);

fil=round(m/2);
col=round(n/2);

B1=dct2(A);

COM=B1(1:fil,1:col);
figure(6); imshow(uint8(COM)); impixelinfo;

filtro

for i=85:256
    for j=1:40
        if COM(i,j)~=0
            COM(i,j)=0;
        end
    end
end
I_COM=idct2(COM);
I_COM2=0.5*I_COM;

figure(7);
imshow(uint8(I_COM2)); title("imagen comprimida y filtrada"); impixelinfo;