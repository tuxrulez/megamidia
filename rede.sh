#!/bin/bash
clear
echo " "
echo " "
echo " "
echo " __ Configurator Tabajara __ "
echo " "
echo -n "Voce vai usar o DATACENTER = srvdados.ddns.net ? : Sim ou Nao >> "; read x
if [ $x != "Sim" ]; then
	setup.sh
#else
fi
echo " "
rm -rf /usr/local/radio-raspberry >/dev/null 2>&1
rm -f /root/.viminfo
history -c
rede=`cat /var/www/config.inc.php | grep rede | cut -d "'" -f2`
loja=`cat /var/www/config.inc.php | grep loja | cut -d "'" -f2`
datacenter=`cat /usr/local/bin/radio-update.sh | grep ip | head -n1 | cut -d '"' -f2`
ip_loja=`ifconfig eth0 | grep inet | cut -d ":" -f2 | cut -d " " -f1`

echo "NOME DA REDE = $rede"
echo "NOME DA LOJA = $loja"
echo "IP DATACENTER = $datacenter"
echo "IP da LOJA = $ip_loja"
echo ""
echo ""
echo ""
echo -n "Estao corretas as informacoes? S/N >> "; read opc

if [ $opc = "S" ]; then
	echo "Hummm ... Vai tomar um cafe!"
else

echo -n "Qual a Rede: "; read rede
echo -n "Qual a Loja: "; read loja
echo -n "Rede DHCP ou FIXO: 
	1 = FIXO
	2 = DHCP : "; read IP
echo -n "Qual IP DATACENTER: "; read ip_datacenter
echo -n "Qual IP HORA: "; read ip_hora


TEMP="/tmp/.config"
cat << __EOF__ > $TEMP
<?php
\$rede = '$rede';
\$loja = '$loja';
?>
__EOF__

START="/tmp/.interfaces"
if [ $IP -eq 2 ]; then

cat << __EOF__ > $START
auto lo

iface lo inet loopback
iface eth0 inet dhcp

allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
__EOF__

else
echo -n "Qual IP Loja: "; read ip_loja
echo -n "Qual IP Mascara: "; read ip_mask
echo -n "Qual IP Gateway: "; read ip_gateway

cat << __EOF__ > $START
auto lo eth0

iface lo inet loopback
iface eth0 inet static
        address $ip_loja
        netmask $ip_mask
        gateway $ip_gateway     

#allow-hotplug wlan0
#iface wlan0 inet manual
#wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
#iface default inet dhcp
__EOF__
fi

TEMP="/tmp/.radio-update.sh"
# Constroi o arquivo radio-update.sh
echo -e "#!/bin/bash\n" > $TEMP
echo "# radio-update.sh: Atualizacao do Servidor de Radio da Loja - RASPBIAN" >> $TEMP
echo -e "# 2015-02-24\n" >> $TEMP
echo -e "# Gildecio E Barboza gildecio@gmail.com\n" >> $TEMP
echo -e "rede=\042$rede\042" >> $TEMP
echo -e "loja=\042$loja\042" >> $TEMP
echo -en "ip=\042" >> $TEMP
echo -e "$ip_datacenter\042" >> $TEMP
echo -en "hora=\042" >> $TEMP
echo -e "$ip_hora\042" >> $TEMP
echo -e "data=\`date +%Y%m%d\`" >> $TEMP
echo -e "reinicia=\042nao\042\n" >> $TEMP

cat /usr/local/etc/radio-update.body >> $TEMP

fi
echo "Entrando na MATRIX em 3..."
echo "Entrando na MATRIX em 2..."
echo "Entrando na MATRIX em 1..."
sleep 10
clear
echo ""
echo "Correndo para NARNIA "
echo "Ta com pressa ????"
sleep 1
echo ""
echo ""
echo -n "APLICAR as configuracoes? S/N "; read aplicar

if [ $aplicar == "N" ]; then
	echo "Voltando ao inicio de tudo :( ... "
	sleep 5 
	rede.sh
else
echo -n "Atualizar Conteudo : S/N ? "; read conteudo
if [ $conteudo == "S" ]; then
	echo "Isso vai impactar na REDE usando $ip_datacenter - Cancele com CRTL + C ou continue"
	sleep 5
	/usr/local/bin/radio-update.sh >/dev/null 2>&1
	cat /tmp/.interfaces > /etc/network/interfaces
	cat /tmp/.radio-update.sh > /usr/local/bin/radio-update.sh
	cat /tmp/.config > /var/www/config.inc.php
	sleep 5
	echo "Reiniciando a Maquina com as novas config."
	/usr/local/bin/gera_playlist.sh >/dev/null 2>&1 
else
	cat /tmp/.interfaces > /etc/network/interfaces
	cat /tmp/.radio-update.sh > /usr/local/bin/radio-update.sh
	cat /tmp/.config > /var/www/config.inc.php
	sleep 5
	echo "Reiniciando a Maquina com as novas config."
	/usr/local/bin/gera_playlist.sh >/dev/null 2>&1
fi
fi
