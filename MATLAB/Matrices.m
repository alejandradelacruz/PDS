clear;
close all;
clc;

%FORMA MANUAL
matriz=[1,6,7;4,6,9;9,0,2];
%Matriz de 3 x 3 con numero random de hasta 10
M=randi(10,3);

%Realizamos la transpuesta de la matriz 
[f,c]=size(M);

for i=1:f
    for j=1:c
        M2(j,i)=M(i,j);
    end 
end

%Calcular la suma la diagonal principal 
M3=randi(5,20,20);

[m,n]=size(M3);
diagonal_prin=0;
for i=1:3
    diagonal_prin = diagonal_prin + matriz(i,i);
end
disp("La suma de la diagonal principal es: ")
disp(diagonal_prin);

%Calcular la diagonal secundaria 
diagonal_secundaria=0;
x=1; 
for y=m:-1:1
    diagonal_secundaria=diagonal_secundaria+M3(x,y);
    x=x+1;
end
disp("La suma de la diagonal secundaria es: ");
disp(diagonal_secundaria);

%Convertir una matriz en un vector 
k=1;
for i=1:m
    for j=1:n
        V(k)=M3(i,j);
        k = k+1;
    end
end
