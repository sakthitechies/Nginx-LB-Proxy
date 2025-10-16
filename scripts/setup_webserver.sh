#!/bin/bash
set -e
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

# Copy website files (assuming repo cloned in /home/ubuntu)
sudo cp -r ~/Nginx-LB-Proxy/app/* /var/www/html/

echo "✅ Web server setup complete on $(hostname)"

