%OPERACIONES SOBRE LA VARIABLE DEPENDIENTE
% --- ESCALAMIENTO EN AMPLITUD ---

%TIEMPO CONTINUO
clear;
close all;
clc;

K=5;
Fs=5000;
f=0.1;
t=0:(1/Fs):50;

x=sin(2*pi*f.*t);
x_escalada=K.*sin(2*pi*f.*t);

figure(1);
subplot(2,1,1), plot(t,x);
title("Señal Original");
xlabel("t");
ylabel("Amplitud")

subplot(2,1,2), plot(t,x_escalada);
title("Señal Escalonada");
xlabel("t");
ylabel("Amplitud")

%TIEMPO DISCRETO
n = 0:50;
Xn_escalada = K.*sin(2*pi*f.*n);

figure(2);
stem(n,Xn_escalada);
title("Señal Escalonada en tiempo discreto");
xlabel("n");
ylabel("Amplitud")

