#!/bin/sh

SERVER_LISTS_DIR=/home/a-mcleanma/server_lists

for i in `cat $SERVER_LISTS_DIR/linux.serverlist`
do 
	echo $i
	rosh -n $i -l root "/opt/compaq/hpacucli/bld/hpacucli ctrl all show config | grep physical | wc -l | grep -v 6"
done
