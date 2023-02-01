%Un profesor acordó con sus estudiantes las siguientes reglas para la 
%calificación final de una materia:
% si la nota es mayor que 3.5 se le suma 0.4, es decir, si la nota obtenida
% es de 3.6 el profesor suma 0.4 luego su nota final sera de 4.0 (si la
% nota calculada fuese superior a 5, la nota final se deja en 5.0), si la
% nota es menor de 2.5 se le resta 0.3 (si saca 2.4 la nota final será de 2.1)
% si la nota final fuese menor a 0 la nota final se deja en 0. 
% Realizar el ejercicio dada las 3 notas de un estudiante, calcular la nota
% final. ---if eseif else

clear; 
close all; 
clc; 
n1=input("Ingrese la primera nota: ");
n2=input("Ingrese la segunda nota: ");
n3=input("Ingrese la tercera nota: ");

promedio = (n1+n2+n3)/3; 
disp("La nota normal es de:");
disp(promedio); 

if(promedio >= 3.5 && promedio <= 6)
    calif_final = promedio + 0.4; 
    if(calif_final > 5.0)
        calif_final = 5.0;
    end
    disp("La calificacion final es de: ");
    disp(calif_final); 
elseif (promedio <= 2.5 && promedio >=0)
    calif_final = promedio - 0.3;
    if(calif_final < 0)
        calif_final = 0;
    end
    disp("La calificacion final es: ");
    disp(promedio); 
elseif (promedio > 2.5 && promedio < 3.5)
    calif_final = promedio; 
    disp("La calificacion final es:");
    disp(promedio);
else
    disp("Las notas ingresadas son erroneas"); 
end

