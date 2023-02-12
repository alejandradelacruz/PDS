%MODULACION DE AMPLITUD
%La modulacion en amplitud (AM) funciona mediante la variacion de la
%amplitud de la señal transmitida en relacion con informaci´'on que se
%envía. 

clear;
close all;
clc; 

%Portadora(frecuencias alta)
%mensaje(?espefica)

Fp=1500; %Frecuencia portadora(mas alta)
Fm = 180; %Frecuencia del mensaje(mas baja)
Ap = 1; %Amplitud portadora
Am = 1; %Amplitud mensaje 
Ts = 1/(32*Fp); %Periodo
Fs = 1/Ts; %Frecuencia de muestreo 
t=linspace(0,1,Fs); %Vector espaciado linealmente 

%Creamos cada una de las señales
Pt=Ap*sin(2*pi*Fp*t);
Mt=Am*sin(2*pi*Fm*t);

%Creamos la modulacion 
AM = (Mt+Ap).*Pt;

figure(1);
subplot (3,1,1), plot(Pt); title("SEÑAL PORTADORA");
subplot (3,1,2), plot(Mt); title("MENSAJE A TRANSMITIR");
subplot (3,1,3), plot(AM); title("MODULACION AM");


AMT = fft(AM);
figure(2);
plot(abs(AMT));