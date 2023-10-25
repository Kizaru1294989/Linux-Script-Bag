#!/bin/bash
echo "Installation et configuration de SSH"
apt update
apt upgrade
apt install ssh

read -p "Entrez le port SSH souhaité (par défaut : 22) : " custom_port

if [ -z "$custom_port" ]; then
    custom_port=22
fi

if [ -f /etc/ssh/sshd_config ]; then
    sed -i "s/Port .*/Port $custom_port/" /etc/ssh/sshd_config
else
    echo "Le fichier de configuration SSH (/etc/ssh/sshd_config) n'a pas été trouvé."
fi

systemctl restart ssh

echo "Configuration terminée. SSH écoute maintenant sur le port $custom_port."
