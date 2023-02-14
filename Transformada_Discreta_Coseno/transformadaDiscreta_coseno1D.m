%TRANSFORMADA DISCRETA DEL COSENO EN 1D
clear;
close all;
clc;
%dct
A=[3,5,6,3,6,9,2,7,44,134,86];
B=dct(A);

%Transformada inversa 
C=idct(B);