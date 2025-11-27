# FTP and SFTP

**Created:** 2025-11-25
**Tags:** #networking #ftp #sftp #file-transfer #protocols

## Description

FTP (File Transfer Protocol) and SFTP (SSH File Transfer Protocol) are used for transferring files over networks. SFTP is the secure alternative to FTP.

## FTP (Legacy, Insecure)

### Characteristics
- Port: 20 (data), 21 (control)
- Unencrypted transmission
- Clear-text credentials
- Active and passive modes

### Security Issues
- **No encryption**: Data and credentials in clear text
- **Vulnerable to sniffing**: Packet capture reveals everything
- **Man-in-the-middle**: Easy to intercept
- **Should not be used**: Use SFTP or FTPS instead

## SFTP (Secure Alternative)

### Characteristics
- Port: 22 (SSH)
- Encrypted transmission
- Secure authentication
- Part of SSH protocol suite

### Advantages
- All data encrypted
- Secure authentication (keys or passwords)
- Single port (firewall friendly)
- File integrity verification

### Usage
```bash
# Connect
sftp user@host

# Commands
put localfile
get remotefile
ls
cd directory
pwd
```

## FTPS (FTP Secure)

- FTP with SSL/TLS
- Port: 990 (implicit) or 21 (explicit)
- Different from SFTP
- More complex than SFTP

## Best Practices

1. **Never use plain FTP**: Use SFTP or FTPS
2. **Use key authentication**: For SFTP
3. **Restrict access**: Limit users and directories
4. **Monitor transfers**: Log all activities
5. **Disable anonymous access**: Require authentication

## Related Topics

- [[SSH]]
- [[SSL-TLS]]
- [[File CRUD Operations]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
