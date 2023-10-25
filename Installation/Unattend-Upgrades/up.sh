#!/bin/bash
echo installation de unattended-upgrades
apt update
apt upgrade
apt install unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades
echo "Configuration terminé"