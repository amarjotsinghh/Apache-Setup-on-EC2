#!/bin/bash

# Update the package list
sudo apt update -y

# Install Apache2
sudo apt install apache2 -y

# Ensure Apache starts on boot
sudo systemctl enable apache2

# Start Apache if it is not already running
sudo systemctl start apache2

# Print the status of Apache2
sudo systemctl status apache2

# Firewall setup: Allow traffic on port 80 (HTTP)
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable
