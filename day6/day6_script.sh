#!/bin/bash

# Generate SSH key pair with 4096-bit encryption and GitHub email
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Show existing keys in the .ssh directory
ls ~/.ssh

# Display the public key (copy this to GitHub SSH settings)
cat ~/.ssh/id_rsa.pub

# Test SSH connection to GitHub
ssh -T git@github.com

# Set proper permissions for the private key (for Linux systems)
chmod 600 ~/.ssh/id_rsa
