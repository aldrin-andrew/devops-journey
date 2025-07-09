#!/bin/bash

# For Firefox (APT)
dpkg -S $(which firefox)
apt list --installed firefox

# For Slack (Snap or .deb)
snap list | grep slack
dpkg -l | grep slack

# For Chrome
dpkg -l | grep chrome

# Check the latest available version
apt list --upgradable