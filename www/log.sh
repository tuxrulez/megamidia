#!/bin/bash

mplayer_log=/tmp/playlist_out

# verifica se o arquivo existe
while [ ! -f "$mplayer_log" ]
do
	sleep 1
done

arquivo=``

# verifica se o nome do arquivo é diferente de vazio
while [ $? ]; do
	arquivo=`tac $mplayer_log | grep "Playing " | cut -c 9- | rev | cut -c 2- | rev | head -n1`

	if [ -n "$arquivo" ] && [ "$arquivo" != "/var/www/mudo.wav" ]; then
		break
	fi

	sleep 1
done

# verifica se o nome do arquivo trocou e adiciona no log
while [ $? ]; do
	temp=`tac $mplayer_log | grep "Playing " | cut -c 9- | rev | cut -c 2- | rev | head -n1`

	if [ "$arquivo" != "$temp" ] && [ "$temp" != "/var/www/mudo.wav" ]; then
		hora=`date +%d/%m/%Y-%H:%M:%S`
		
		echo $hora $arquivo
		echo $hora $arquivo >> /var/log/radio/radio.log

		arquivo=$temp
	fi
	
	sleep 1
done
