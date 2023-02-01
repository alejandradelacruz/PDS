clear;
close all;
clc; 

%SEÑAL ANALOGICA
%Frecuencia de muestreo
Fs = 150;
t=0:(1/Fs):1;
%Frecuencia fundamental
f=10; 
y=sin(2*pi*f*t);
%Agregando un ruido a la señal
y(30)=y(30)+0.5;
y(120)=y(120)+0.5;
figure(1)
plot(t,y);
title("Señal Analogica");
xlabel("t");
ylabel("Y(t");
grid on; 

