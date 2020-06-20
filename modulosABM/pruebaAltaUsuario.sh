pruebaAltaUsuario(){

clear
echo ""
echo ""
echo "TIPO de USUARIO " 
echo "---------------"
echo "1 - Gestores"
echo "2 - Medicos"
echo ""
echo "9 - Menu Principal"
echo "0 - Salir"
echo ""
read -p "Ingrese la opcion => " op
echo ""
case $op in
	1)grupo="Gestores"
	  existeGrupo
	  if [ $? -ne 0 ]
	   then
	  	sudo groupadd $grupo
	  	existeGrupo
	  	if [ $? -eq 0 ]
	  	 then
	  		echo""
	  		read -p "Ingrese Nombre de Usuario para el grupo "$grupo" => " usuario 
	  		echo""
	  		existeUsuario
	  		if [ $? -eq 0 ]
	  		 then
	  			usuarioYaexiste
	  		else
	  			sudo useradd -g $grupo $usuario
	  			existeUsuario
	  			if [ $? -eq 0 ]
	  			 then
	  				usuarioCreado
	  			 else
	  				errorCrearUsuario
	  			fi
	  		fi
	  	else
	  		errorCrearGrupo
	   	fi
	  else
	  	echo""
	  	read -p "Ingrese Nombre de Usuario para el grupo "$grupo" => " usuario 
	  	echo""
	  	existeUsuario
	  	if [ $? -eq 0 ]
	  	 then
	  		usuarioYaexiste
	  	else
	  		sudo useradd -g $grupo $usuario
	  		existeUsuario
	  		if [ $? -eq 0 ]
	  		 then
	  			usuarioCreado	
	  		else
	  			errorUsuario
	  		fi
	  	fi
  	  fi
	;;
	2)grupo="Medicos"
	  existeGrupo
	  if [ $? -ne 0 ]
	   then
	  	sudo groupadd $grupo
	  	existeGrupo
	  	if [ $? -eq 0 ]
	  	 then
	  		echo""
	  		read -p "Ingrese Nombre de Usuario para el grupo "$grupo" => " usuario 
	  		echo""
	  		existeUsuario
	  		if [ $? -eq 0 ]
	  		 then
	  			usuarioYaexiste
	  		else
	  			sudo useradd -g $grupo $usuario
	  			existeUsuario
	  			if [ $? -eq 0 ]
	  			 then
	  				usuarioCreado
	  			 else
	  				errorCrearUsuario
	  			fi
	  		fi
	  	else
	  		errorCrearGrupo
	   	fi
	  else
	  	echo""
	  	read -p "Ingrese Nombre de Usuario para el grupo "$grupo" => " usuario 
	  	echo""
	  	existeUsuario
	  	if [ $? -eq 0 ]
	  	 then
	  		usuarioYaexiste
	  	else
	  		sudo useradd -g $grupo $usuario
	  		existeUsuario
	  		if [ $? -eq 0 ]
	  		 then
	  			usuarioCreado	
	  		else
	  			errorUsuario
	  		fi
	  	fi
  	  fi
	;;
esac
}
