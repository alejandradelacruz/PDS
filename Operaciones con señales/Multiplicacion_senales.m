%MULTIPLICACION DE SEÑALES
clear;
close all;
clc;

t=-10:0.01:10;
x=tripuls(t,4);
x1=rectpuls(t,6);
z=x .* x1;
figure(3);
subplot(3,1,1), plot(t,x); title("pulso triangular"); xlabel("tiempo"); ylabel("X(t)");
subplot(3,1,2), plot(t,x1); title("pulso rectangular"); xlabel("tiempo"); ylabel("X1(t)");
subplot(3,1,3), plot(t,z); title("multiplicación de las 2 señales"); xlabel("tiempo"); ylabel("z(t)");

%TIEMPO DISCRETO
n=-10:10;
x2=tripuls(n,6);
x3=rectpuls(n,6);
z2=x2 .* x3;

figure(4);
subplot(3,1,1), stem(n,x2); title("pulso triangular discreto"); xlabel("n"); ylabel("X2[n]");
subplot(3,1,2), stem(n,x3); title("pulso rectangular discreto"); xlabel("n"); ylabel("X3[n]");
subplot(3,1,3), stem(n,z2); title("multiplicación  de las 2 señales en tiempo discreto"); xlabel("n"); ylabel("z2[n]");
