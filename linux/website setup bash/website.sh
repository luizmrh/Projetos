#!/bin/bash

# Instalando as dependencias
echo "######################################"
echo " Instalando pacotes"
echo "#######################################"

sudo yum install wget unzip httpd -y > /dev/null
echo

# Iniciando e habilitando serviços
echo "######################################"
echo " Iniciando e habilitando Httpd"
echo "######################################"

sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Criando o diretorio temp
echo "######################################"
echo " Começando o Deploy"
echo "######################################"

mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2158_forge_reality.zip > /dev/null
unzip 2158_forge_reality.zip > /dev/null
sudo cp -r 2158_forge_reality/*  /var/www/html/
echo

echo "#####################################"
echo " Serviço de devolução"
echo "#####################################"
sudo systemctl restart httpd
echo

# Limpeza
echo "######################################"
echo " Removendo arquivos temporarios"
echo "######################################"
rm -rf /tmp/webfiles
echo


sudo systemctl status httpd
ls /var/www/html/

