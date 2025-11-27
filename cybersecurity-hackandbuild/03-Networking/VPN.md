# VPN

**Created:** 2025-11-25
**Tags:** #networking #vpn #encryption #remote-access #security

## Description

VPN (Virtual Private Network) creates an encrypted tunnel over an untrusted network (typically the Internet), enabling secure remote access and private communication between networks.

## Types of VPNs

### Remote Access VPN
- **Purpose**: Connect individual users to corporate network
- **Use case**: Remote workers, traveling employees
- **Protocols**: SSL/TLS, IPSec, OpenVPN
- **Example**: Employee working from home

### Site-to-Site VPN
- **Purpose**: Connect entire networks together
- **Use case**: Branch offices, partner connections
- **Protocols**: IPSec, MPLS
- **Example**: HQ connecting to branch office

### Client-to-Site VPN
- **Purpose**: Remote client to corporate gateway
- **Common implementation**: Most corporate VPN solutions

## VPN Protocols

### IPSec (IP Security)
- **Layer**: Network layer (Layer 3)
- **Modes**: Transport mode, Tunnel mode
- **Components**: AH (Authentication Header), ESP (Encapsulating Security Payload)
- **Strength**: Industry standard, highly secure
- **Drawback**: Complex configuration

### SSL/TLS VPN
- **Layer**: Session/Application layer
- **Access**: Web browser-based possible
- **Example**: OpenVPN, Cisco AnyConnect
- **Strength**: Easy deployment, firewall-friendly
- **Use**: Common for remote access

### OpenVPN
- **Type**: Open-source SSL/TLS VPN
- **Platform**: Cross-platform support
- **Strength**: Highly configurable, secure
- **Port**: Typically 1194 UDP/TCP

### WireGuard
- **Type**: Modern VPN protocol
- **Strength**: Simple, fast, secure
- **Code**: Much smaller codebase than alternatives
- **Adoption**: Growing rapidly

### PPTP (Deprecated)
- **Status**: Obsolete, insecure
- **Reason**: Known vulnerabilities
- **Alternative**: Use IPSec or SSL VPN

### L2TP/IPSec
- **Type**: Layer 2 Tunneling Protocol with IPSec
- **Use**: Mobile VPN, legacy systems
- **Port**: UDP 500, 4500

## VPN Components

### VPN Client
- Software installed on user device
- Initiates connection
- Manages credentials

### VPN Server/Gateway
- Accepts VPN connections
- Authenticates users
- Routes traffic

### Tunnel
- Encrypted connection
- Encapsulates traffic
- Provides privacy

## Security Features

### Encryption
- Data confidentiality in transit
- AES-256 common standard
- Perfect Forward Secrecy (PFS)

### Authentication
- User identity verification
- Certificate-based authentication
- Multi-factor authentication
- RADIUS/LDAP integration

### Integrity
- Data tampering detection
- HMAC algorithms
- Prevents man-in-the-middle

## VPN Security Considerations

### Threats
- **VPN Credential Theft**: Compromised user accounts
- **Traffic Analysis**: Metadata leakage
- **DNS Leaks**: DNS queries outside tunnel
- **IPv6 Leaks**: IPv6 traffic bypassing VPN
- **Split Tunneling Risks**: Direct internet access
- **Malicious VPN Providers**: Logging, selling data

### Best Practices
1. **Strong Authentication**: MFA required
2. **Full Tunnel**: Force all traffic through VPN
3. **Kill Switch**: Block traffic if VPN drops
4. **DNS Configuration**: Use VPN provider's DNS
5. **Updated Clients**: Latest VPN software
6. **Logging**: Monitor VPN access
7. **Certificate Management**: Regular rotation

## VPN vs. Proxy vs. Tor

| Feature | VPN | Proxy | Tor |
|---------|-----|-------|-----|
| Encryption | Yes | Usually No | Yes |
| All Traffic | Yes | Application-specific | Application-specific |
| Speed | Moderate | Fast | Slow |
| Anonymity | Moderate | Low | High |
| Cost | Paid/Corporate | Free/Paid | Free |

## Common VPN Solutions

### Corporate VPN
- Cisco AnyConnect
- Palo Alto GlobalProtect
- Fortinet FortiClient
- Pulse Secure
- Check Point

### Consumer VPN
- NordVPN
- ExpressVPN
- ProtonVPN
- Mullvad

### Open Source
- OpenVPN
- WireGuard
- SoftEther
- StrongSwan (IPSec)

## Configuration Example

### OpenVPN Server (Basic)
```
port 1194
proto udp
dev tun
ca ca.crt
cert server.crt
key server.key
dh dh2048.pem
server 10.8.0.0 255.255.255.0
push "redirect-gateway def1"
push "dhcp-option DNS 8.8.8.8"
keepalive 10 120
cipher AES-256-CBC
user nobody
group nogroup
persist-key
persist-tun
```

## Use Cases

### Corporate Security
- Remote worker access
- Secure branch connectivity
- Partner network access
- Secure access to cloud resources

### Personal Privacy
- Public WiFi protection
- Geo-restriction bypass
- ISP surveillance avoidance
- Privacy enhancement

### IoT Security
- Secure device communication
- Remote device management
- Industrial control systems

## Performance Considerations

- **Encryption Overhead**: CPU usage for encryption
- **Latency**: Additional hops increase delay
- **Bandwidth**: VPN throughput limits
- **Protocol Choice**: UDP faster than TCP for VPN

## Related Topics

- [[SSH]] - Can be used for VPN tunneling
- [[SSL-TLS]]
- [[Wireless Technologies]] - VPN on public WiFi
- [[Zero Trust Architecture]]
- [[Multi-Factor Authentication]]
- [[Network Segmentation]]
- [[DMZ]]

## Troubleshooting

### Common Issues
- Authentication failures
- DNS resolution problems
- Split tunnel misconfiguration
- Certificate expiration
- Firewall blocking VPN ports
- MTU size problems

### Diagnostic Steps
1. Verify credentials
2. Check firewall rules
3. Test network connectivity
4. Verify certificates
5. Check logs
6. Test with different protocol/port

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
