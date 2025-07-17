#!/bin/bash

# === User Management ===
sudo adduser devuser
sudo usermod -aG sudo devuser
sudo deluser devuser

# === UFW Firewall Configuration ===
sudo ufw enable
sudo ufw allow 22
sudo ufw status

# === IP Check for SSH Connection ===
ip a
hostname -I

# === SSH Server Setup and Local Login ===
sudo apt install openssh-server -y
sudo systemctl status ssh
sudo systemctl start ssh
ssh localhost

# === Check Connected Users ===
who

# === Termux (Mobile SSH Client) Commands ===
pkg update && pkg install openssh -y
ssh username@ip
whoami
pwd
uptime
lsb_release -a
