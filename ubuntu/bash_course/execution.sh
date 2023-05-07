#!/bin/bash

# Intentamos ejecutar el comando
if ! command
then
    # Si falla, mostramos un mensaje de error y salimos con código de error 1
    echo "El comando ha fallado"
    exit 1
fi

# Si todo ha ido bien, continuamos con el script
echo "El comando se ha ejecutado correctamente"