#!/bin/bash

dev_device="/dev/sda1"

if [ ! -z ${1+x} ]; then 
    dev_device=$1
fi

sudo mkdir /test/
sudo mount "${dev_device}" /test

cd /test/

sudo mkdir /results/
sudo mount "/dev/sdb1" /results

sudo chmod ugo+rwx -R /results/
sudo chmod ugo+rwx -R /test/
