#!/bin/bash
# Script que gera logs para o Audiencia da Radio
# feito por Gildecio E Barboza <gildecio@gmail.com>
rede=`cat /var/www/config.inc.php | grep "rede" | cut -d "'" -f2`
loja=`cat /var/www/config.inc.php | grep "loja" | cut -d "'" -f2`
LOG="/var/log/logs_temp/"
dir="/usr/local/src/log/"
(cd $dir;

ls -1 * | while read arquivo_log
        do
cat $arquivo_log | while read line
        do
        filename="${line}"
        software=`echo $filename | cut -d "|" -f1`
        rede=`echo $filename | cut -d "|" -f2`
        loja=`echo $filename | cut -d "|" -f3`
        data=`echo $filename | cut -d "|" -f4`
        hora=`echo $filename | cut -d "|" -f5`
        midia=`echo $filename | cut -d "|" -f6`
        tipo=`echo $filename | cut -d "|" -f7`

X=`echo ${midia} | cut -d "-" -f1`
if [ "$X" == "$data" ]; then
        echo "$software|$rede|$loja|$data|$hora|ERRO|ERRO" >> /var/log/logs_temp/${rede}-${loja}.txt
else
        echo "$software|$rede|$loja|$data|$hora|$midia|$tipo" >> /var/log/logs_temp/${rede}-${loja}.txt
fi

done
        rm $arquivo_log
done 
)
