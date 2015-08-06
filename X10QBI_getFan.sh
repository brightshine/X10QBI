#!/bin/sh

IP=${1}
USER='ADMIN'
PASSWD='ADMIN'

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

${CMD_PREFIX} 0x30 0x90 0x5c 0x03 0x10 0x01
