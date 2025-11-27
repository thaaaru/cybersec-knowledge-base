# DMZ

**Created:** 2025-11-25
**Tags:** #networking #dmz #security #architecture #perimeter

## Description

DMZ (Demilitarized Zone) is a physical or logical subnet that sits between an organization's internal network and untrusted external networks (typically the Internet). It acts as a security buffer zone hosting public-facing services.

## Key Concepts

### Purpose
- Host public-facing services (web, email, DNS)
- Protect internal network from direct internet exposure
- Provide additional security layer
- Isolate compromised services

### Typical DMZ Architecture

```
Internet
    ↓
External Firewall (Public IP)
    ↓
DMZ (Semi-trusted zone)
- Web Server
- Mail Server
- DNS Server
- FTP Server
    ↓
Internal Firewall
    ↓
Internal Network (Trusted zone)
- User workstations
- Database servers
- File servers
- Domain controllers
```

## DMZ Designs

### Single Firewall DMZ
```
Internet ← Firewall (3+ interfaces) → DMZ
                ↓
         Internal Network
```
- Cost-effective
- Single point of failure
- Less secure

### Dual Firewall DMZ (Recommended)
```
Internet ← Firewall 1 → DMZ ← Firewall 2 → Internal
```
- Two-layer defense
- More secure
- Higher cost
- Breach containment

### Screened Subnet
```
Internet ← Router ← Firewall → DMZ ← Firewall → Internal
```
- Maximum security
- Complex configuration
- Highest cost

## Services in DMZ

### Typical DMZ Hosts
- **Web servers**: Public websites
- **Mail gateways**: Email relay
- **DNS servers**: External DNS resolution
- **VPN concentrators**: Remote access termination
- **Reverse proxies**: Application delivery
- **FTP servers**: File transfer
- **Jump boxes**: Administrative access

### What NOT to Put in DMZ
- Internal user workstations
- Database servers (unless read-only replicas)
- Domain controllers
- Internal file servers
- Sensitive data repositories

## Security Rules

### Firewall Rules Example

**External Firewall (Internet → DMZ)**
```
Allow: HTTP/HTTPS → Web Server
Allow: SMTP → Mail Gateway
Allow: DNS → DNS Server
Deny: All other traffic
```

**Internal Firewall (DMZ → Internal)**
```
Allow: Mail Gateway → Internal Mail Server (limited)
Allow: Web Server → Database Server (specific ports only)
Deny: All other traffic (default deny)
```

**Internal → DMZ**
```
Allow: Admin workstation → DMZ (SSH/RDP management)
Allow: Internal users → Web proxy in DMZ
Strict logging and monitoring
```

## Security Best Practices

### DMZ Hardening
1. **Minimal services**: Only necessary ports open
2. **Patching**: Regular security updates
3. **Monitoring**: Enhanced logging and alerting
4. **IDS/IPS**: Intrusion detection in DMZ
5. **Access control**: Strict firewall rules
6. **Segmentation**: Separate DMZ for different services
7. **No direct routing**: DMZ should not route between Internet and Internal

### Defense in Depth
- Application-level firewalls
- Host-based firewalls on DMZ servers
- Regular vulnerability scanning
- Penetration testing
- Security information correlation

## Modern Alternatives

### Cloud DMZ
- Using cloud provider security groups
- VPC (Virtual Private Cloud) with subnets
- Cloud-native firewall services
- Similar concepts, cloud implementation

### Zero Trust Model
- Moving away from perimeter-based security
- Micro-segmentation instead of DMZ
- Identity-based access control
- Still useful for service isolation

## Related Topics

- [[Perimeter Security]]
- [[Network Segmentation]]
- [[VLAN]]
- [[Firewall]] (if created)
- [[Defense in Depth]]
- [[Zero Trust Architecture]]
- [[VPN]]
- [[Public vs Private IP Addresses]]

## Common Mistakes

- Placing database servers in DMZ
- Same firewall rules for DMZ as internal
- Allowing DMZ-to-DMZ communication without control
- Not monitoring DMZ traffic
- Treating DMZ as trusted zone
- Poor patch management on DMZ hosts

## Compliance Considerations

### PCI DSS
- Requires separation of cardholder data environment
- DMZ for payment applications
- Strict access controls

### HIPAA
- ePHI isolation requirements
- DMZ for healthcare portals

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
