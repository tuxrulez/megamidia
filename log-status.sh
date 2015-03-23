#!/bin/bash
# Script de Logs:
# Features: 
#	- Audiencia
#	- IP Externo
#	- Rsync Logs
#	- Script Comum para todas as Redes de Radio
#TODO: Gildecio E Barboza <gildecio@gmail.com.br>
# 12 de Nov 2014

# Muda permissao web
chown -R radiob. /var/www/
chown -R radiob. /var/log/radio

locate="/var/log/radio"
audiencia="/var/log/logs_temp"

if [ ! -d /var/log/temp_audiencia ]; then
	mkdir /var/log/temp_audiencia
fi

ip=`cat /usr/local/bin/radio-update.sh | grep ip= | cut -d '"' -f2 | head -n1`
hora=`cat /usr/local/bin/radio-update.sh | grep hora= | cut -d '"' -f2`
rede=`cat /var/www/config.inc.php | grep rede | cut -d "'" -f2`
loja=`cat /var/www/config.inc.php | grep loja | cut -d "'" -f2`
data=`date`
tempo=`uptime | cut -d "," -f1`
ip_loja=`ifconfig | grep 'inet' | cut -d ":" -f2 | head -n1 | cut -d " " -f2`
mask_loja=`ifconfig | grep "inet" | head -n1 | cut -d ":" -f4`
gateway=`route -n | grep UG | head -n 1 | cut -b17- | cut -f1 -d" "`
data_sql=`stat /var/www/radio.sql | grep Modify | tail -n1 | cut -d " " -f2`
data_zip=`stat /var/www/radio.zip | grep Modify | tail -n1 | cut -d " " -f2`

# Cria o arquivo de log de status da CPU
echo "RESUMO - LOGS - MegaMidia Data: 29 Ago 2014" > ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo "====[ Setup da Maquina ]====" >> ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo Rede =$rede >> ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo Loja =$loja >> ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo DataCenter =$ip >> ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo ServidorHora =$hora >> ${locate}/${rede}_${loja}_status.log
echo "" >> ${locate}/${rede}_${loja}_status.log
echo IP =$ip_loja >> ${locate}/${rede}_${loja}_status.log

echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo MascaraRede =$mask_loja >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo Gateway =$gateway >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "====[ Dados da Maquina ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo Data =$data >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo Uptime =$tempo >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo Data SQL =$data_sql >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo Data ZIP =$data_zip >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
free -m | head -n2 >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
echo "VERSAO SISTEMA: `/bin/cat /etc/VERSAO`" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ Crontab da Maquina ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/cat /etc/crontab >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ Tamanho do Banco Musical ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
du -h /usr/local/radio/generos/musical/ >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ Diretorio Musical ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/radio/generos/musical/ >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ Linux Version ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/cat /proc/version >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ HD ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
df -h >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ Memoria ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
free -m >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ Processador ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/cat /proc/cpuinfo  >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ IP ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/sbin/ifconfig >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ Gateway ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/sbin/route -n >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "====[ Scripts da Maquina ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "[ Diretorio: /usr/local/bin/ ] " >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/bin/ >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log


/bin/echo "[ Diretorio: /usr/local/etc/ ] " >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/etc/ >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "[ Diretorio: /usr/local/scripts/ ] " >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/scripts/ >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ Conteudo Comercial ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/radio/generos/comercial/* | grep mp3 >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ Conteudo Musical ]====" >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log
/bin/ls -lh /usr/local/radio/generos/musical/* >> ${locate}/${rede}_${loja}_status.log
/bin/echo "" >> ${locate}/${rede}_${loja}_status.log

/bin/echo "====[ IP Externo ]====" >> ${locate}/${rede}_${loja}_status.log
externo=`curl ifconfig.me`
#externo=`wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//' `
/bin/echo "IP Externo = $externo" >> ${locate}/${rede}_${loja}_status.log

# Compacta o arquivo de log recem criado
/usr/bin/zip -qj ${locate}/${rede}_${loja}_status ${locate}/${rede}_${loja}_status.log
/usr/bin/zip -qj ${locate}/${rede}_${loja}_audiencia-`date +%d%m%y` ${audiencia}/*.txt

# Envia o arquivo de log para o server
rsync -aq --timeout=180 --password-file=/etc/radio.update ${locate}/*.zip rsync://${rede}@${ip}:/${rede}_logs
# Exclui os arquivos que estao no diretorio de log
cp -a /var/log/radio/*audiencia* /var/log/temp_audiencia/
rm -f /var/log/radio/*.zip
rm -f ${audiencia}/*.txt
