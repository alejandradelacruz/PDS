clear;
close all;
clc;
 
load Audio_Ruido;
Fs=44100;

sound(grabacion,Fs);
%Ruta="RUTA";
%audiowrite(Ruta,grabacion,Fs);

%Graficamos el audio
figure(1);
plot(grabacion);
grid on;

%Calculamos la transformada de fourier
Tf=fft(grabacion);
figure(2);
plot(abs(Tf));

%Aplicamos filtro para eliminar las frecuencias altas 
Tf(7000:length(Tf)-7000)=0;
figure(3);
plot(abs(Tf)); 

%Calculamos la transformada inversa de fourier
Audio_jw=ifft(Tf); 

%Calculamos la parte real
Audio_Sinruido=real(Audio_jw); 

sound(Audio_Sinruido,Fs);

figure(4);
plot(Audio_Sinruido);
