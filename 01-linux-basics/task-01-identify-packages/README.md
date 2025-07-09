# Task: Identify Installed Software and Package Manager

## 🎯 Objective
Determine:
1. Which package manager (apt, snap, flatpak, etc.) was used to install software like Firefox, Chrome, Slack.
2. Whether the installed versions are the latest.

## 🔍 Steps Explained

- Use `dpkg -S` or `which` to identify software location.
- Use `apt list`, `snap list`, or `flatpak info` depending on the package source.
- Compare the installed version with the official version online or via `apt update`.

## 🔍 What is grep?
grep stands for Global Regular Expression Print.
It is used to search for text patterns inside files or command output.

## 📦 Package Managers Covered

- APT
- Snap
- Flatpak

See `commands.sh` for the exact commands used.