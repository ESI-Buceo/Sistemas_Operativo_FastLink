altagrupos(){

read -p "Ingrese nombre del grupo " grupo
echo ""
existeGrupo
if [ $? -eq 0 ]
 then
  	grupoYaexiste
  	menugrupo
else
	sudo groupadd $grupo
	grupoYaexiste
	menugrupo
	if [ $? -eq 0 ]
	 then
		grupoCreado
		menugrupo
	else
		errorCrearGrupo
		menugrupo	
	fi
 fi
}