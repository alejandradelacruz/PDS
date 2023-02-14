clear;
close all;
clc;
Fs=150;
w=10;
t=0:(1/Fs):1;
y=sin(2*pi*w*t);
figure(1);
plot(y); title("se�al original");

y(30)=y(30)+0.5;
y(129)=y(129)+0.5;
figure(2); plot(t,y); title("se�al con ruido");

[CA,CD]=dwt(y, 'db5');
figure(3); plot(CA); title("coeficiente de aproximaci�n");
figure(4); plot(CD); title("coeficiente de aproximaci�n");

for i=1:length(CD)
    if CD(i)>0.1
        CD(i)=0.1;
    end
    if CD(i)<-0.1
        CD(i)=-0.1;
    end
end
%reconstrucci�n

SRE=idwt(CA,CD,'db5');
figure(5); plot(SRE); title("se�al reconstruida");










