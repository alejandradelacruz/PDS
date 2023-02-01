clear;
close all;
clc; 

%SEÑAL PERIODICA 
%Frecuencia 
Wo=10*pi;
t=0:0.001:1;

%SEÑAL DE DIENTE DE SIERRA
y=sawtooth(Wo*t,0.5);

figure(1);
plot(t,y);
title("Señal Periodica");
xlabel("tiempo");
ylabel("Y(t)");
grid on; 
