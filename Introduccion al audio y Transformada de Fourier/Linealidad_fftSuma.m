%LINEALIDAD DE LA TRANSFORMADA RAPIDA DE FOURIER
clear;
close all,
clc; 

%Para comprobar que se cumpla 
Fs = 1500; %Frecuencia de muestreo 
t=0:(1/Fs):1;

w=50; %1frecuencia
w1=100; %2frecuencia
w2=130; %3frecuencia

%Creamos las tres señales
x=cos(2*pi*w*t);
x1=cos(2*pi*w1*t);
x2=cos(2*pi+w2*t); 

%Sumamos en tiempo
suma=x+x1+x2; 

%Calculamos la transformada de fourier
fft_suma=fft(suma); 

%Calculamos el valor absoluto
abs_fftSuma=abs(fft_suma); 

%Graficamos
figure(1);
plot(t,abs_fftSuma);
title("Suma de las tres transformadas"); 

%Comprobar la linealidad por separado 
%Calculamos las transformadas de fourier
xfft=fft(x); 
x1fft=fft(x1);
x2fft=fft(x2);

%Calculamos sus valores absolutas 
xabs=abs(xfft);
x1abs=abs(x1fft);
x2abs=abs(x2fft);

%Calculamos la suma 
suma_abs=xabs+x1abs+x2abs; 

figure(2);
plot(t,suma_abs);
title("Suma de los valores absolutos"); 

