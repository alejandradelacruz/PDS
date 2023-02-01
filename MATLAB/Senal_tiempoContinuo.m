clear;
close all;
clc;
%SEÑAL EN TIEMPO CONTINUO: Es una señal que es continua en el tiempo
%creamos un vector 
t=0:0.01:30;

%Multiplicamos punto a punto con una señal sinoidal
x=exp(-0.15*t).*sin(2*t);

%graficar
figure(1);
plot(t,x);

title("señal en tiempo continuo");
xlabel("tiempo(s)");
ylabel("X(t)");
grid on; 
