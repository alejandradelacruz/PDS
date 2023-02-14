clear;
close all;
clc;
%filtrado 1 dct2
A=imread('lena_corrupt.png');
figure(1);
imshow(A); title('imagen con ruido'); impixelinfo;
B=dct2(A);
figure(2);
imshow(B); impixelinfo;
C=uint8(B);
figure(3); imshow(C); impixelinfo;

%filtro 1
for i=1:4
    for j=300:360
        if B(i,j)~=0
            B(i,j)=0;
        end
    end
end
%filtro 2
for i=130:310
    for j=235:300
        if B(i,j)~=0
            B(i,j)=0;
        end
    end
end

%filtro 3
for i=235:260
    for j=120:300
        if B(i,j)~=0
            B(i,j)=0;
        end
    end
end
C1=uint8(B);
figure(4);
imshow(C1);

I_B=idct2(B);
figure(5);
imshow(uint8(I_B)); title('imagen filtrada'); impixelinfo;

[m,n]=size(A);

fil=round(m/2);
col=round(n/2);

B1=dct2(A);

COM=B1(1:fil,1:col);
figure(6); imshow(uint8(COM)); impixelinfo;

%filtro imagen comprimida

for i=160:256
    for j=160:256
        if COM(i,j)~=0
            COM(i,j)=0;
        end
    end
end

figure(7); imshow(uint8(COM));

I_COM=idct2(COM);
I_COM2=0.5*I_COM;
figure(8);
imshow(uint8(I_COM2)); title('imagen sin ruido comprimida'); impixelinfo;
        