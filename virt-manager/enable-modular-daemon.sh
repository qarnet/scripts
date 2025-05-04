#!/bin/bash

COMMAND=$1

if [[ -n $1 ]];
then :
else
    echo "Missing COMMAND (start, stop, enable, disable)"
fi

for drv in qemu interface network nodedev nwfilter secret storage; do
    sudo systemctl ${COMMAND} virt${drv}d.service;
    sudo systemctl ${COMMAND} virt${drv}d{,-ro,-admin}.socket;
done
