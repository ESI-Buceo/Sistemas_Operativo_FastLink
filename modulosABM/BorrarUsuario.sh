borraUsuario(){

sudo userdel -f $usuario #borra el usuario
	existeUsuario # verifica si existe usuario
	if [ $? -eq 0 ] 
	 then #informa que se booro correctamente
		echo "ELIMINACION CORRECTA"
		echo " Se elimino el susuario "$usuario
		echo ""
		pausa
	else # informa que hubo un error al eliminar
		MsjErrorEliminarUsuarios
	fi
	
}