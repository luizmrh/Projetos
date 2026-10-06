#!/bin/bash



#VALIDAÇÃO DE CONTEUDO DOS ARQUIVOS
# -s = verifica se o  arquivo tem tamanho maior que zero
# -e = verifica se o caminho existe
# -d = verifica se a pasta de arquivos existe


total=0
com_conteudo=0
vazios=0



if  [  -d arquivos  ]

then

        echo " Pasta encontrada"


for arquivo in arquivos/*

do
        ((total++))
         nome=$( basename  $arquivo )





if  [ -s $arquivo ]
        then
                ((com_conteudo++))
                echo "$nome ESTA COM CONTEUDO"
                echo "Arquivo recebido: $nome as $(date)" >> logs/monitor.log

else
        ((vazios++))
        echo "$nome  VAZIO"
fi
done

echo "Total de arquivos: $total"
echo "Arquivos com conteudo: $com_conteudo"
echo "Arquivos vazios: $vazios"


else
    echo "Pasta nao encontrada"
fi


