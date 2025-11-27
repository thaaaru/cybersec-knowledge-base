# Defense in Depth

**Created:** 2025-11-25
**Tags:** #security #strategy #defense #layered-security

## Description

Defense in Depth is a security strategy that employs multiple layers of security controls throughout an IT system. If one layer fails, additional layers provide protection, creating a comprehensive security posture.

## Core Principle

**"Never rely on a single security control"**

Multiple overlapping security measures reduce the risk of successful attacks.

## Security Layers

### 1. Physical Security
- Building access control
- Server room security
- Surveillance cameras
- Security guards
- Environmental controls

### 2. Perimeter Security
- Firewalls
- IDS/IPS
- DMZ
- VPN gateways
- Email gateways

### 3. Network Security
- Network segmentation
- VLANs
- Access Control Lists (ACLs)
- Network monitoring
- Wireless security

### 4. Host Security
- Antivirus/antimalware
- Host-based firewalls
- Patch management
- Configuration hardening
- Application whitelisting

### 5. Application Security
- Input validation
- Secure coding practices
- Authentication/authorization
- Session management
- Error handling

### 6. Data Security
- Encryption at rest
- Encryption in transit
- Data classification
- DLP (Data Loss Prevention)
- Backup and recovery

### 7. Human Layer
- Security awareness training
- Phishing simulations
- Security policies
- Incident response procedures
- Background checks

## Implementation Example

### Web Application Protection
```
Layer 1: Physical - Secure data center
Layer 2: Perimeter - External firewall, WAF
Layer 3: Network - Internal firewall, IDS/IPS, VLAN segmentation
Layer 4: Host - Hardened servers, host firewall, antimalware
Layer 5: Application - Input validation, authentication, HTTPS
Layer 6: Data - Database encryption, encrypted backups
Layer 7: Human - Developer training, code review, security policies
```

## Key Principles

### Redundancy
- Multiple controls for same threat
- No single point of failure
- Compensating controls

### Diversity
- Different security technologies
- Various vendors to avoid common vulnerabilities
- Mix of preventive, detective, and corrective controls

### Compartmentalization
- Segment networks and systems
- Principle of least privilege
- Limit blast radius of breaches

## Types of Controls

### Preventive Controls
- Block attacks before they occur
- Examples: Firewall, access controls, encryption

### Detective Controls
- Identify attacks in progress or after occurrence
- Examples: IDS, SIEM, log monitoring

### Corrective Controls
- Respond to and recover from incidents
- Examples: Backup restoration, incident response

### Deterrent Controls
- Discourage attackers
- Examples: Warning banners, security policies

## Benefits

1. **Comprehensive Protection**: Multiple security layers
2. **Reduced Risk**: No single point of failure
3. **Flexibility**: Adapt to changing threats
4. **Compliance**: Meet regulatory requirements
5. **Resilience**: System survives component failures

## Challenges

- Increased complexity
- Higher costs
- Management overhead
- Potential for false sense of security
- Integration challenges

## Best Practices

1. **Risk-based approach**: Focus on high-risk areas
2. **Regular assessment**: Continuously evaluate effectiveness
3. **Balance**: Security vs. usability vs. cost
4. **Integration**: Controls should work together
5. **Monitoring**: Detect and respond quickly
6. **Updates**: Keep all layers current
7. **Testing**: Penetration testing, audits

## Common Mistakes

- Relying on single control (e.g., just firewall)
- Neglecting human layer
- Poor integration between layers
- Outdated security controls
- No monitoring or testing

## Related Topics

- [[Zero Trust Architecture]]
- [[Network Segmentation]]
- [[Perimeter Security]]
- [[DMZ]]
- [[VLAN]]
- [[Incident Response Process]]
- [[Vulnerability Management]]
- [[Security Runbooks]]

## Real-World Application

- Enterprise network design
- Cloud security architecture
- Application development
- Data center security
- Industrial control systems

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
