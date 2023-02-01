clear;
close all;
clc; 

%SEÑALES PARES 
Wo=(1/6)*pi;
n=-10:10;
y=2*cos(Wo*n);
figure(1);
stem(n,y);
title("Señales Pares");
xlabel("n");
ylabel("Y(n)");
grid on; 