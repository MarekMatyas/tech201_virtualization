#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable
sudo apt-get install python -y

# Delete the  default configuration of nginx
sudo rm /etc/nginx/sites-available/default
# Copy the newly configured file (reverse_provision) into the default folder 
sudo cp app/reverse_provision /etc/nginx/sites-available/default
#Restart nginx
sudo systemctl restart nginx -y


# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g