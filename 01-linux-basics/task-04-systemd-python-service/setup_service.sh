#!/bin/bash

SERVICE_NAME="myscript"
SERVICE_FILE="${SERVICE_NAME}.service"
TARGET_DIR="/etc/systemd/system/"
PYTHON_SCRIPT="/home/aldrin/Documents/devops-journey/01-linux-basics/task-04-systemd-python-service/myscript.py"

echo "Setting up $SERVICE_NAME..."

# Copying service file to systemd directory
sudo cp "$SERVICE_FILE " "$TARGET_DIR"

# Reload systemd
sudo systemctl daemon-reexec
sudo systemctl daemon-reload

# Enable and start service
sudo systemctl enable "$SERVICE_NAME"
sudo systemctl start "$SERVICE_NAME"

# Show status
sudo systemctl status "$SERVICE_NAME" --no-pager


echo "$SERVICE_NAME started and enabled"


# Wait before cleanup
read -p "? Please Enter to clean up the service (or Ctrl+C to skip)... "


# Stop and disable service
sudo systemctl stop "$SERVICE_NAME"
sudo systemctl disable "$SERVICE_NAME"

# Remove Service file
sudo rm -f "${TARGET_DIR}${SERVICE_FILE}"

echo "Cleaned up systemd service"


