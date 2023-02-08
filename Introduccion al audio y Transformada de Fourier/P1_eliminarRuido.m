%PRACTICA 1 
%ELIMINAR RUIDO DE UN AUDIO 
clear;
close all;
clc; 

OBJ=audiorecorder(44100,16,1);
get(OBJ);
disp("Grabar");
recordblocking(OBJ,5);
disp("Grabacion finalizada");
grabacion=getaudiodata(OBJ);
plot(grabacion);

pause(2);
play(OBJ);

save("Audio_Ruido", "grabacion");