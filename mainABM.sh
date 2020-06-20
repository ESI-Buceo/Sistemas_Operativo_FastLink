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
 	menuP
 	read -p "Ingrese su opcion: " op

 	case $op in
 		
 		1)menUsuario
		;;
		2)menuGrupos
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