clear;
close all;
clc; 

%SEÑALES EN TIEMPO DISCRETO 
n = -3:4;
vector=[1 1 0 2 3 -1 2 1];
figure(2);
stem(n,vector);
title("Señal en tiempo discreto");
xlabel("n");
ylabel("X[n]");
grid on; 