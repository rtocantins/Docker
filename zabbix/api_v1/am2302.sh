#!/bin/bash

while true;
do
cd /tmp
rm -f /tmp/index.html*
wget -k 10.20.144.9 #> /dev/null
if [ $? -eq 0 ];then

export HSOIL=`grep kg  index.html |awk '{print $2}'`
zabbix_sender -z $ZBX_SERVER -s Pimental_Sitio_Paulo -k pH -o $HSOIL

else

echo "ERRO | Falha sensor umidade do solo | `date +%d-%m-%y-%H:%M` " >> /tmp/am2302.log

fi

sleep 300

done

exit 0

