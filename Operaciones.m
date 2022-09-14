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
            while plano~=4
                plano=input('Ingrese un plano\n1. Rojo (R)\n2. Verde (G)\n3. Azul (B)\n4. Salir\n');
                if plano==4
                    plano=0;
                    break;
                end
                valor=input('Ingrese un valor a Multiplicar ');
                img=MulImg(valor,img,plano);
                figure()
                imshow(img)
                title(['Multiplicacion de ',num2str(valor),' en el plano ',num2str(plano)])
            end
        case 4
            while plano~=4
                plano=input('Ingrese un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue)\n4. Salir\n');
                if plano==4
                    plano=0;
                    break;
                end
                valor=input('Ingrese un valor a Dividir ');
                img=DivImg(1/valor,img,plano);
                figure()
                imshow(img)
                title(['Division de ',num2str(valor),' en el plano ',num2str(plano)])
            end
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

%Funcion para Restar un valor a la imagen en un plano en especial (RGB)
function res = ResImg(val,img,plano)
    res(:,:,plano)=img(:,:,plano)-val;
    if plano==1
        res(:,:,2)=img(:,:,2);%Ponemos el plano G
        res(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==2
        res(:,:,1)=img(:,:,1);%Ponemos el plano R
        res(:,:,3)=img(:,:,3);%Ponemos el plano B
    elseif plano==3
        res(:,:,1)=img(:,:,1);%Ponemos el plano R
        res(:,:,2)=img(:,:,2);%Ponemos el plano G
    end
end

%Funcion para Multiplicar un valor a la imagen en un plano en especial (RGB)
function mulI = MulImg(val,img,plano)
    imgD=double(img);
    mul(:,:,plano)=imgD(:,:,plano)*val;
    mulI(:,:,plano)=uint8(mul(:,:,plano));
    if plano==1
        mulI(:,:,2)=uint8(imgD(:,:,2));%Ponemos el plano G
        mulI(:,:,3)=uint8(imgD(:,:,3));%Ponemos el plano B
    elseif plano==2
        mulI(:,:,1)=uint8(imgD(:,:,1));%Ponemos el plano R
        mulI(:,:,3)=uint8(imgD(:,:,3));%Ponemos el plano B
    elseif plano==3
        mulI(:,:,1)=uint8(imgD(:,:,1));%Ponemos el plano R
        mulI(:,:,2)=uint8(imgD(:,:,2));%Ponemos el plano G
    end
end

%Funcion para Dividir un valor a la imagen en un plano en especial (RGB)
function mulI = DivImg(val,img,plano)
    imgD=double(img);
    mul(:,:,plano)=imgD(:,:,plano)*val;
    mulI(:,:,plano)=uint8(mul(:,:,plano));
    if plano==1
        mulI(:,:,2)=uint8(imgD(:,:,2));%Ponemos el plano G
        mulI(:,:,3)=uint8(imgD(:,:,3));%Ponemos el plano B
    elseif plano==2
        mulI(:,:,1)=uint8(imgD(:,:,1));%Ponemos el plano R
        mulI(:,:,3)=uint8(imgD(:,:,3));%Ponemos el plano B
    elseif plano==3
        mulI(:,:,1)=uint8(imgD(:,:,1));%Ponemos el plano R
        mulI(:,:,2)=uint8(imgD(:,:,2));%Ponemos el plano G
    end
end