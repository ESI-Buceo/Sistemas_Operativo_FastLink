menUsuario(){
while [ "$op" != 0 ]
do
	menuU
	read -p " Ingrese Opcion ==> " op
	case $op in
		1) AltaUsuario
		;;
		2) bajaUsuarios
		;;
		3) modificaUsuario
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
