#!bin/bash
# Script Tarea Funciones
clear
# Funcion Inicio
function inicio(){
			clear
			echo "Selecciona el numero para operar"
			echo "1. Mostrar procesos"
			echo "2. Salir"
			echo "3. Reporte"
			read seleccion
			if [ $seleccion=1 ];
			then
				procesos
			fi
			if [ $seleccion=2 ];
			then
				quit
			fi
			if [ $seleccion=3 ];
			then
				reporte
			fi
		}
# Funcion para mostrar proceso
function procesos(){
			clear
			ps aux
			read -rsp $'Presiona cualquier tecla para continuar...\n' -n 1 key
			terminar
		}
# Funcion para terminar Proceso
function terminar(){
			clear
			echo "Ingrese numero del PID del proceso a terminar"
			read pid
			read -sp "Se eliminará el proceso con el $pid presione cualquier tecla para continuar..." -n 1 key
			kill $pid
			quit
		}
# Funcion reporte
function reporte(){
			cat /etc/passwd >> usuarios.txt
			cat /etc/group >> grupos.txt
			clear
			echo "Se mostrará el nombre del servidor y se agregará al reporte"
			hostname
			hostname >> reporte.txt
			cat usuarios.txt >> reporte.txt
			cat grupos.txt >> reporte.txt
			read -sp "El proceso se realizó, presione cualquier tecla para continuar..." -n 1 key
			exit 
		}
inicio