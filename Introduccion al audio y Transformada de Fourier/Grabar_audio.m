clear;
close all;
clc;

%Grabar audio
Obj=audiorecorder(8000,16,1);
get(Obj);
disp("Grabar");

recordblocking(Obj,5);
disp("Grabacion finalizada");

%Obtener los datos de la grabacion 
%Creamos una matriz doble 
grabacion = getaudiodata(Obj);

%Graficamos
plot(grabacion);

%reproducir el objeto
play(Obj);
Fs=8000;
sound(grabacion, Fs);

%Guardar la grabacion 
save("Obj");
save("señal_audioPrueba", "grabacion", "F");

%Para importar nuestra grabacion en otro script
%load Obj;
%load "señal_audioPrueba.mat";
%Para verificar si se cargo correctamente
%play(Obj);
%figure(1)
%plot(grabacion);

%Guardar un archivo .wav
%Especificamos la ruta donde se va a guardar 
%ruta='ruta/señal.wav'
%audiowrite(ruta,grabacion,Fs);