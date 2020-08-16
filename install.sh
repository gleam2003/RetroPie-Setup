#!/bin/bash
sudo apt-get update
sudo apt-get -y install git dialog xmlstarlet joystick
modules=(
    'setup basic_install'
    'autostart enable'
)
for module in "\${modules[@]}"; do
    sudo __platform=rk3399 __nodialog=1 ./retropie_packages.sh \$module
done
rm -rf tmp
sudo apt-get clean
