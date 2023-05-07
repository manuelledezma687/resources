#!/bin/bash

## variables y condicionales
x=10
echo $x

if [ $x -gt 0 ]
then
    echo 'El nro es positivo'
else    
    echo 'EL nro es negativo'
fi

## ciclo while y for
i=1
while [ $i -le 5 ]
do
    echo $i
    i=$((i+1))
done

i=1
for i in {1..5}
do
    echo $i
done
## Funciones

function saludar {
    echo 'Hola Mundo'
}

saludar


function saludar2 {
    name="manuel"
    echo "Hola, $name"
}

saludar2
## Ejecución bash archivo.sh