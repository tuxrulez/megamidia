#!/bin/bash

# 2015-02-24

# Gildecio E Barboza gildecio@gmail.com
rede=`cat /var/www/config.inc.php | grep rede | cut -d "'" -f2`
musical="banco_$rede"
ip=`cat /usr/local/bin/radio-update.sh | grep ip= | cut -d '"' -f2 | head -n1`

x=`rsync -qa --timeout=180 --password-file=/etc/radio.update rsync://$rede@$ip:/$rede/sql /opt/bla`
if [ $? == 0 ]; then
	banco=`/usr/bin/rsync -razv --copy-links --delete-after --password-file=/etc/radio.update rsync://$musical@$ip:/$musical/ /usr/local/radio/generos/musical`
else
	echo "nao funcionando `date`" > /Xerro_rsync_musical.txt
	rm -f /erro_rsync_musical.txt 2> /dev/null
fi
