# MacOS Operating System

**Created:** 2025-11-25
**Tags:** #operating-systems #macos #apple #unix

## Description

MacOS is Apple's Unix-based operating system for Mac computers. It combines Unix power with user-friendly design and is increasingly common in enterprise environments.

## Key Concepts

### Architecture
- **Darwin**: Unix-based core (BSD and Mach kernel)
- **XNU Kernel**: Hybrid kernel architecture
- **Cocoa**: Application framework
- **Aqua**: Graphical user interface

### Core Components
- **Terminal**: Unix command-line interface
- **Finder**: File management GUI
- **Keychain**: Password and certificate management
- **Spotlight**: System-wide search
- **Time Machine**: Backup system

### File System
- **APFS** (Apple File System): Modern, optimized for SSDs
- **HFS+**: Legacy file system
- **Directory structure**: Similar to Linux with some differences

### Security Features
- **Gatekeeper**: App verification and code signing
- **FileVault**: Full disk encryption
- **XProtect**: Built-in malware detection
- **System Integrity Protection (SIP)**: Protects system files
- **Secure Enclave**: Hardware security for encryption keys
- **T2 Security Chip**: Secure boot and encryption

## Security Considerations

### Strengths
- Unix-based security model
- Code signing and app sandboxing
- Hardware-level security features
- Integrated encryption solutions
- Regular security updates

### Vulnerabilities
- Increasing malware targeting macOS
- Social engineering attacks
- Supply chain attacks via third-party apps
- Privilege escalation vulnerabilities
- Legacy software vulnerabilities

## Related Topics

- [[Linux Operating System]] - Similar Unix foundation
- [[Windows Operating System]]
- [[Command Line Interface]]
- [[Permission Structures]]
- [[SSH]]
- [[File CRUD Operations]]

## Common Commands

MacOS supports most Linux/Unix commands:

```bash
# File operations
ls, cd, pwd, cp, mv, rm
find, grep, cat, less

# System information
sw_vers
system_profiler
diskutil

# Network
ifconfig, netstat
networksetup

# Package management
brew (Homebrew - third party)

# Security
csrutil (SIP management)
spctl (Gatekeeper)
```

## Security Hardening

- Enable FileVault disk encryption
- Configure firewall (Security & Privacy settings)
- Enable Gatekeeper for app verification
- Keep system and apps updated
- Use strong passwords and enable MFA
- Review Privacy settings
- Disable unnecessary sharing services
- Regular backups with Time Machine
- Secure SSH configuration

## Practical Applications

- MacOS security assessments
- Enterprise Mac management
- Incident response on macOS systems
- Development environment security

## Unique macOS Considerations

- App Store vs. third-party installation
- Code signing requirements
- Notarization for distributed apps
- Rosetta 2 (Intel to ARM translation)
- M1/M2/M3 ARM architecture security

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
