%FILTRADO DE IMAGEN 2
A=imread('lena_horiz_lines.png');
figure(1);
imshow(A);
impixelinfo;
title("Imagen con ruido");

[m,n]=size(A); 

B=fft2(A); %Aplicamos la tranformada rapida en 2D
absB=abs(B); 

figure(2); 
imshow(absB);
impixelinfo;
title("Valor absoluto de la transformada de Fourier");

%Ajuste de valores 
vmax=max(absB);
vmin=min(absB);

for i=1:m
    for j=1:n
        IS(i,j)=((absB(i,j)-vmin)/(vmax-vmin))*255;
    end 
end

figure(3);
imshow(IS);
title("Imagen con ajuste de valores");
impixelinfo;

%FILTRO1
for i1=44:470
    for j1=1:30
        if IS(i1,j1)~=0
            IS(i1,j1)=0;
        end
    end
end

%FILTRO2
for i2=44:470
    for j2=470:512
       if IS(i2,j2)~=0
           IS(i2,j2)=0;
       end
    end
end

figure(4);
imshow(IS); title("Imagen con auste de valores");


%FILTRO1
for i1=44:470
    for j1=1:30
        if B(i1,j1)~=0
            B(i1,j1)=0;
        end
    end
end

%FILTRO2
for i2=44:470
    for j2=470:512
       if B(i2,j2)~=0
           B(i2,j2)=0;
       end
    end
end

B_ifft=ifft2(B);
figure(5);
imshow(uint8(B_ifft));
title("Imagen sin ruido");
impixelinfo;


