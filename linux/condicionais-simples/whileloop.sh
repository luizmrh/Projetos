#!/bin/bash


numero=0

while [ $numero -lt 5 ]
do

	echo "Looping"
	echo "O valor é $numero"


# Saindo do loop


numero=$(($numero +1))
sleep 1

done

echo "Saiu do loop"
