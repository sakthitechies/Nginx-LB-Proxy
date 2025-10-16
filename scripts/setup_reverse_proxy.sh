#!/bin/bash
set -e
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

sudo cp ~/nginx-proxy-lb-demo/nginx/reverse-proxy.conf /etc/nginx/sites-available/
sudo ln -sf /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/

sudo nginx -t && sudo systemctl restart nginx
echo "✅ Reverse proxy setup complete"

