#!/bin/bash


# Create group
sudo groupadd adminteam

# Create users
sudo useradd -m devops
sudo useradd -m sysadmin
sudo useradd -m developer

#Add users to group
sudo usermod -aG adminteam devops
sudo usermod -aG adminteam sysadmin

# Create directory and set ownership
sudo mkdir -p /opt/devops-app/secure-data
sudo chown -R devops:adminteam /opt/devops-app

# Create file
sudo touch /opt/devops-app/secure-data/config.txt

# Set permissions
sudo chmod 755 /opt/devops-app
sudo chmod 770 /opt/devops-app/secure-data
sudo chmod 640 /opt/devops-app/secure-data/config.txt

# Configure sudo
echo "%adminteam ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/adminteam
echo "sysadmin ALL=(ALL) NOPASSWD:/sbin/ifconfig,/bin/netstat" | sudo tee /etc/sudoers.d/sysadmin-net

echo "Setup complete!"
