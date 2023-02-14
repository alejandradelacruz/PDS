%PRACTICA 
%Comprimir un audio con la dct 
clear;
close all;
clc;

%GRABAR AUDIO
OBJ=audiorecorder(8000,16,1);
get(OBJ);
disp("grabar");
recordblocking(OBJ,5);
disp("Grabacion Finalizada");
mi_grabacion=getaudiodata(OBJ);
plot(mi_grabacion);

pause(2);
play(OBJ);

save('Nombre', 'mi_grabacion');

%COMPRIMIR AUDIO 
load Nombre.mat;
Fs=8000;
sound(mi_grabacion,Fs);
figure(1);
plot(mi_grabacion);
grid on;

T=dct(mi_grabacion);
figure(2);
plot(T); grid on;
AR=T(1:20000);
ART=idct(AR);

pause(3);
sound(ART,Fs/2);

figure(3);
plot(ART); grid on;

AR2=T(1:10000);
ART2=idct(AR2);
pause(3);
sound(ART2,Fs/4);

figure(4);
plot(ART2); grid on;

AR3=T(1.5000);
ART3=idct(AR3);
pause(3);
sound(ART3,Fs/8);

figure(4);
plot(ART3); grid on;

ART2(10001:40000)=0;
pause(3);
sound(ART2,Fs/4);
