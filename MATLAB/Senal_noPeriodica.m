clear;
close all;
clc; 

%SEÑAL NO PERIODICA 
A=10;
B=50;
Wo1=(1/6)*pi;
a=0.1;
n=-30:30;

x=A*sin(Wo1*n);
x2=B*exp(-a*n);
z=x.*x2;
figure(2);
stem(n,z);
title("Señal no periodica");
xlabel("n");
ylabel("X[n]");
grid on;