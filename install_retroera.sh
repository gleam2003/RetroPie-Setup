#!/usr/bin/env bash
# This file is part of The RetroERA Project
#
# The RetroERA Project is the legal property of its developers
#
sudo apt-get update
sudo apt-get -y install git dialog xmlstarlet joystick
modules=(
    'setup basic_install'
    'autostart enable'
)
if grep -q "rk3399" /etc/armbian-release; then
   platform="rk3399" 
fi
for module in "\${modules[@]}"; do
    sudo __platform=\$platform __nodialog=1 ./retropie_packages.sh \$module
done
rm -rf tmp
sudo apt-get clean
