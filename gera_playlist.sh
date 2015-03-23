#!/bin/bash
pkill php
pkill mplayer
echo 'delete from arquivos; delete from esquemas; delete from generos; delete from grades; delete from playlists; delete from programacoes;' | mysql radio
(cd /var/www/; nohup ./update.php; nohup ./musical.php ; sleep 5; nohup ./player.php &)
sleep 10
reboot
