%INTRODUCCION A LA TRANSFORMDA DE FOURIER
clear;
close all;
clc;

%METODO PARA OBTENER LA TRANSFORMADA DE FOURIER DE UN VECTOR  
a=[1 4 5 7 56 1 3 7]; %Vector
transf=fft(a); %Calculamos su transformada discreta de Fourier

%Generamos una señal coseno y generamos su transformada y mostramos su
%parte imaginaria, el valor absoluto y el angulo 

Fs=1500; %Frecuencia de muestreo
w=80; %Frecuencia 
t=0:(1/Fs):1; %Vector tiempo 
x=cos(2*pi*w*t); %Creamos nuestra señal 

figure(1);
plot(t,x);
title("Señal");
grid on;

%Obtener la tranformada rapida de Fourier 
fft_x=fft(x);
figure(2);
plot(t,fft_x);
title("fft a la señal");

%Obtenemos la parte real 
real_fft=real(fft_x); %comando real para obtener la parte real 
figure(3);
plot(real_fft);
title("Parte real de la fft");

%Obtenemos la parte imaginaria 
imaginaria_fft=imag(fft_x); %imag para obtener la parte imaginaria
figure(4); 
plot(imaginaria_fft);
title("Parte imaginaria de la fft");

%Obtenemos el valor absoluto 
abs_fft=abs(fft_x);
figure(5);
plot(abs_fft);
title("Valor absoluto de fft"),

%Obtenemos el angulo 
fase_fft=angle(fft_x);
figure(6),
plot(fase_fft),
title("Angulo de la fft"); 

