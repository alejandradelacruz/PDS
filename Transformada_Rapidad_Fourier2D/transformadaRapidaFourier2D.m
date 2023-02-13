%TRANSFORMADA RAPIDA DE FOURIER EN 2D
clear;
close all;
clc;

%fft2
M=[1,4,6;9,0,1;2,8,1];
M_fft2=fft2(M);

%Transformada rapida inversa de fourier en 2D
inversa = ifft2(M_fft2);