%ESCALAMIENTO DE TIEMPO
clear;
close all;
clc;

%TIEMPO CONTINUO
t=-10:0.001:10;
x=tripuls(t,3);
x1=rectpuls(t,3);

x_esca=tripuls(3*t,3);
x1_esca=rectpuls((1/2)*t,3);

figure(1);
subplot(2,2,1), plot(t,x); title("pulso triangular");
subplot(2,2,2), plot(t,x1); title("pulso rectangular");
subplot(2,2,3), plot(t,x_esca); title("pulso triangular escalonado");
subplot(2,2,4), plot(t,x1_esca); title("pulso rectangular escalonado");

%escalamiento tiempo discreto
A=2;
n=0:20;
f=0.2;
tao=0.5;
Xn=A.*square(2*pi*f*n+tao);
Xn1=A.*square(2*pi*f*2*n+tao);
Xn2=A.*square(2*pi*f*0.5*n+tao);

figure(2);
subplot(3,1,1), stem(n,Xn); title("señal discreta");
subplot(3,1,2), stem(n,Xn1); title("señal discreta escalonada en 2");
subplot(3,1,3), stem(n,Xn2); title("señal discreta en 0.5");



