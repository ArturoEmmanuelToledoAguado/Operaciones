clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG/j.jpg');

opc=0;
plano=0;

%Mostramos imagen original
figure()
imshow(img)
title('Original')

while opc~=5
    opc=input('1. Suma\n2. Resta\n3. Multiplicacion\n4. Division\n5. Salir\n');
    switch (opc)
        case 1
            while plano~=4
                plano=input('Ingrese un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue)\n4. Salir\n');
                if plano==4
                    plano=0;
                    break;
                end
                valor=round(input('Ingrese un valor a Sumar '));
                img=AddImg(valor,img,plano);
                figure()
                imshow(img)
                title(['Suma de ',num2str(valor),' en el plano ',num2str(plano)])
            end
        case 2
            while plano~=4
                plano=input('Ingrese un plano\n1. Rojo (R)\n2. Verde (G)\n3. Azul (B)\n4. Salir\n');
                if plano==4
                    plano=0;
                    break;
                end
                valor=round(input('Ingrese un valor a Restar '));
                img=ResImg(valor,img,plano);
                figure()
                imshow(img)
                title(['Resta de ',num2str(valor),' en el plano ',num2str(plano)])
            end
        case 3
            disp('Multiplicacion')
        case 4
            disp('Division')
    end
end

%Funcion para sumar un valor a la imagen en un plano en especial (RGB)
function sum = AddImg(val,img,plano)
    sum(:,:,plano)=img(:,:,plano)+val;
    if plano==1
        sum(:,:,2)=img(:,:,2);%Ponemos el plano G
        sum(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==2
        sum(:,:,1)=img(:,:,1);%Ponemos el plano R
        sum(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==3
        sum(:,:,1)=img(:,:,1);%Ponemos el plano R
        sum(:,:,2)=img(:,:,2);%Ponemos el plano G
    end
end

%Funcion para Rstar un valor a la imagen en un plano en especial (RGB)
function sum = ResImg(val,img,plano)
    sum(:,:,plano)=img(:,:,plano)-val;
    if plano==1
        sum(:,:,2)=img(:,:,2);%Ponemos el plano G
        sum(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==2
        sum(:,:,1)=img(:,:,1);%Ponemos el plano R
        sum(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==3
        sum(:,:,1)=img(:,:,1);%Ponemos el plano R
        sum(:,:,2)=img(:,:,2);%Ponemos el plano G
    end
end