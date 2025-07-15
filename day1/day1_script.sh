#!/bin/bash
mkdir ~/cli_day1
cd ~/cli_day1
touch a.txt b.txt
mkdir backups
cp a.txt backups/
mv b.txt b_renamed.txt
chmod 600 a.txt
chmod 755 b_renamed.txt
sudo apt list --upgradable > upgrade_list.txt
ls -l > result.txt
echo "✅ Day 1 complete! "

