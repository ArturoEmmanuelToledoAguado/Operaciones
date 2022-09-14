clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG/j.jpg');

%Variables de los menus
opc=0;
plano=0;

while opc~=5
    opc=input('Seleccione una opcion\n1. Suma\n2. Resta\n3. Multiplicacion\n4. Division\n5. Salir\n')
    if opc==1
        opc=0;
        while opc~4
            opc=input('Selecione un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue).\n4. Salir\n')
        end
    elseif opc==2
        opc=0;
        while opc~4
            opc=input('Selecione un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue).\n4. Salir\n')
        end
    elseif opc==3
        opc=0;
        while opc~4
            opc=input('Selecione un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue).\n4. Salir\n')
        end
    elseif opc==4
        opc=0;
        while opc~4
            opc=input('Selecione un plano\n1. Rojo (Red)\n2. Verde (Green)\n3. Azul (Blue).\n4. Salir\n')
        end
    else
        break;
    end
end
