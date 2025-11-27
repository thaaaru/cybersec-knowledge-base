# TCP-IP Protocol Suite

**Created:** 2025-11-25
**Tags:** #networking #tcp-ip #protocols #internet

## Description

The TCP/IP (Transmission Control Protocol/Internet Protocol) suite is the fundamental communication protocol of the internet. It defines how data is packetized, addressed, transmitted, routed, and received.

## Key Protocols

### TCP (Transmission Control Protocol)
- **Type**: Connection-oriented, reliable
- **Features**:
  - Three-way handshake (SYN, SYN-ACK, ACK)
  - Sequencing and acknowledgment
  - Flow control
  - Error checking
  - Retransmission
- **Use cases**: HTTP, HTTPS, FTP, SSH, email
- **Port range**: 0-65535

### UDP (User Datagram Protocol)
- **Type**: Connectionless, unreliable
- **Features**:
  - No handshake
  - No delivery guarantee
  - No ordering
  - Lower overhead
  - Faster than TCP
- **Use cases**: DNS, DHCP, streaming, gaming, VoIP
- **Port range**: 0-65535

### IP (Internet Protocol)

#### IPv4
- **Format**: 32-bit address (e.g., 192.168.1.1)
- **Address classes**: A, B, C, D, E
- **Private ranges**:
  - 10.0.0.0/8
  - 172.16.0.0/12
  - 192.168.0.0/16
- **Special addresses**: 127.0.0.1 (localhost), 0.0.0.0 (any)

#### IPv6
- **Format**: 128-bit address (e.g., 2001:0db8::1)
- **Benefits**: Larger address space, better security
- **Adoption**: Growing but not universal

### ICMP (Internet Control Message Protocol)
- **Purpose**: Error reporting, diagnostics
- **Common uses**: ping, traceroute
- **Message types**: Echo request/reply, destination unreachable, time exceeded
- **Security**: Can be used for reconnaissance and attacks

## TCP Three-Way Handshake

```
Client                    Server
  |                         |
  |-------SYN-------------->|  (Synchronize)
  |                         |
  |<------SYN-ACK-----------|  (Synchronize-Acknowledge)
  |                         |
  |-------ACK-------------->|  (Acknowledge)
  |                         |
  |  Connection Established |
```

## TCP Connection Termination

```
Client                    Server
  |                         |
  |-------FIN-------------->|
  |                         |
  |<------ACK---------------|
  |                         |
  |<------FIN---------------|
  |                         |
  |-------ACK-------------->|
  |                         |
  | Connection Closed       |
```

## Common Port Numbers

### Well-Known Ports (0-1023)
- **20/21**: FTP (data/control)
- **22**: SSH
- **23**: Telnet (insecure)
- **25**: SMTP (email)
- **53**: DNS
- **80**: HTTP
- **443**: HTTPS
- **110**: POP3
- **143**: IMAP
- **3389**: RDP

### Registered Ports (1024-49151)
- **3306**: MySQL
- **5432**: PostgreSQL
- **8080**: HTTP alternative
- **8443**: HTTPS alternative

### Dynamic/Private Ports (49152-65535)
- Used for temporary connections

## Security Considerations

### TCP Security
- **SYN Flood**: DoS attack exhausting connections
- **TCP Hijacking**: Session takeover
- **ACK Scanning**: Firewall bypass technique
- **RST attacks**: Connection termination

### UDP Security
- **UDP Flood**: Overwhelming with packets
- **Amplification attacks**: DDoS using UDP services
- **Spoofing**: Easier due to connectionless nature

### IP Security
- **IP Spoofing**: Forging source address
- **Fragmentation attacks**: Exploiting packet reassembly
- **IP Source Routing**: Attacker-specified routes
- **LAND attack**: Same source/destination IP

### ICMP Security
- **Ping flood**: DoS using ICMP
- **Smurf attack**: Amplification via broadcast
- **ICMP tunneling**: Covert channel
- **Ping of Death**: Oversized ICMP packets

## Related Topics

- [[OSI Model]]
- [[Subnetting]]
- [[Public vs Private IP Addresses]]
- [[NAT]]
- [[DNS]]
- [[DHCP]]
- [[HTTP and HTTPS]]
- [[SSH]]
- [[SSL-TLS]]
- [[nmap]] - Port scanning
- [[tcpdump]] - Packet analysis

## Protocol Analysis

### Tools
- [[Wireshark and Packet Sniffers]]
- [[tcpdump]]
- [[netstat]]
- [[nmap]]

### What to Look For
- Unusual port usage
- Unexpected protocols
- Malformed packets
- Suspicious connections
- Data exfiltration patterns

## Best Practices

### Security
- Close unnecessary ports
- Implement firewall rules
- Use encrypted protocols (SSH vs Telnet, HTTPS vs HTTP)
- Monitor network traffic
- Implement IDS/IPS
- Rate limiting to prevent floods

### Performance
- Use UDP for real-time applications
- Use TCP for reliability
- Optimize TCP window sizes
- Implement Quality of Service (QoS)

## Practical Applications

- **Network troubleshooting**: Understanding connection issues
- **Penetration testing**: Port scanning, service enumeration
- **Incident response**: Traffic analysis, attack identification
- **Network design**: Protocol selection, security planning
- **Forensics**: Packet capture analysis

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
