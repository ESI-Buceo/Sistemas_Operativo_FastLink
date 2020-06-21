bajaUsuarios(){
	
	usuActual=$(whoami)
	usuActual=$(grep $usuActual -w  /etc/passwd | cut -d ":" -f 3)
	
	clear
	echo ""
	read -p "Ingrese el Nombre del Usuario " usuario
	existeUsuario
	if [ $? -eq 0 ]
	  then
		usuRoot=$(cat /etc/passwd | grep $usuario -w | cut -d ":" -f 3)
		if [ $usuRoot != 0 ]
	 		then
			if [ $usuRoot != $usuActual ]
			 then
				existeUsuario
				if [ $? -eq 0 ]
		 		then
					MsjEliminarUsuario
					pausa
					clear
					menuBajaUsuarios
					read -p "Ingrese Opcion => " op
					case $op in
						1)borraDirectorioUsuario
						;;
						2)borraUsuario
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
			else
				echo ""
				echo "NO SE PUEDE ELIMINAR EL USUARIO ACTUAL "		
				echo""
				pasua
				menuU
			fi
	else
		echo""
		echo""
		echo "NO SE PUEDE ELIMINA USUARIO ROOT"
		echo""
		pausa
		menuU		
	fi	
else
	echo ""
	echo ""
	echo "EL USUARIO "$usuario" NO EXISTE"	
	echo ""
	echo ""	
	pausa
	menuU
fi	
}