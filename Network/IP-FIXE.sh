#!/bin/bash

# Récupérer l'adresse IP de la carte réseau "ens192"
interface="ens192"
ip_info=$(ip a | grep "$interface:" -A2 | sed -n 's/.*inet \([0-9.]\+\)\/[0-9]\+ .*/\1/p')

# Récupérer l'adresse IP de la passerelle (gateway)
gateway=$(ip route | grep default | awk '{print $3}')

# Afficher les résultats
echo "Carte réseau : $interface"
echo "Adresse IP : $ip_info"
echo "Passerelle (Gateway) : $gateway"
