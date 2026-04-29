#!/bin/bash



usuarios="luiz felipe jorge"

for usr in $usuarios

do 

	echo " Criando usuario $usr"
	sleep 2

    sudo useradd $usr
	id $usr

	echo "usuarios criados"


done
