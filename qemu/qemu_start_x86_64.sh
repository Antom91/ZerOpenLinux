#!/bin/bash

# qemu-img convert -f raw -O qcow2 openwrt-21.02.1-x86-64-generic-squashfs-combined.img openwrt.qcow2

qemu-system-x86_64 -M q35 -drive file=openwrt.qcow2,id=d0,if=none,bus=0,unit=0 -device ide-hd,drive=d0,bus=ide.0 -nic user,hostfwd=tcp::21-:22
