#!/bin/bash

echo "Starting fzf installation..."

# Method 1: Install via apt
echo "Trying apt..."
if sudo apt update && sudo apt install -y fzf; then
  echo "Installed fzf using apt."
  exit 0
else
  echo "apt failed. Trying next method..."
fi

# Method 2: Install via git clone
echo "Trying git clone..."
if git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all; then
  echo "Installed fzf using git clone."
  exit 0
else
  echo "git clone failed. Trying next method..."
fi

# Method 3: Install via snap
echo "Trying snap..."
if sudo snap install fzf; then
  echo "Installed fzf using snap."
  exit 0
else
  echo "snap install also failed."
fi

echo "All installation methods failed. Please check your internet connection or permissions."
exit 1

