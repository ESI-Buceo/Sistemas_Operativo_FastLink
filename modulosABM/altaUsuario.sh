altaUsuario(){

clear
echo ""
echo ""
echo "       TIPO de USUARIO " 
echo "	     ---------------"
echo "    1  - Gestores"
echo "    2  - Medicos"
echo ""
echo "    9  - Menu Principal"
echo "    0  - Salir"
echo ""
read -p "Ingrese la opcion => " op
echo ""
pausa
case $op in
	1)grupo="gestor" #Se asigna la variable "grupo" el tipo Gestor
		cut -d":" -f1 /etc/group | grep $grupo -w -q #Se verifica si existe el grupo
		if [ $? -eq 0 ]
		 then
			echo "el Grupo " $grupo " ya existe" #EL grupo ya Existe
			echo ""
			read -p "Ingrese el Usuario :" usuario #Se pide el nombre delk usuario a crear
			cut -d":" -f1 /etc/passwd | grep $usuario -w -q #Se verifica que no Exista
			if [ -eq = 0 ]
			 then
				echo "E Usuario " $usuario " YA EXISTE " #El usuario ya existe
 				pausa
 			else
				sudo useradd -g $grupo -s $usuario #Se crea el usuario en el grupo correspondiente
				cut -d":" -f1 /etc/passwd | grep $usuario -w-q #Severifica si se creo el usuario
				if [ $? -eq 0 ]
				 then
					echo "El Usuario "$usuario " se creo CORRECTAMENTE !!"
					pausa
				else
					echo "ERROR AL CREAR USUARIO"
				fi	
			fi
		else
			sudo groupadd $grupo
			cut -d":" -f1 /etc/group | grep $grupo -w -q
			if [ $? -eq 0 ]
			then
				echo ""
				read -p "Ingrese el Usuario :" usuario
				cut -d":" -f1 /etc/passwd | grep $usuario -w -q 
				if [ $? -eq 0 ]
				 then
					echo "E Usuario " $usuario " YA EXISTE "
 					pausa
 				else
 					sudo useradd -g $grupo -s $usuario		
 					cut -d":" -f1 /etc/passwd | grep $usuario -w-q
 					if [ $? -eq 0 ]
				 	 then
						echo "El Usuario "$usuario " se creo CORRECTAMENTE !!"
						pausa
					else
						echo "ERROR AL CREAR USUARIO"
					fi
				fi	
			fi
		fi
	fi
	;;
	2)grupo="medico"
	;;
	*)echo" Opcion Incorrecta"
	;;
esac
}
