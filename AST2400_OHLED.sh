#!/bin/sh

# Twincle OHLED for Aspeed 2400 chip

IP=${1}
[ -z ${2} ] && USER='ADMIN' || USER=${2}
[ -z ${3} ] && PASSWD='ADMIN' || PASSWD=${3}

[ $# -lt 1 ] && echo "usage: ${0} IP [username] [passwd]" && exit 1

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

while [ 1 ]
do        
	$CMD_PREFIX 0x30 0x70 0x65 0x00 
	sleep 1
	$CMD_PREFIX 0x30 0x70 0x65 0x01
	sleep 1
done     

