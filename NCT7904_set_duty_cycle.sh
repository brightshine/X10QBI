#!/bin/sh

IP=${1}
controller=${2}
duty_cycle=${3}
[ -z ${4} ] && USER='ADMIN' || USER=${4}
[ -z ${5} ] && PASSWD='ADMIN' || PASSWD=${5}

[ $# -lt 3 ] && echo "usage: ${0} IP controller duty_cycle [username] [passwd]" && exit 1

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

${CMD_PREFIX} 0x30 0x91 0x5c 0x03 0x1${controller} 0x${duty_cycle}
