#!/bin/bash

# === DAY 5: Create 'devops' user and enable SSH login with RSA keys ===

# --- [Terminal: Ubuntu machine] ---

# Step 1: Create a new user named 'devops'
sudo adduser devops

# Step 2: Create the .ssh directory in the devops home folder
sudo mkdir -p /home/devops/.ssh

# Step 3: Set secure permissions for the .ssh directory
sudo chmod 700 /home/devops/.ssh

# Step 4: Copy current user's public key to devops's authorized_keys
sudo cp ~/.ssh/id_rsa.pub /home/devops/.ssh/authorized_keys

# Step 5: Set proper ownership and permissions
sudo chown -R devops:devops /home/devops/.ssh
sudo chmod 600 /home/devops/.ssh/authorized_keys

# Step 6: (Optional) Restart SSH service
sudo systemctl restart ssh

# Step 7: Switch to the 'devops' user
echo "[✔] Setup completed. Switching to 'devops' user..."
su - devops

# ----------------------------------------------
# --- [Terminal: Termux on Phone] ---

# # Generate RSA key pair (if not already generated)
# ssh-keygen -t rsa

# # Connect to Ubuntu system via SSH as 'devops'
# ssh devops@<your-ubuntu-ip>

# Example (replace with actual IP):
# ssh devops@192.168.1.10

# ----------------------------------------------
# Notes:
# - Public key from Termux (~/.ssh/id_rsa.pub) must be added to Ubuntu.
# - Since key was already present on the Ubuntu system from previous days,
#   it was reused for devops without needing to transfer a new one.
