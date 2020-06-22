altagrupos(){

read -p "Ingrese nombre del grupo " grupo
echo ""
existeGrupo
if [ $? -eq 0 ]
 then
  	grupoYaexiste
  	menuGrupos
else
	sudo groupadd $grupo
	grupoYaexiste
	menuGrupos
	if [ $? -eq 0 ]
	 then
		grupoCreado
		menuGrupos
	else
		errorCrearGrupo
		menuGrupos	
	fi
 fi
}