#!/bin/bash
#actualizado
# inicio script: solicitar nombre directorio y comprobar si existe
clear
echo "Favor ingrese nombre del directorio"
read directorio
ls -d /home/duocuc/$directorio
if [[ -d /home/duocuc/$directorio ]]
	then
	echo "El directorio ya existe"
else
	if [[ ! -d /home/duocuc/$directorio ]]	
		then
		echo "¿Desea crear la carpeta $directorio ? Y/n"
		read confirmacion
		if [ $confirmacion = Y ]
			then
			mkdir $directorio
			echo "El directorio $directorio ha sido creado"
	else [ $confirmacion = n ]
		echo "Adios"
		exit
fi
fi
fi
