#!/bin/bash
echo installation de "                    _   _                 _          _                                        _           
                   | | | |               | |        | |                                      | |          
  _   _ _ __   __ _| |_| |_ ___ _ __   __| | ___  __| |______ _   _ _ __   __ _ _ __ __ _  __| | ___  ___ 
 | | | | '_ \ / _` | __| __/ _ \ '_ \ / _` |/ _ \/ _` |______| | | | '_ \ / _` | '__/ _` |/ _` |/ _ \/ __|
 | |_| | | | | (_| | |_| ||  __/ | | | (_| |  __/ (_| |      | |_| | |_) | (_| | | | (_| | (_| |  __/\__ \
  \__,_|_| |_|\__,_|\__|\__\___|_| |_|\__,_|\___|\__,_|       \__,_| .__/ \__, |_|  \__,_|\__,_|\___||___/
                                                                   | |     __/ |                          
                                                                   |_|    |___/                           "
apt update
apt upgrade
apt install unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades
echo "Configuration terminé"