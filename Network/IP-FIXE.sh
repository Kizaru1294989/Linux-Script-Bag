#!/bin/bash

# Récupérer l'adresse IP et le masque de la carte réseau "ens192"
interface="ens192"
ip_info=$(ip a | grep "$interface:" -A2 | tail -n1 | awk '{print $2}')

# Afficher les résultats
echo "Carte réseau : $interface"
echo "Adresse IP et masque : $ip_info"
