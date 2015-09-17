#!/bin/sh

IP=${1}
controller=${2}
[ -z ${3} ] && USER='ADMIN' || USER=${3}
[ -z ${4} ] && PASSWD='ADMIN' || PASSWD=${4}

[ $# -lt 2 ] && echo "usage: ${0} IP controller [username] [passwd]" && exit 1

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

${CMD_PREFIX} 0x30 0x90 0x5c 0x03 0x1${controller} 0x01
