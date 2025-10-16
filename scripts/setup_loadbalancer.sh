#!/bin/bash
set -e
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

sudo cp ~/nginx-proxy-lb-demo/nginx/load-balancer.conf /etc/nginx/sites-available/
sudo rm -f /etc/nginx/sites-enabled/default
sudo ln -sf /etc/nginx/sites-available/load-balancer.conf /etc/nginx/sites-enabled/

sudo nginx -t && sudo systemctl restart nginx
echo "✅ Load balancer setup complete"

