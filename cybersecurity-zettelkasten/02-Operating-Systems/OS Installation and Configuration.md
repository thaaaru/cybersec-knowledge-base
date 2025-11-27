# OS Installation and Configuration

**Created:** 2025-11-25
**Tags:** #operating-systems #installation #configuration #setup

## Description

Proper OS installation and configuration is fundamental to system security. This includes understanding installation methods, initial setup, and security hardening from the start.

## Key Concepts

### Installation Methods
- **Clean install**: Fresh OS installation
- **Upgrade install**: Preserving existing data
- **Network install**: PXE boot, network deployment
- **Virtualization**: VM installation
- **Dual boot**: Multiple OS on one machine
- **Live boot**: Running from removable media

### Pre-Installation Planning
- Hardware compatibility check
- Partition planning and disk layout
- Backup existing data
- Installation media preparation
- License and activation planning

### Installation Process
1. Boot from installation media
2. Partition and format drives
3. Select installation options
4. Configure initial settings
5. Install bootloader
6. First boot configuration
7. Update and patch system

### Initial Configuration
- **Network settings**: IP address, DNS, gateway
- **User accounts**: Admin and standard users
- **System updates**: Apply latest patches
- **Security settings**: Firewall, antivirus
- **Regional settings**: Time zone, language
- **Services**: Enable/disable as needed

## Security Considerations

### Secure Installation
- Verify installation media integrity (checksums)
- Disconnect from network during installation (if possible)
- Use full disk encryption from start
- Create strong passwords
- Minimal installation (reduce attack surface)
- Disable unnecessary services

### Post-Installation Hardening
1. Apply all security updates
2. Configure firewall rules
3. Enable security features (SELinux, AppArmor, etc.)
4. Remove unnecessary software
5. Configure logging and auditing
6. Set up backup systems
7. Implement monitoring

### Version Considerations
- Long-Term Support (LTS) vs. Rolling release
- Feature updates vs. security updates
- Compatibility with hardware and software
- Enterprise vs. consumer versions

## Related Topics

- [[Windows Operating System]]
- [[Linux Operating System]]
- [[MacOS Operating System]]
- [[Virtualization Technologies]]
- [[Backup and Resiliency]]
- [[Permission Structures]]
- [[Defense in Depth]]

## Best Practices

### Windows
- Use Windows Pro/Enterprise for security features
- Enable BitLocker during installation
- Configure Windows Update properly
- Use local account during install, join domain later

### Linux
- Use LVM for flexible disk management
- Separate partitions (/home, /var, /tmp)
- Install only required packages
- Configure package repositories securely

### MacOS
- Create standard user account (not admin)
- Enable FileVault immediately
- Configure firmware password
- Review privacy settings

## Practical Applications

- Building secure baseline images
- Automated deployment systems
- Lab environment setup
- Incident response and recovery
- Compliance with security standards

## Common Mistakes to Avoid

- Using default passwords
- Skipping updates after installation
- Installing unnecessary software
- Not enabling encryption
- Improper partition sizing
- Not documenting configuration

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
