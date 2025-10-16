Nginx LB and Forward, Reverse Proxy Setup

# NGINX Proxy and Load Balancer Demo

This project demonstrates:
- Hosting a simple static webpage on EC2
- Using NGINX as a reverse proxy
- Setting up NGINX as a load balancer
- Configuring NGINX as a forward proxy

## Architecture
Web1 + Web2 → NGINX Proxy → Users

## Steps
1. Launch 3 EC2 instances (Ubuntu)
2. Deploy web servers (scripts/setup_webserver.sh)
3. Configure NGINX reverse proxy (nginx/reverse-proxy.conf)
4. Configure NGINX load balancer (nginx/load-balancer.conf)
5. (Optional) Configure NGINX forward proxy (nginx/forward-proxy.conf)

