clear;
close all;
clc;

A=imread('lena_horiz_lines.png');
figure(1); imshow(A); title("imagen con ruido");

[CA, CH,CV,CD]=dwt2(A,'coif3');
figure(2); imshow(uint8(CA*0.5)); impixelinfo; title("coeficiente de aproximación");
figure(3); imshow(uint8(CH)); impixelinfo; title("coeficiente  Horizontal");
figure(4); imshow(uint8(CV)); impixelinfo; title("coeficiente vertical");
figure(5); imshow(uint8(CD)); impixelinfo; title("coeficiente diagonal");

B=dct2(CH);
figure(6); imshow(uint8(B)); impixelinfo; title("dct2");

for i=1:264
    for j=1:264
        B(i,j)=0;
    end
end

CHF=idct2(B);
figure(7); imshow(uint8(CHF)); impixelinfo; 



[CA2, CH2,CV2,CD2]=dwt2(CA,'coif3');
figure(8); imshow(uint8(CA2*0.5)); impixelinfo; title("coeficiente de aproximación");
figure(9); imshow(uint8(CH2)); impixelinfo; title("coeficiente  Horizontal");
figure(10); imshow(uint8(CV2)); impixelinfo; title("coeficiente vertical");
figure(11); imshow(uint8(CD2)); impixelinfo; title("coeficiente diagonal");

B1=dct2(CH2);
figure(12); imshow(uint8(B1)); impixelinfo; title("dct2");

for i=1:140
    for j=1:140
        B1(i,j)=0;
    end
end

CHF2=idct2(B1);
figure(13); imshow(uint8(CHF2)); impixelinfo; 



[CA3, CH3,CV3,CD3]=dwt2(CA2,'coif3');
figure(14); imshow(uint8(CA3*0.5)); impixelinfo; title("coeficiente de aproximación");
figure(15); imshow(uint8(CH3)); impixelinfo; title("coeficiente  Horizontal");
figure(16); imshow(uint8(CV3)); impixelinfo; title("coeficiente vertical");
figure(17); imshow(uint8(CD3)); impixelinfo; title("coeficiente diagonal");

B3=dct2(CH3);
figure(18); imshow(uint8(B3)); impixelinfo; title("dct2");

for i=1:77
    for j=1:77
        B3(i,j)=0;
    end
end

CHF3=idct2(B3);
figure(19); imshow(uint8(CHF3)); impixelinfo; 


%inversa

sr3=idwt2(CA3,CHF3,CV3,CD3, 'coif3');

sr2=idwt2(sr3,CHF2,CV2,CD2,'coif3');

sr=idwt2(sr2,CHF,CV ,CD ,'coif3');

figure(20); imshow(uint8(sr)); impixelinfo; title("señal reconstruida");









