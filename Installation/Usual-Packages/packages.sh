#!/bin/bash
echo "Installation de packages BASIQUES"

echo "Les paquets suivants seront installés :"
echo "- netstat-nat"
echo "- python3"
echo "- pip"
echo "- vim"
echo "- curl"
echo "- fail2ban"
echo "- cpulimit"
echo "- dstat"
echo "- netcat"
echo "- nmap"
echo "- wireshark"
echo "- ufw"

read -p "Confirmez l'installation de ces paquets (y/N) : " confirm

if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    apt install -y netstat-nat
    apt install -y python3
    apt install -y python3-pip
    apt install -y vim
    apt install -y curl
    apt install -y fail2ban
    apt install -y cpulimit
    apt install -y dstat
    apt install -y netcat
    apt install -y nmap
    apt install -y wireshark
    apt install -y ufw
    echo "Installation terminée."
    echo "
███████ ██    ██  ██████  ██████ ███████ ███████ ███████ 
██      ██    ██ ██      ██      ██      ██      ██      
███████ ██    ██ ██      ██      █████   ███████ ███████ 
     ██ ██    ██ ██      ██      ██           ██      ██ 
███████  ██████   ██████  ██████ ███████ ███████ ███████                                                   
"
else
    echo "Installation annulée."
fi
