#!/bin/bash
sudo modprobe nbd max_part=8

echo "Mounting $1...";
if ! sudo qemu-nbd --connect=/dev/nbd0 "$1"; then
    exit 1
fi

echo "Press enter when you want to unmount again"
read;

while ! sudo qemu-nbd --disconnect /dev/nbd0 ; do
    echo "Press enter to try unmount again"
    read
done

while ! sudo rmmod nbd; do
    echo "Retrying in 1 second..."
    sleep 1
done
