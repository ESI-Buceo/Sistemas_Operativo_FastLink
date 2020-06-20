existeGrupo(){
	cut -d":" -f1 /etc/group | grep $grupo -w -q
}

existeUsuario(){
	cut -d":" -f1 /etc/passwd | grep $usuario -w -q
}
