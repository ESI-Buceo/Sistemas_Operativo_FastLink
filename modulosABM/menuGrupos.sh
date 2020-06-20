menuGrupos(){

while [ "$op" != 0 ]
do
	menuG
	echo""
	read -p "Ingrese su opcion => " op 
	case $op in
		1)altagrupos
		;;
		2)
		;;
		3)
		;;
		9)
		;;
		0)
		;;
		*)echo "Opcion invalida"
		  pausa
		  ;;	
	esac
done
menuGrupos
}