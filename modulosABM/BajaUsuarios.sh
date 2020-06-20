bajaUsuarios(){
	clear
	echo ""
	read -p "Ingrese el Nombre del Usuario " usuario	
	existeUsuario
	if [ $? -eq 0 ]
	 then
		MsjEliminarUsuario
		pausa
		clear
		menuBajaUsuarios
		read -p "Ingrese Opcion => " op
		case $op in
			1)
			;;

			2)
			;;

			9)menuU
			;;
			0)exit
			;;
			*)
			echo "Opcion Incorrecta"
			pausa
			;;
		esac
	else
		echo ""
		echo ""
		echo "El Usuario "$usuario" NO EXISTE"
		pausa
		menuU
	fi
}