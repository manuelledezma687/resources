#!/bin/bash
## cases
opcion=1

case $opcion in
    1)
        echo "Opción 1 seleccionada"
        ;;
    2)
        echo "Opción 2 seleccionada"
        ;;
    *)
        echo "Opción inválida"
        ;;
esac

select opcion in "Opción 1" "Opción 2" "Opción 3" "Salir"
do
    case $opcion in
        "Opción 1")
            echo "Opción 1 seleccionada"
            ;;
        "Opción 2")
            echo "Opción 2 seleccionada"
            ;;
        "Opción 3")
            echo "Opción 3 seleccionada"
            ;;
        "Salir")
            break
            ;;
        *)
            echo "Opción inválida"
            ;;
    esac
done

## until

