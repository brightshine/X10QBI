#!/bin/sh

IP=${1}
USER='ADMIN'
PASSWD='ADMIN'

CMD_PREFIX="ipmitool -H ${IP} -U ${USER} -P ${PASSWD} raw "

# Set T1FMR ~ T4FMR to 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x03 0x00 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x03 0x01 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x03 0x02 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x03 0x03 0x00

${CMD_PREFIX} 0x30 0x91  0x5c 0x03 0x07 0x00

# Set T5FMR ~ T10FMR to 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x00 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x01 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x02 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x03 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x04 0x00
${CMD_PREFIX} 0x30 0x91  0x5c 0x04 0x05 0x00


