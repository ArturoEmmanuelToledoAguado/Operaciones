# Introducción
Se propone realizar un programa que pueda: sumar, restar, multiplicar y dividir diferentes valores a los elementos de una imagen.

## ¿Qué es el procesamiento digital de imagenes (PDI)?
PDI se puede definir como el conjunto de procesamientos que se realizan sobre una imagen digital ya sea para realizar su almacenamiento, transmisión o tratamiento.

## Lectura de imágenes en matlab
Para leer una imágen en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imread.html"> **imread**</a> y se asigna a una variable que representara a la imágen.

<code>imagen = imread('ruta/nombre de la imágen.extensión');</code>

## Operaciones con los elementos de una imagen
Los elementos que construyen una imagen en Matlab tienen el formato entero <a href="https://la.mathworks.com/help/matlab/ref/uint8.html">**uint8**</a>, que es un tipo de dato que puede variar de o a 255, sin poder soportar decimales y valores que salgan de ese rango.

Pero cuando queremos realizar operaciones como por ejemplo de división o multiplicación es necesario transformar la imagen de tipo de dato **uint8** a <a href="https://la.mathworks.com/help/matlab/ref/double.html?searchHighlight=double&s_tid=srchtitle_double_2">**double**</a>.

Si despues queremos visualizar o guardar la imagen es necesario regresar al tipo de dato **uint8**.

~~~
img=imread('img.jpg');
figure()
imshow(img);
title('original')
imgD=double(img);
imgD5=imagD*.5;
imagenIn=uint8(imgD5);
figure()
imshow(imagenIn)
title('intensidad al .5')
~~~

## Cambiar el tamaño de una imágen
Matlab puede redimensionar una imagen mediante la funcion <a href= "https://la.mathworks.com/help/matlab/ref/imresize.html">**imresize**</a>, la imágen sera de menor tamaño que la original si el valor asignado es menor a 1, por el contrario para aumentar el tamaño, se necesita un factor de ampliación mayor que 1.

<code>nuevaimagen=imresize(imagen,escala)</code>

## Mostrar una imágen
La función <a href="https://la.mathworks.com/help/images/ref/imshow.html?searchHighlight=imshow&s_tid=srchtitle_imshow_1">**imshow**</a> permite mostrar una imágen abierta, modificada o creada desde matlab (la imagen se visualiza en una ventana de matlab)

<code>imshow(imagen)</code>

## Guardar una imágen
Para guardar el contenido de una imagen la cual ha sido modificada o creada en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imwrite.html?s_tid=doc_ta">**imwrite**</a>

<code>imwrite(variable,'nombre del arvhivo.extención')</code>

En donde 'variable' representa la variable que contiene a la imágen, 'nombre del archivo', el nombre con el que se desea guardar seguido de un punto se indica el tipo de formato deseado

<a href="https://github.com/ArturoEmmanuelToledoAguado/Resta">Código</a>