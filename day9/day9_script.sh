#!/bin/bash

# Enable UFW
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH port
sudo ufw allow 22

# Allow HTTP and HTTPS
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Allow access from a specific IP
sudo ufw allow from 192.168.1.10

# Deny access from a specific IP
sudo ufw deny from 203.0.113.5

# Show firewall status
sudo ufw status verbose
