#!/bin/bash

mplayer_log=/tmp/locucao_out

# verifica se o arquivo existe
while [ ! -f "$mplayer_log" ]
do
	sleep 1
done

arquivo=``
parado="0"
ultimo=""
aux=0

# verifica se o nome do arquivo é diferente de vazio
while [ $? ]; do
	ultimo=`tac $mplayer_log | grep "Playing " | cut -c 9- | rev | cut -c 2- | rev | head -n1`

	if [ -n "$ultimo" ]; then
		break
	fi

	sleep 1
done

# verifica se o nome do arquivo trocou e adiciona no log
while [ $? ]; do
	inicio=`tail -1 $mplayer_log`
	temp=`tac $mplayer_log | grep "Playing " | cut -c 9- | rev | cut -c 2- | rev | head -n1`

	if [ "$ultimo" != "$temp" ]; then
		hora=`date +%d/%m/%Y-%H:%M:%S`

		if [ "$parado" != "1" ]; then
			echo $hora $ultimo
			echo $hora $ultimo >> /var/log/radio/radio.log
			
		fi

		ultimo=$temp
		aux=0
		parado="0"
	fi

	if [ ! -n "$inicio" ]; then
		if [ "$aux" == 1 ] && [ -n "$hora" ]; then
			echo $hora $ultimo
			echo $hora $ultimo >> /var/log/radio/radio.log
			parado="1"
			#ultimo=$arquivo
		fi

		if [ "$aux" == 0 ] && [ -n "$hora" ]; then
			hora=`date +%d/%m/%Y-%H:%M:%S`
		fi

		aux=$((aux + 1))
		#echo "parad" $aux
	fi


	#echo ${#inicio}
	sleep 1
done
