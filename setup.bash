#!/bin/bash -xve
#written by Matsumotokokoki

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/tt*

echo 0 > /dev/rtmotoren0
