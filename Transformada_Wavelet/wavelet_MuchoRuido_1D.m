clear;
close all;
clc;

Fs=1000;
t=1:(1/Fs):20;
y=sin(t);
figure(1); plot(y); title("señal original");

v=rand(1,length(y));

figure(2); plot(v);

k=y+(v./10);

figure(3); plot(k); title("señal con ruido");

[CA ,CD]=dwt(k, 'db9');
figure(4); plot(CA); title("coeficiente de aproximación");
figure(5); plot(CD); title("coeficiente de detalle");
CD(1:length(CD))=0;

[CA2 ,CD2]=dwt(CA, 'db9');
figure(6); plot(CA2); title("coeficiente de aproximación");
figure(7); plot(CD2); title("coeficiente de detalle");
CD2(1:length(CD2))=0;

[CA3 ,CD3]=dwt(CA2, 'db9');
figure(8); plot(CA3); title("coeficiente de aproximación");
figure(9); plot(CD3); title("coeficiente de detalle");
CD3(1:length(CD3))=0;

[CA4 ,CD4]=dwt(CA3, 'db9');
figure(10); plot(CA4); title("coeficiente de aproximación");
figure(11); plot(CD4); title("coeficiente de detalle");
CD4(1:length(CD4))=0;

[CA5 ,CD5]=dwt(CA4, 'db9');
figure(12); plot(CA5); title("coeficiente de aproximación");
figure(13); plot(CD5); title("coeficiente de detalle");
CD5(1:length(CD5))=0;

[CA6 ,CD6]=dwt(CA5, 'db9');
figure(14); plot(CA6); title("coeficiente de aproximación");
figure(15); plot(CD6); title("coeficiente de detalle");
CD6(1:length(CD6))=0;

[CA7 ,CD7]=dwt(CA6, 'db9');
figure(16); plot(CA7); title("coeficiente de aproximación");
figure(17); plot(CD7); title("coeficiente de detalle");
CD7(1:length(CD7))=0;


%inversa
sr7=idwt(CA7,CD7,'db9');
CD6(length(CD6)+1)=0;
sr6=idwt(sr7,CD6, 'db9');

CD5(length(CD5)+1:length(sr6))=0;
sr5=idwt(sr6,CD5,'db9');

CD4(length(CD4)+1:length(sr5))=0;
sr4=idwt(sr5,CD4,'db9');

CD3(length(CD3)+1:length(sr4))=0;
sr3=idwt(sr4,CD3,'db9');

CD2(length(CD2)+1:length(sr3))=0;
sr2=idwt(sr3,CD2,'db9');

CD(length(CD)+1:length(sr2))=0;
sr=idwt(sr2,CD,'db9');

figure(18); plot(sr); title("señal reconstruida");





