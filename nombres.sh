#!/bin/bash
echo "nombres y edades"
echo "----------------"
for LINEA in ` cat datos.txt `
do
nombre=`echo $LINEA | cut -d ":" -f1`
edad=`echo $LINEA | cut -d ":" -f2`
echo "$nombre tiene $edad años"
done
