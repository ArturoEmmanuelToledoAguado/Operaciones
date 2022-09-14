clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG/j.jpg');
opc=0;

while opc~=5
    opc=input('Seleccione una opcion\n1. Suma\n2. Resta\n3. Multiplicacion\n4. Division\n5. Salir\n')
end
