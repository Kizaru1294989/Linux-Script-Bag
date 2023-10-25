#!/bin/bash

# Récupérer le nom de la carte réseau
network_interface=$(ip route | grep default | awk '{print $5}')

# Récupérer l'adresse IP
ip_address=$(ip -4 -o addr show dev "$network_interface" | awk '{print $4}' | cut -d'/' -f1)

# Récupérer la passerelle (gateway)
gateway=$(ip route | grep default | awk '{print $3}')

# Afficher les informations
echo "Carte réseau : $network_interface"
echo "Adresse IP : $ip_address"
echo "Passerelle (Gateway) : $gateway"
