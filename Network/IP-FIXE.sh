#!/bin/bash

# Récupérer le nom de la carte réseau
network_interface=$(ip route | grep default | awk '{print $5}')

# Récupérer l'adresse IP et le masque en /24
ip_info=$(ip -4 -o addr show dev "$network_interface" | awk '$3 == "inet" {print $4}')

# Récupérer la passerelle (gateway)
gateway=$(ip route | grep default | awk '{print $3}')

# Concaténer l'adresse IP et le masque
ip_with_mask="$ip_info"

# Afficher les informations
echo "Carte réseau : $network_interface"
echo "Adresse IP avec masque : $ip_with_mask"
echo "Passerelle (Gateway) : $gateway"
