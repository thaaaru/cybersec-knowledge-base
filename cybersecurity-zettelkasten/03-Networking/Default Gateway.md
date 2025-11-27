# Default Gateway

**Created:** 2025-11-25
**Tags:** #networking #gateway #routing #fundamentals

## Description

A default gateway is a router that connects a local network to other networks or the internet. It serves as the exit point for traffic destined outside the local subnet.

## Key Concepts

### Function
- Routes traffic to destinations outside local network
- Acts as intermediary between subnets
- Forwards packets to appropriate next hop
- Usually the first usable IP in a subnet

### Typical Configuration
```
Network: 192.168.1.0/24
Gateway: 192.168.1.1
Devices: 192.168.1.2-254
```

## How It Works

```
Local Device (192.168.1.10)
    ↓
Is destination on local subnet?
    No → Send to Default Gateway
    Yes → Send directly
    ↓
Default Gateway (192.168.1.1)
    ↓
Routes to destination network
```

## Security Considerations

- Gateway can monitor all outbound traffic
- Single point of failure
- Target for ARP spoofing attacks
- Should be secured and monitored
- Implement redundancy (HSRP, VRRP)

## Related Topics

- [[Router]]
- [[Subnetting]]
- [[NAT]]
- [[ARP]]
- [[DHCP]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
