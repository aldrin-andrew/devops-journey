# 👥 Task 05: Users, Groups, Permissions, and Sudo

### 🎯 Goal:
1. Create users and groups
2. Set file and directory permissions
3. Configure sudo privileges
4. Clean up after task

---

## ✅ Task Steps:

### 1. 👥 Create Users and Groups

- Create a group named `adminteam`
- Create users: `devops`, `sysadmin`, and `developer`
- Add `devops` and `sysadmin` to the `adminteam` group

### 2. 📁 File and Directory Management

- Create a directory: `/opt/devops-app`
- Set owner to `devops` and group to `adminteam`
- Create subdirectory `secure-data` inside it
- Create file `config.txt` inside `secure-data`

### 3. 🔐 Configure Permissions

| Path | Permissions |
|------|-------------|
| `/opt/devops-app` | Owner: rwx, Group: rx, Others: rx |
| `/opt/devops-app/secure-data` | Owner: rwx, Group: rwx, Others: --- |
| `config.txt` | Owner: rw, Group: r, Others: --- |

### 4. ⚙️ Sudo Config

- Allow **adminteam** to run **all commands without password**
- Allow **sysadmin** to run **only network-related commands** (`ifconfig`, `netstat`)
- **developer** should have **no sudo** privileges

### 5. 🧹 Cleanup

- Remove users, group, files and folders created above

---
