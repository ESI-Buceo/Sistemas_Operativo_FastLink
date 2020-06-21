borraDirectorioUsuario(){
	sudo rm -dfr /home/$usuario
	sudo userdel -f $usuario
	existeUsuario
	if [ $? -eq 0 ]
	 then
		echo "ELIMINACION CORRECTA"
		echo "Se elimino el directorio /home/"$usuario
		echo " Se elimino el susuario "$usuario
		echo ""
		pausa
	else
		MsjErrorEliminarUsuarios
	fi
}