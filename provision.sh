#!/bin/bash

# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y

# Enable or Start Nginx

sudo systemctl enable nginx -y 

# Installing python software properties

sudo apt-get install python-software-properties

# Installing Node.js

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install pm2

sudo npm install pm2 -g

# Running the app 

cd app/

npm install

node app.js

