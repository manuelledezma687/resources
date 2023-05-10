#!/bin/bash
echo "Por favor ingrese su nombre, edad y ocupación"
echo "primero su nombre"
## con -p se ven los char con -s no se ven -r toma el retroceso como un char más, con - n (ejemplo n1 max 1 char)
read  name
echo "Después su edad.."
read age
echo "Ahora su ocupación.."
read ocupation
echo "Hola $name tu edad e de $age y tu ocupación es $ocupation"