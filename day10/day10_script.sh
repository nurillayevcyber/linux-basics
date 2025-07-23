#!/bin/bash

# Install necessary tools
sudo apt update
sudo apt install -y htop net-tools

# Launch monitoring tool
htop

# Check listening ports
ss -tuln
netstat -tulpn | grep LISTEN

# Check open network files and connections
sudo lsof -i -P -n

# View recent logins
last

# Analyze sudo command usage
sudo grep "sudo" /var/log/auth.log

# Review system and authentication logs
sudo tail -n 20 /var/log/syslog
sudo tail -n 30 /var/log/auth.log

# Find files with SUID bit set
sudo find / -type f -perm -4000 2>/dev/null

# Find insecurely permissioned files
sudo find /home -type f -perm -777

# List installed packages
dpkg -l | less
apt list --installed | head -n 20
