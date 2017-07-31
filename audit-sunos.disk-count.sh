#!/bin/sh

SERVER_LISTS_DIR=/home/a-mcleanma/server_lists

#for i in `cat $SERVER_LISTS_DIR/sunos-megaraid.serverlist`
#do 
#	echo $i
#	rosh -n $i -l root "/opt/MegaRAID/CLI/MegaCli -PDList -aALL | grep Raw | grep 279.396 | wc -l | grep -v 4"
#done

for i in `cat $SERVER_LISTS_DIR/sunos-storman.serverlist`
do 
	echo $i
	rosh -n $i -l root "/opt/StorMan/arcconf GETCONFIG 1 | grep Size | egrep '285686|286102|139890|140009' | wc -l | grep -v 6"
done
