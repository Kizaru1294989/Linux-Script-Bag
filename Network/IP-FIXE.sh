#!/bin/bash

# Récupérer le nom de la carte réseau
network_interface=$(ip route | grep default | awk '{print $5}')

# Récupérer l'adresse IP et le masque en /24
ip_info=$(ip -4 -o addr show dev "$network_interface" | awk '$3 == "inet" {print $4}')

# Récupérer la passerelle (gateway)
gateway=$(ip route | grep default | awk '{print $3}')

# Concaténer l'adresse IP et le masque
ip_with_mask="$ip_info"

# Ajouter les informations au fichier /etc/network/interfaces
echo -e "auto lo\niface lo inet loopback\n" | sudo tee /etc/network/interfaces > /dev/null
echo -e "auto $network_interface\niface $network_interface inet static\n\taddress $ip_address\n\tnetmask $subnet_mask\n\tgateway $gateway" | sudo tee -a /etc/network/interfaces > /dev/null

# Redémarrer le réseau pour appliquer les modifications
sudo /etc/init.d/networking restart
