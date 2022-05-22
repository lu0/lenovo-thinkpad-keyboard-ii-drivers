#!/bin/bash
for i in /lib/modules/*/build; do
    KDIR="$i" make clean
    KDIR="$i" make
    sudo KDIR="$i" make modules_install
done
