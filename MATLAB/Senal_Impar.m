clear;
close all,
clc; 

%SEÑAL IMPAR
t=-5:0.0001:5;
Wo1=2*pi;
phi=2*pi;
H=5*sin(Wo1*t+phi);

figure(2);
plot(t,H);

title("Señal Impar");
xlabel("t");
ylabel("H(t)");
grid on; 