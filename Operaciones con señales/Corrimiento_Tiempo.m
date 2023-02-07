%CORRIMIENTO TIEMPO
%TIEMPO CONTINUO 
clear;
close all;
clc;

A=2;
t=-5:0.001:5;
X=A.*tripuls(t,3);
X1=A.*tripuls(t-2,3);
X2=A.*tripuls(t+3,3);

figure(1);
subplot(3,1,1), plot(t,X); title("Pulso Rectangular");
subplot(3,1,2), plot(t,X1); title("Pulso Rectangular t-2");
subplot(3,1,3), plot(t,X2); title("Pulso Rectangular t+3");
axis([-6 1 0 2 ]);

%CORRIMIENTO EN TIEMPO DISCRETO
n=-5:5;
Xn=A*square(n);
Xn1=A*square(n-3);
Xn2=A*square(n+1);

figure(2);
subplot(3,1,1), stem(n,Xn); title("Señal Discreta");
subplot(3,1,2), stem(n,Xn1); title("Señal Discreta n-3");
subplot(3,1,3), stem(n,Xn2); title("Señal Discreta n+1");
