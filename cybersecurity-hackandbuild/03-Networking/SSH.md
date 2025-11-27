# SSH

**Created:** 2025-11-25
**Tags:** #networking #ssh #remote-access #protocols #security

## Description

SSH (Secure Shell) is a cryptographic network protocol for secure remote access, command execution, and file transfer over unsecured networks.

## Key Features

- **Encryption**: All communication encrypted
- **Authentication**: Multiple methods supported
- **Integrity**: Data tampering detection
- **Port**: Default TCP 22
- **Replaces**: Telnet, rlogin, rsh (all insecure)

## Authentication Methods

### Password Authentication
- User provides username/password
- Encrypted transmission
- Vulnerable to brute force
- Should be disabled in favor of keys

### Public Key Authentication (Preferred)
- Uses asymmetric cryptography
- Private key on client
- Public key on server (~/.ssh/authorized_keys)
- More secure than passwords
- Supports passphrase protection

### Certificate-Based
- SSH certificates (different from SSL/TLS)
- Central authority signs keys
- Better for large environments

### Other Methods
- Kerberos authentication
- GSSAPI authentication
- Two-factor authentication

## Common Uses

### Remote Administration
```bash
ssh user@hostname
ssh user@192.168.1.100
ssh -p 2222 user@host  # Custom port
```

### File Transfer
```bash
scp file.txt user@host:/path/
rsync -avz -e ssh local/ user@host:remote/
```

### SFTP
- Secure FTP over SSH
- Replaces insecure FTP
- Interactive file transfer

### Tunneling/Port Forwarding

**Local Port Forwarding**
```bash
ssh -L 8080:localhost:80 user@remote
# Access remote:80 via localhost:8080
```

**Remote Port Forwarding**
```bash
ssh -R 8080:localhost:80 user@remote
# Remote can access your localhost:80 via remote:8080
```

**Dynamic Port Forwarding (SOCKS Proxy)**
```bash
ssh -D 1080 user@remote
# Creates SOCKS proxy on port 1080
```

## SSH Configuration

### Server Config (/etc/ssh/sshd_config)
```
Port 22
PermitRootLogin no
PasswordAuthentication no
PubkeyAuthentication yes
X11Forwarding no
AllowUsers user1 user2
MaxAuthTries 3
LoginGraceTime 60
```

### Client Config (~/.ssh/config)
```
Host myserver
    HostName 192.168.1.100
    User admin
    Port 2222
    IdentityFile ~/.ssh/id_rsa
    ForwardAgent no
```

## Security Best Practices

### Server Hardening
1. **Change default port**: Use non-standard port
2. **Disable root login**: PermitRootLogin no
3. **Use key authentication**: Disable passwords
4. **Limit users**: AllowUsers directive
5. **Use fail2ban**: Block brute force attempts
6. **Keep updated**: Patch SSH vulnerabilities
7. **Strong ciphers**: Disable weak algorithms
8. **Monitor logs**: Watch /var/log/auth.log

### Client Security
1. **Protect private keys**: chmod 600 ~/.ssh/id_rsa
2. **Use passphrases**: Encrypt private keys
3. **Verify host keys**: Check fingerprints
4. **Disable agent forwarding**: Security risk
5. **Use SSH agent**: Avoid typing passphrase repeatedly
6. **Audit authorized_keys**: Remove old keys

## Key Management

### Generate Keys
```bash
# RSA (4096-bit recommended)
ssh-keygen -t rsa -b 4096 -C "user@email.com"

# Ed25519 (modern, recommended)
ssh-keygen -t ed25519 -C "user@email.com"

# ECDSA
ssh-keygen -t ecdsa -b 521
```

### Copy Key to Server
```bash
ssh-copy-id user@host
# Or manually:
cat ~/.ssh/id_rsa.pub | ssh user@host "cat >> ~/.ssh/authorized_keys"
```

### Key Locations
- Private keys: `~/.ssh/id_rsa`, `~/.ssh/id_ed25519`
- Public keys: `~/.ssh/id_rsa.pub`, `~/.ssh/id_ed25519.pub`
- Authorized keys: `~/.ssh/authorized_keys`
- Known hosts: `~/.ssh/known_hosts`

## Common Attacks

### Brute Force
- Automated password guessing
- **Defense**: Key auth, fail2ban, rate limiting

### Man-in-the-Middle
- Attacker intercepts first connection
- **Defense**: Verify host key fingerprints

### Stolen Keys
- Compromised private keys
- **Defense**: Passphrase protection, key rotation

## Troubleshooting

### Connection Issues
```bash
# Verbose output
ssh -v user@host
ssh -vv user@host  # More verbose
ssh -vvv user@host # Maximum verbosity

# Test connectivity
telnet host 22
nc -v host 22
```

### Permission Issues
```
# Correct permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 644 ~/.ssh/authorized_keys
chmod 644 ~/.ssh/known_hosts
```

## SSH vs. Alternatives

| Protocol | Encrypted | Port | Security | Use Case |
|----------|-----------|------|----------|----------|
| SSH | Yes | 22 | High | Remote admin, file transfer |
| Telnet | No | 23 | None | NEVER use |
| RDP | Yes | 3389 | Moderate | Windows remote desktop |
| VNC | Optional | 5900+ | Varies | Remote desktop viewing |

## Related Topics

- [[RDP]]
- [[FTP and SFTP]]
- [[SSL-TLS]]
- [[Linux Operating System]]
- [[Command Line Interface]]
- [[Penetration Testing]]
- [[VPN]]

## Practical Applications

- Linux server administration
- Automated deployments and scripts
- Git repository access (GitHub, GitLab)
- Jump boxes / bastion hosts
- Network device management (routers, switches)
- IoT device management

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
