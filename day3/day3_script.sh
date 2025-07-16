#!/bin/bash
echo "Day 3 - apt, snap, pip, curl"

# apt
sudo apt update
sudo apt install -y htop
htop
sudo apt remove -y htop

# snap
sudo snap install hello-world
hello-world
sudo snap remove hello-world

# pip
sudo apt install -y python3-pip
pip3 install requests
pip3 show requests
pip3 uninstall -y requests

# curl
curl -O https://raw.githubusercontent.com/git/git/master/README.md

echo "✅ Day 3 complete!"
