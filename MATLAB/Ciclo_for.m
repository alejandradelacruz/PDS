%Escribir un programa que muestre la sumatoria de todos los multiplos de 3 
% encontrados entre el 0 y un numero (rango)
clear;
close all;
clc;

suma=0;
rango=input("Ingrese el rango: ");
for i=0:rango
    if mod(i,3)==0
        suma = suma + i;
    end 
end
disp("La suma es: ");
disp(suma);

%Mostrar numeros de 2 en 2
%for i=0:2:100
%    disp(i);
%end 

%Mostrar los numeros de manera descendente 
%for x=10:-1:0
%    disp(x);
%end