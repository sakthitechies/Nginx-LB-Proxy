#!/bin/bash
set -e
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

sudo cp ~/Nginx-LB-Proxy/nginx/forward-proxy.conf /etc/nginx/sites-available/
sudo ln -sf /etc/nginx/sites-available/forward-proxy.conf /etc/nginx/sites-enabled/

sudo nginx -t && sudo systemctl restart nginx
echo "✅ Forward proxy setup complete"

