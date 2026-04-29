#!/bin/bash


ls /var/run/apache2/apache2.pid


# o script primeiramente ira checar se o codigo do processo é igual a 0 (ativo)

if
       	[ $? -eq 0 ]

then 
       echo 	" O processo esta ativo"


# Caso não esteja ele ira automaticamente iniciar  apache

else
	echo "O processo não está ativo"
	echo "Iniciando processo"
	systemctl start apache2
	sleep 3


# Se mesmo após rodar e validar  o processo novamente retornar com erro o script informara que é necessario uma atuação do administrador

if [ $? -eq 0 ]
then
	echo " O processo está ativo"

else 
	echo " Erro, contate o administrador "
 fi
fi


# Após isso irei programar outro script para rodar este comando em horario/datas/dias especificos 
