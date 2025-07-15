#!/bin/bash

# Day 2 script - Files, directories, permissions, nano config

echo "[1] Creating day2 folder and moving into it..."
mkdir -p ~/linux-basics/day2/images
cd ~/linux-basics/day2 || exit
echo "Current directory: $(pwd)"

echo "[2] Creating files..."
touch config.txt secret.txt report.txt
ls -l config.txt secret.txt report.txt

echo "[3] Creating directories..."
mkdir public_dir private_dir
ls -ld public_dir private_dir

echo "[4] Setting permissions..."
chmod 644 config.txt
chmod 600 secret.txt
chmod 644 report.txt
chmod 755 public_dir
chmod 700 private_dir
ls -l

echo "[5] Changing ownership of secret.txt"
sudo chown "$USER":"$USER" secret.txt
ls -l secret.txt

echo "[6] Writing to config.txt using echo"
echo -e "# Sample config file\nport=8080\nserver_name=localhost" > config.txt
cat config.txt

echo "[7] Checking current umask value"
umask

echo "[8] Checking disk usage of current directory"
du -sh .

echo "[9] Showing folder structure with tree"
tree .

echo "Day 2 script finished."
