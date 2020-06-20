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
	  			echo""
	  			echo "EL USUARIO "$usuario" YA EXISTE"
	  			echo ""
	  		else
	  			sudo useradd -g $grupo $usuario
	  			existeUsuario
	  			if [ $? -eq 0 ]
	  			 then
	  				echo ""
	  				echo "El Usuario "$usuario" en el grupo "$grupo" fue creado"
	  				echo""
	  				pausa	
	  			else
	  				echo ""
	  				echo "ERROR AL CREAR AL USUARIO"
	  				echo ""
	  			fi
	  		fi
	  	else
	  		echo""
	  		echo "ERROR AL CREAR EL GRUPO"
	  		echo""
	   	fi
	  else
	  	echo""
	  		read -p "Ingrese Nombre de Usuario para el grupo "$grupo" => " usuario 
	  		echo""
	  		existeUsuario
	  		if [ $? -eq 0 ]
	  		 then
	  			echo""
	  			echo "EL USUARIO "$usuario" YA EXISTE"
	  			echo ""
	  			pausa
	  		else
	  			sudo useradd -g $grupo $usuario
	  			existeUsuario
	  			if [ $? -eq 0 ]
	  			 then
	  				echo ""
	  				echo "El Usuario "$usuario" en el grupo "$grupo" fue creado"
	  				echo "" 
	  				echo ""
	  				pausa	
	  			else
	  				echo ""
	  				echo "ERROR AL CREAR EL USUARIO"
	  				echo ""
	  			fi
	  		fi
  	  fi
	;;
	2)
	;;
esac

}
