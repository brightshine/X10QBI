#!/bin/sh

IP=${1}
duty_cycle=${2}
[ -z ${3} ] && USER='ADMIN' || USER=${3}
[ -z ${4} ] && PASSWD='ADMIN' || PASSWD=${4}

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

${CMD_PREFIX} 0x30 0x91 0x5c 0x03 0x10 0x${duty_cycle}
