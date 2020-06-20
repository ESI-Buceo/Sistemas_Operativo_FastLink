#!/bin/bash
main(){
#importa todas las funciones del directorio modulos

for funcion in $(ls modulosABM)
do
	source modulosABM/$funcion 
done

#Menu Principal

op=-1

while [ $op != 0 ]
 do
 	clear
 	echo ""
 	echo ""
 	echo ""
 	echo " Menu Principal"
 	echo "-----------------"
 	echo ""
 	echo "  1 - Usuarios"
 	echo "  2 - Grupos"
 	echo "  0 - Salir"
 	echo ""
 	echo "" 
 	read -p "Ingrese su opcion: " op

 	case $op in
 		
 		1)menUsuario
		;;
		2)menuGrupo
		;;
		0)echo ""
		  echo ""
		  echo ""
		  echo "FIN DE LA APLICACION"
		  echo ""
		  echo "" 
		  exit ;;
		*)echo ""
		  echo ""	
		  echo "Opcion Incorrecta"
	      pausa
		  main	
		;;
 	esac
done
}
main