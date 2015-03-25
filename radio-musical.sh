#!/bin/bash

# 2015-02-24

# Gildecio E Barboza gildecio@gmail.com
rede=`cat /var/www/config.inc.php | grep rede | cut -d "'" -f2`
musical="banco_$rede"
ip=`cat /usr/local/bin/radio-update.sh | grep ip= | cut -d '"' -f2 | head -n1`

# Efetua o sincronismo via RSYNC
banco=`/usr/bin/rsync -razv --copy-links --delete --password-file=/etc/radio.update rsync://$musical@$ip:/$musical/ /usr/local/radio/generos/musical`
