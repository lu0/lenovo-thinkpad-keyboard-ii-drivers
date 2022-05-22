#!/bin/bash
for i in /lib/modules/*/build; do
    KDIR="$i" make clean
    KDIR="$i" make -j "$(nproc)"
    sudo KDIR="$i" make modules_install
done
