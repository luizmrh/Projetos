Gerando senhas aleatorias com pwgen

*Para instalar em distritos Debian/Ubuntu
sudo apt install pwgen

*Para instalar em distritos CentOS
sudo dnf install pwgen 


- A SENTAXE DO COMANDO

pwgen 8 (quantidade de caracteres que deseja) 1 (numero de senhas)


-Na pratica: 

luizfelipe@luizfelipe-Inspiron-5566:~$ pwgen 5 1
auj9I


-OPÇÕES DO COMANDO 

-c= Inclui ao menos uma letra maiuscula 
-n= Inclui ao menos um numero 
-y= Inclui simbolos



-EXEMPLOS 

-pwgen 12 1
Gera uma senha de 12 caracteres


-pwgen 8 2 -cny
Gera duas senhas contendo 8 caracteres, letras maisculas, numeros e simbolos 



