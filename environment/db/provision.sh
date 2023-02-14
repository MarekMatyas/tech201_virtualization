#!/bin/bash

# To install the database we will need a release key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update -y
sudo apt-get upgrade -y

# Install mongodb
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

sudo systemctl start mongod
sudo systemctl enable mongod

# Remove the default configuration 
sudo rm /etc/mongod.conf

# Copy our new configuration file caled mongodb_conf into the mongod.conf file 
sudo cp environment/mongodb_conf /etc/mongod.conf

# Then simply restart and enable 
sudo systemctl restart mongod
sudo systemctl enable mongod