#!/bin/bash
for i in /lib/modules/*/build; do
    KDIR="$i" make -j $(nproc) clean
    KDIR="$i" make -j $(nproc)
    sudo KDIR="$i" make -j $(nproc) modules_install
done
