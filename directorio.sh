#!/bin/bash
#esto es un comentario

clear
pwd #nos muestra la ruta
ls -d /home/duocuc/prueba #muestra si existe el directorio
if [[ -d /home/duocuc/prueba ]]
then
	echo "el directorio existe"
fi
if [[ ! -d /home/duocuc/prueba ]]
then
	mkdir prueba
	echo "el directorio ha sido creado"
	ls -d /home/duocuc/prueba
fi
