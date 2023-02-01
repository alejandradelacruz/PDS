%VECTORES
%Los vectores en matlab inician en la posicion 1 nunca en 0
clear;
close all;
clc; 
vector = [1 4 3 5 7 2 6 8 9 12 34 87];
%Para cambiar el valor de una posicion lo hacemos con el siguiente codigo.
vector(3)=122;
vector(20)=34;
%Calcular el promedio

suma = 0;
for i=1:length(vector)
    suma = suma + vector(i);
end
promedio = suma / length(vector);
disp("El promedio es: ");
disp(promedio);

%randi genera numeros aleatorio
% La siguiente linea de codigo crea valores aleatorios hasta 10 
% crea una matriz de 1 fila x 10 columnas
v1=randi([-10 10],1,10);

%Para especificar un rango 
v2=randi([-10 10], 1, 10);

%Transformar el vector en un vector columna
for j=1:length(v2)
    v3(j,1)=v2(j);
end

%CONVERTIR DE VECTOR A MATRIZ
M=zeros(5,4);
[f,c]=size(M);
t=1; %variable auxiliar
for i1=1:f
    for j1=1:c
        M(i1,j1) = vector(t);
        t=t+1;
    end
end