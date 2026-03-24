#!/bin/bash

sudo apt update -y
sudo apt install nginx -y
sudo ufw allow 'Nginx Full'
sudo systemctl enable nginx
sudo systemctl start nginx

echo "<h1>Servidor Nginx configurado automáticamente</h1>" | sudo tee /var/www/html/index.html
