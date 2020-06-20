menUsuario(){

while [ "$op" != 0 ]
 do
 	clear
 	echo ""
 	echo " Menu USUARIOS"
 	echo "---------------"
 	echo " 1 - ALTAS"
 	echo " 2 - BAJAS"
 	echo " 3 - MODIFICACION"
 	echo ""
 	echo " 9 - Menu Pricipal"
 	echo " 0 - Salir "
 	echo ""
 	echo ""

 	read -p " Ingrese Opcion ==> " op
 	case $op in
 		1) pruebaAltaUsuario
 		;;
 		2) bajaUsuario
		;;
		2) modificaUsuario
		;;
		9) main
		;;
		0) exit
		;;
		*) echo "Opcion Incorrecta"
		   pausa
		;;	
	esac
done
menUsuario
}
