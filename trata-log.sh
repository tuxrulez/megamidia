#!/bin/bash
arquivo_log="/var/log/radio/radio.log"
DH=`date +%H`
rede=`cat /var/www/config.inc.php | grep "rede" | cut -d "'" -f2`
loja=`cat /var/www/config.inc.php | grep "loja" | cut -d "'" -f2`

x=`ls -1 /var/www/radio.zip`
if [ $? == 0 ]; then
	software="radio"
else
	software="nao detectado"
fi

cat $arquivo_log | while read line
	do
	filename="${line}"
	data=`echo $filename | cut -d "-" -f1 `
	hora=`echo $filename | cut -d "-" -f2 | cut -d " " -f1`
	midia=`echo $filename | cut -d " " -f2-10 | tr '[A-Z]' '[a-z]'`

x=`echo $midia | cut -d " " -f1`
if [ $x == "pao_minuto" ]; then
	tipo="comercial"
else
	tipo="Musical"
fi

TRATA=`echo $hora | cut -d ":" -f1`
## tratar data com valor mesma hora
if [ $DH == $TRATA ]; then
	echo "$software|$rede|$loja|$data|$hora|$midia|$tipo"  >> /usr/local/src/log/logs-$DH
fi
done
