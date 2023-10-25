#!/bin/bash

ip_address=$(ip a | grep inet | awk '{print $2}' | head -n1)


subnet_mask=$(ip a | grep inet | awk '{print $2}' | head -n1 | cut -d/ -f2)

echo "Adresse IP de la carte réseau : $ip_address"
echo "Masque de sous-réseau : $subnet_mask"
