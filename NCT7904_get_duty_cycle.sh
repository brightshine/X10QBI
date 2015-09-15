#!/bin/sh

IP=${1}
[ -z ${2} ] && USER='ADMIN' || USER=${2}
[ -z ${3} ] && PASSWD='ADMIN' || PASSWD=${3}

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

${CMD_PREFIX} 0x30 0x90 0x5c 0x03 0x10 0x01
