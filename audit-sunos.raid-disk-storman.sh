#!/bin/sh

SERVER_LISTS_DIR=/home/a-mcleanma/server_lists

for i in `cat $SERVER_LISTS_DIR/sunos-storman.serverlist`
do 
	echo $i
	rosh -n $i -l root "/opt/StorMan/arcconf GETCONFIG 1 | egrep 'Segment|State|S.M.A.R.T' | egrep -v 'Present|Online|: 0|: No"
done
