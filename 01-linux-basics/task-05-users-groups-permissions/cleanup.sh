#!/bin/bash

# Stop any logged-in user processes
sudo pkill -KILL -u devops
sudo pkill -KILL -u sysadmin
sudo pkill -KILL -u developer

# Delete users
sudo userdel -r devops
sudo userdel -r sysadmin
sudo userdel -r developer

# Delete group
sudo groupdel adminteam

# Remove directories
sudo rm -rf /opt/devops-app

# Remove sudoers entries
sudo rm -f /etc/sudoers.d/adminteam
sudo rm -f /etc/sudoers.d/sysadmin-net

echo "Cleanup complete!"