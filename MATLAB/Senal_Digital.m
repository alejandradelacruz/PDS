clear;
close all;
clc; 

%SEÑAL DIGITAL
%va desde -6 con transicion de 0.1 hasta 6
t1=-6:0.1:6;
d=rectpuls((1/2)*t1,2);
figure(2);
plot(t1,d);
axis([-5 5 -1 2]);
title("Señal Digital");
xlabel("t");
ylabel("D(t)");
grid on; 