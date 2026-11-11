#!/bin/ash

echo "Welcome to Alpine Writer. Sit back and relax while I get you're system ready :3"
sleep 5
doas apk -U upgrade
doas apk add wordgrinder networkmanager networkmanager-tui mc nano figlet util-linux rsync dosfstools exfatprogs

doas rc-update add networkmanager

figlet Alpine Writer | doas tee /etc/motd

doas apk del figlet

echo "Rebooting now x3"
doas reboot
