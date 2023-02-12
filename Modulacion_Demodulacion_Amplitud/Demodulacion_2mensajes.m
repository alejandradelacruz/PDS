%DEMODULACION PARA DOS MENSAJES 
clear;
close all;
clc; 

Fp1 = 5000; %Frecuencia portadora 1 
Fp2 = 2000; %Frecuencia portadora 2
Fm1 = 140; %Frecuencia de mensaje 1
Fm2 = 800; %Frecuencia de mensaje 2

Ap = 1;   %Amplitud de la portadora para ambas portadoras
Am1 = 1; %Amplitud del mensaje1
Am2 = 1; %Amplitud del mensaje2

Ts = 1/(32*Fp1); %Periodo
Fs = 1/Ts; %Frecuencia de muestreo 
t=linspace(0,1,Fs); 

senal_port1=Ap*sin(2*pi*Fp1*t);
senal_port2=Ap*sin(2*pi*Fp2*t);

%Señal del mensaje 
senal_men1=Am1*sin(2*pi*Fm1*t);
senal_men2=Am2*sin(2*pi*Fm2*t);

AM1=(senal_men1+Ap).*senal_port1;
AM2=(senal_men2+Ap).*senal_port2;

AMT=AM1+AM2;

figure(1);
subplot (2,2,1); plot(senal_port1); title("SEÑAL PORTADORA 1");
subplot (2,2,2); plot(senal_port2); title("SEÑAL PORTADORA 2");
subplot (2,2,3); plot(senal_men1); title("SEÑAL MENSAJE 1");
subplot (2,2,4); plot(senal_men2); title("SEÑAL MENSAJE 2");

figure(2);
subplot(3,1,1); plot(AM1); title("SEÑAL MODULADA 1");
subplot(3,1,2); plot(AM2); title("SEÑAL MODULADA 2");
subplot(3,1,3); plot(AMT); title("SEÑAL MODULADA TOTAL");



%Aplicamos la transformada inversa de fourier
AM1fft=fft(AM1);
AM2fft=fft(AM2);
AMTfft=fft(AMT);

figure(3);
subplot(3,1,1); plot(abs(AM1fft)); title("FFT DE AM1");
subplot(3,1,2); plot(abs(AM2fft)); title("FFT DE AM2");
subplot(3,1,3); plot(abs(AMTfft)); title("FFT DE AMT");

%Desprendimiento de la señal de mensaje 
fil = senal_port1.*AMT;
fil2 = senal_port2.*AMT;
figure(4);
subplot(2,1,1); plot(fil); title("Desprendimiento del mensaje 1");
subplot(2,1,2); plot(fil2); title("Desprendimiento del mensaje 2");

%Fourier
f1=fft(fil);
f2=fft(fil2);
figure(5);
subplot(3,1,1); plot(abs(AMTfft)); title("FFT de AMT");
subplot(3,1,2); plot(abs(f1)); title("Desprendimiento del mensaje 1 en frecuencia");
subplot(3,1,3); plot(abs(f2)); title("Desprendimiento del mensaje 2 en frecuencia");

f1(150:length(f1)-150)=0;
f2(830:length(f2)-830)=0;
f1(1)=0;
f2(1)=0;

figure(6);
subplot(2,1,1); plot(abs(f1)); title("Filtro 1");
subplot(2,1,2); plot(abs(f2)); title("Filtro 2");

