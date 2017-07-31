#!/bin/sh

SERVER_LISTS_DIR=/home/a-mcleanma/server_lists

for i in `cat $SERVER_LISTS_DIR/sunos-megaraid.serverlist`
do 
	echo $i
	rosh -n $i -l root "/opt/MegaRAID/CLI/MegaCli -AdpAllInfo -aALL | /usr/sfw/bin/ggrep -A8 'Device Present' | egrep 'Degraded|offline|Critical|Failed'" | egrep -v ': 0' 
done
