clear;
close all;
clc;
load 'Audio_Ruido.mat';
sound(mi_grabacion,44100);

figure(1); plot(mi_grabacion);


[CA, CD]=dwt(mi_grabacion, 'sym8');
figure(4); plot(CA); title("coeficiente de aproximación");
figure(5); plot(CD); title("coeficiente de detalle");
CD(1:length(CD))=0;


[CA2 ,CD2]=dwt(CA, 'sym8');
figure(6); plot(CA2); title("coeficiente de aproximación");
figure(7); plot(CD2); title("coeficiente de detalle");
CD2(1:length(CD2))=0;


[CA3 ,CD3]=dwt(CA2, 'sym8');
figure(8); plot(CA3); title("coeficiente de aproximación");
figure(9); plot(CD3); title("coeficiente de detalle");
CD3(1:length(CD3))=0;

[CA4 ,CD4]=dwt(CA3, 'sym8');
figure(10); plot(CA4); title("coeficiente de aproximación");
figure(11); plot(CD4); title("coeficiente de detalle");
CD4(1:length(CD4))=0;

%sound(CA4,2800);

%inversa

sr4=idwt(CA4,CD4,'sym8');

CD3(length(CD3)+1)=0;
sr3=idwt(sr4,CD3,'sym8');

CD2(length(CD2)+1:length(sr3))=0;
sr2=idwt(sr3,CD2,'sym8');

CD(length(CD)+1:length(sr2))=0;
sr=idwt(sr2,CD,'sym8');

figure(12); plot(sr); title("señal reconstruida");

sound(sr,44100);
