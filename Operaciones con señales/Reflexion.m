%REFLEXION
%Tiempo continuo 
clear;
close all;
clc; 

A=2;
t=-5:0.001:5;
X1=A.*tripuls(t-2,3);
X2=A.*tripuls(-t-2,3);

figure(1);
subplot(2,1,1), plot(t,X1); title("Pulso Rectangular");
subplot(2,1,2), plot(t,X2); title("Reflexion pulso rectangular");

%Reflexion tiempo discreto
n=-5:5;
Xn=A.*square(n);
Xn1=A.*square(-n);

figure(2);
subplot(2,1,1), stem(n,Xn); title("Señal Discreta");
subplot(2,1,2), stem(n,Xn1); title("Reflexion señal Discreta");

