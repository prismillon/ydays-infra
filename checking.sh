#!/bin/bash

# checking.sh
# Prismillon
# script to check for updates, maybe apply them 
# et des trucs chiant demandé par romain alors qu'en vrai on peut juste installer neofetch


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

if echo $* | grep -e "--update" -q
then
    dnf update -y
else
    dnf list --upgrades
fi

echo "      _               _    _                   _     "
echo "     | |             | |  (_)                 | |    "
echo "  ___| |__   ___  ___| | ___ _ __   __ _   ___| |__  "
echo " / __| '_ \ / _ \/ __| |/ / | '_ \ / _\` | / __| '_ \ "
echo "| (__| | | |  __/ (__|   <| | | | | (_| |_\__ \ | | |"
echo " \___|_| |_|\___|\___|_|\_\_|_| |_|\__, (_)___/_| |_|"
echo "                                    __/ |            "
echo "                                   |___/             "

echo "hostname is: $(hostname)"
echo "linux kernel version: $(uname -r)"
echo "current date: $(date)"
echo "current ipv4: $(ip a | grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | head -n 2 | tail -n 1)"
echo "current ipv6: $(ip a | grep -Eo "(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))" | head -n 2 | tail -n 1)"
echo "current dns server: $(cat /etc/resolv.conf | grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}")"
journalctl --vacuum-time=1s
echo "firewalld is: $(firewall-cmd --state)"
