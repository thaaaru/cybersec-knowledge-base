# Windows Operating System

**Created:** 2025-11-25
**Tags:** #operating-systems #windows #microsoft #desktop

## Description

Windows is Microsoft's proprietary operating system, dominant in enterprise desktop environments and essential knowledge for cybersecurity professionals.

## Key Concepts

### Windows Versions
- **Desktop**: Windows 10, Windows 11
- **Server**: Windows Server 2016/2019/2022
- **Legacy**: Windows 7, Windows 8/8.1 (end of support)

### Core Components
- **Registry**: Hierarchical database for configuration
- **Active Directory**: Directory services for networks
- **PowerShell**: Command-line shell and scripting language
- **Windows Defender**: Built-in antivirus and security
- **Event Viewer**: System and security logs

### File System
- **NTFS**: New Technology File System (primary)
- **FAT32**: Legacy compatibility
- **ReFS**: Resilient File System (servers)

### User Management
- **Local accounts**: Computer-specific users
- **Domain accounts**: Active Directory accounts
- **User Account Control (UAC)**: Privilege escalation prompts
- **Administrator vs. Standard user**

## Security Features

### Built-in Security
- **Windows Defender**: Antivirus and anti-malware
- **BitLocker**: Full disk encryption
- **Windows Firewall**: Host-based firewall
- **Credential Guard**: Credential protection
- **Device Guard**: Code integrity policies
- **Windows Hello**: Biometric authentication

### Security Vulnerabilities
- **CVEs**: Common vulnerabilities (SMB exploits, privilege escalation)
- **Patch management**: Regular updates critical
- **Legacy protocols**: SMBv1, NTLM vulnerabilities
- **Privilege escalation**: Common attack vector

## Related Topics

- [[Linux Operating System]]
- [[MacOS Operating System]]
- [[OS Installation and Configuration]]
- [[Permission Structures]]
- [[Command Line Interface]] - CMD and PowerShell
- [[Active Directory]] (would link if created)
- [[File CRUD Operations]]
- [[Penetration Testing]] - Windows exploitation

## Common Commands

```powershell
# User management
net user
Get-LocalUser

# Network
ipconfig
netstat
Test-Connection

# System information
systeminfo
Get-ComputerInfo

# File operations
dir, copy, move, del
Get-ChildItem, Copy-Item
```

## Security Hardening

- Disable unnecessary services
- Apply least privilege principle
- Enable Windows Firewall
- Configure security policies
- Regular patching and updates
- Use strong passwords and MFA
- Audit logging enabled
- Disable SMBv1

## Practical Applications

- Windows exploitation in penetration testing
- Incident response on Windows systems
- Active Directory security
- Windows forensics

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
