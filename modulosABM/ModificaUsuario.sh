modificaUsuario(){
	
	usuActual=$(whoami)
	usuActual=$(grep $usuActual -w  /etc/passwd | cut -d ":" -f 3)
	clear
	echo ""
	read -p "Ingrese el Nombre del Usuario a Modificar " usuario
	existeUsuario
	if [ $? -eq 0 ]
	  then
		UidInicio=$(cat /etc/passwd | grep $usuario -w | cut -d ":" -f 3)
		if [ $UidInicio != 0 ]
	 		then
			if [ $UidInicio != $usuActual ]
			 then
				read -p "Ingrese nombre para cambiar => " usuDestino
				grep $usuDestino -w -q /etc/passwd
				if [ $? != 0 ]
	  			 then
					#UidDestino=$(grep $usuDestino -w /etc/passwd | cut -d":" -f 3)
					if [[ "$usuDestino" != "root" ]]
	 				 then
						usuActual=$(whoami)
						if [[ "$usuDestino" != "$usuActual" ]]
			 				then
			 					sudo usermod -l $usuDestino $usuario 
			 					sudo usermod -d /home/$usuDestino -m $usuDestino

			 					echo
			 					sudo nano /etc/passwd
			 					pausa
								 	
								#cut -d":" -f1 /etc/passwd | grep $usuDestino -w -q	
								if [ $? -eq 0 ]
								 then
									echo ""
									echo "LA MODIFICACION SE REALIZO CORRECTAMENTE"
									echo	
									pausa	
								else
									echo
									echo "NO SE PUDO REALIZAR LA MODIFICACION"	
									echo
									pausa	
								fi	
						else
			 				echo ""
							echo ""
							echo "NO SE PÙEDE MODIFICAR EN USUARIO ACTUAL"
							echo ""
							pausa
			 			fi
			 		else
			 			echo ""
						echo " NO SE PUEDE USAR EL USUARIO ROOT"
						echo ""
						pausa
			 		fi				
			 	else
			 		echo ""
					echo ""
					echo "EL USUARIO EXISTE"
					echo ""
					pausa
			 	fi				
			else
				echo ""
				echo "NO SE PUEDE MODIFICAR EL USUARIO ACTUAL"
				echo ""
				pausa
			fi
		else
			echo ""
			echo " NO SE PUEDE MODIFICAR EL USUARIO ROOT"
			echo ""
			pausa
		fi
	else
		echo ""
		echo ""
		echo "EL USUARIO NO EXISTE"
		echo ""
		pausa
	fi			
}