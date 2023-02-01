%Realice un programa que permita halla en N-esimo término de la serie de
%fibbonacci f(0) = 0 - f(1)=1 - f(3)=2 - f(4)=3 - f(5)=5 - f(6)=8 - f(7)
%=13, una variable entera <<terms>> que representa el termino de la serie a
%hallar; mostrar el numero entero que representa el valor del termino.
%0,1,1,2,3,5,8,13
clear;
close all;
clc; 
actual=0;
siguiente=1;
cantidad=0;
term=input("Ingrese el termino a calcular la serie: ");

while cantidad < term
    anterior = actual;
    actual = siguiente;
    siguiente = anterior + actual; 
    cantidad=cantidad+1; 
end
disp("La serie de fibbonacci es: ");
disp(actual); 
