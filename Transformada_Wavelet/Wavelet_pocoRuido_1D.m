clear;
close all;
clc;
Fs=150;
w=10;
t=0:(1/Fs):1;
y=sin(2*pi*w*t);
figure(1);
plot(y); title("señal original");

y(30)=y(30)+0.5;
y(129)=y(129)+0.5;
figure(2); plot(t,y); title("señal con ruido");

[CA,CD]=dwt(y, 'db5');
figure(3); plot(CA); title("coeficiente de aproximación");
figure(4); plot(CD); title("coeficiente de aproximación");

for i=1:length(CD)
    if CD(i)>0.1
        CD(i)=0.1;
    end
    if CD(i)<-0.1
        CD(i)=-0.1;
    end
end
%reconstrucción

SRE=idwt(CA,CD,'db5');
figure(5); plot(SRE); title("señal reconstruida");










