%Calcular la altura de un cono conociendo el volumen y el radio de su base 
%V=(1/3)*pi*(r^2)*h;
clear;
close all;
clc;
v=input("Ingrese el volumento del cono: ");
r=input("Ingrese el radio del cono: ");
h=(3*v)/(pi*(r^2));
disp("La altura del cono es: ");
disp(h);
