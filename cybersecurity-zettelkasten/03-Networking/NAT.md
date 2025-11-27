# NAT

**Created:** 2025-11-25
**Tags:** #networking #nat #ip-addressing #security

## Description

NAT (Network Address Translation) translates private IP addresses to public IP addresses, enabling multiple devices to share a single public IP and providing a basic security layer.

## Types of NAT

### Static NAT
- One-to-one mapping
- Private IP ↔ Public IP
- Used for servers requiring consistent public IP

### Dynamic NAT
- Pool of public IPs
- First-come-first-served assignment
- More public IPs than typically needed

### PAT (Port Address Translation)
- Also called NAT Overload or NAPT
- Many-to-one with port tracking
- Most common type (home/office routers)
- Single public IP for multiple devices

## How PAT Works

```
Internal Device          NAT Router         Internet Server
192.168.1.10:50000  →   203.0.113.1:50000  →  93.184.216.34:80
192.168.1.11:50001  →   203.0.113.1:50001  →  93.184.216.34:80
192.168.1.12:50002  →   203.0.113.1:50002  →  93.184.216.34:80
```

## Security Implications

### Benefits
- Hides internal network structure
- Reduces public IP requirements
- Provides basic firewall functionality
- Makes unsolicited inbound difficult

### Limitations
- **Not a firewall**: Don't rely on NAT for security
- **Stateful tracking needed**: Connection table required
- **Port forwarding risks**: Exposing internal services
- **Complexity**: Troubleshooting more difficult

### Considerations
- Breaks end-to-end connectivity principle
- Can interfere with some protocols (SIP, FTP, IPSec)
- NAT traversal techniques needed for P2P
- Logging important for security tracking

## Related Topics

- [[Public vs Private IP Addresses]]
- [[Default Gateway]]
- [[Router]]
- [[DMZ]]
- [[Port Forwarding]] (if created)

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
