#!/bin/bash

echo "port=8080" > config.txt
echo "debug=true" >> config.txt

mkdir public_dir private_dir

echo "System log: $(date)" > report.txt
sudo chown $USER:$USER report.txt
chmod 644 report.txt

umask 027
echo "My secret data" > secret.txt
chmod 600 secret.txt

echo "✅ Day 2 script executed successfully "
