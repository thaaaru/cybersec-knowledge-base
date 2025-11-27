# Linux Operating System

**Created:** 2025-11-25
**Tags:** #operating-systems #linux #unix #open-source

## Description

Linux is an open-source, Unix-like operating system that powers most servers, cloud infrastructure, and security tools. Mastery of Linux is essential for cybersecurity professionals.

## Key Concepts

### Major Distributions
- **Debian-based**: Ubuntu, Kali Linux, Parrot OS
- **Red Hat-based**: RHEL, CentOS, Fedora
- **Arch-based**: Arch Linux, Manjaro
- **SUSE-based**: openSUSE, SUSE Enterprise
- **Security-focused**: Kali Linux, Parrot Security OS

### Core Components
- **Kernel**: Core of the operating system
- **Shell**: Command interpreter (bash, zsh, sh)
- **Init system**: systemd, SysV, Upstart
- **Package managers**: apt, yum, dnf, pacman
- **File system**: ext4, XFS, Btrfs

### File System Hierarchy
```
/       - Root directory
/bin    - Essential binaries
/etc    - Configuration files
/home   - User home directories
/var    - Variable data (logs)
/tmp    - Temporary files
/opt    - Optional software
/usr    - User programs
```

## Security Features

### Built-in Security
- **SELinux**: Security-Enhanced Linux (mandatory access control)
- **AppArmor**: Application security framework
- **iptables/nftables**: Firewall rules
- **sudo**: Controlled privilege escalation
- **File permissions**: User/Group/Other permissions
- **SSH**: Secure remote access

### Security Advantages
- Open source code review
- Principle of least privilege by default
- Strong user separation
- Powerful command-line tools
- Extensive security tools available

## Related Topics

- [[Windows Operating System]]
- [[MacOS Operating System]]
- [[Command Line Interface]]
- [[Permission Structures]]
- [[SSH]]
- [[iptables]]
- [[File CRUD Operations]]
- [[CompTIA Linux+]]

## Essential Commands

```bash
# File operations
ls, cd, pwd, cp, mv, rm, mkdir
find, grep, cat, less, head, tail

# Permissions
chmod, chown, chgrp

# System management
ps, top, htop, systemctl
service, journalctl

# Network
ifconfig, ip, netstat, ss
curl, wget

# Package management
apt update/install (Debian)
yum/dnf install (Red Hat)

# User management
useradd, usermod, passwd
sudo, su
```

## Security Hardening

- Regular updates (apt update && apt upgrade)
- Disable root login via SSH
- Use SSH keys instead of passwords
- Configure firewall (iptables/ufw)
- Enable SELinux/AppArmor
- Minimal installation (reduce attack surface)
- Regular security audits
- Implement fail2ban for brute force protection

## Practical Applications

- Penetration testing with Kali Linux
- Server administration and hardening
- Security tool development
- Incident response and forensics
- Network monitoring and analysis

## Learning Resources

- Man pages (man command)
- /usr/share/doc documentation
- [[TryHackMe]] - Linux rooms
- [[HackTheBox]] - Linux machines

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
