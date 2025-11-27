# Public vs Private IP Addresses

**Created:** 2025-11-25
**Tags:** #networking #ip-addressing #nat #security

## Description

Understanding the distinction between public and private IP addresses is fundamental to network design, security, and internet connectivity. This separation enables address conservation and provides a basic security layer.

## Private IP Address Ranges (RFC 1918)

These addresses are reserved for internal use and not routable on the public internet:

### Class A
- **Range**: 10.0.0.0 - 10.255.255.255
- **CIDR**: 10.0.0.0/8
- **Addresses**: 16,777,216
- **Use case**: Very large private networks

### Class B
- **Range**: 172.16.0.0 - 172.31.255.255
- **CIDR**: 172.16.0.0/12
- **Addresses**: 1,048,576
- **Use case**: Medium to large networks

### Class C
- **Range**: 192.168.0.0 - 192.168.255.255
- **CIDR**: 192.168.0.0/16
- **Addresses**: 65,536
- **Use case**: Small networks, home networks

### Additional Special Ranges
- **127.0.0.0/8**: Loopback (localhost)
- **169.254.0.0/16**: APIPA (Automatic Private IP Addressing)
- **Link-local**: Self-assigned when DHCP fails

## Public IP Addresses

- **Unique globally**: Each public IP is unique on the internet
- **Routable**: Can be reached from anywhere on the internet
- **Assigned by ISPs**: Obtained from Internet Service Providers
- **Scarce resource**: IPv4 addresses are limited (≈4.3 billion)
- **Costly**: Organizations pay for public IP blocks

### Public IP Characteristics
- Assigned by IANA/RIRs (Regional Internet Registries)
- Required for internet-facing services
- Subject to geolocation
- Can be static or dynamic

## Key Differences

| Aspect | Private IP | Public IP |
|--------|-----------|-----------|
| **Uniqueness** | Reusable across networks | Globally unique |
| **Routing** | Not routed on internet | Routable on internet |
| **Cost** | Free to use | Costs apply |
| **Assignment** | Internal (admin/DHCP) | ISP/Registry |
| **Security** | Hidden from internet | Exposed to internet |
| **Quantity** | Unlimited reuse | Limited resource |

## Network Address Translation (NAT)

NAT enables private addresses to access the internet through public addresses:

```
Internal Network (Private)          Internet (Public)
192.168.1.10 ─┐
192.168.1.11 ─┤
192.168.1.12 ─┤──→ [NAT Router] ──→ 203.0.113.50
192.168.1.13 ─┤    (Gateway)
192.168.1.14 ─┘
```

### Types of NAT
- **Static NAT**: One-to-one mapping
- **Dynamic NAT**: Pool of public IPs
- **PAT/NAPT**: Port Address Translation (most common)

## Security Implications

### Advantages of Private IPs
- **Hidden from internet**: Internal devices not directly accessible
- **Attack surface reduction**: Fewer exposed systems
- **Flexibility**: Easy to renumber internal network
- **No IP conflicts**: Can use same ranges as other organizations

### Security Considerations
- **Not security by itself**: Private IPs don't equal security
- **Still need firewall**: NAT is not a firewall
- **Internal threats**: Private network can still be compromised
- **Port forwarding risks**: Exposing internal services

### Best Practices
1. Use private IPs for internal networks
2. Implement firewall regardless of NAT
3. Minimize port forwarding
4. Use VPN for remote access
5. Monitor NAT gateway logs
6. Implement internal segmentation

## Practical Applications

### Home Network
```
ISP provides: 203.0.113.50 (public, dynamic)
Home router: 192.168.1.1 (private, gateway)
Devices: 192.168.1.2-254 (private)
```

### Corporate Network
```
Public IPs: 203.0.113.0/29 (8 addresses)
- Web server: 203.0.113.1
- Mail server: 203.0.113.2
- VPN gateway: 203.0.113.3

Internal: 10.0.0.0/8
- Users: 10.1.0.0/16
- Servers: 10.2.0.0/16
- DMZ: 10.3.0.0/16
```

### DMZ Architecture
```
Internet
    ↓
Public IP (firewall)
    ↓
DMZ (semi-public services)
    ↓
Internal Network (private IPs)
```

## Related Topics

- [[NAT]]
- [[CIDR Notation]]
- [[Subnetting]]
- [[Default Gateway]]
- [[Router]]
- [[DMZ]]
- [[Network Segmentation]]
- [[VPN]]

## IPv6 Considerations

- **No NAT needed**: Abundant address space
- **Global unicast addresses**: Publicly routable
- **Unique local addresses (ULA)**: fc00::/7 (similar to private IPv4)
- **Link-local addresses**: fe80::/10 (similar to 169.254.0.0/16)

## Troubleshooting

### Identifying Address Type
```bash
# Check if IP is private
10.x.x.x → Private
172.16-31.x.x → Private
192.168.x.x → Private
Other → Likely public (check)

# Find public IP
curl ifconfig.me
curl icanhazip.com
```

### Common Issues
- Duplicate private IPs on same network
- Trying to route private IPs over internet
- Misconfigured NAT
- APIPA addresses (169.254.x.x) indicate DHCP failure

## Real-World Scenarios

### Scenario 1: Small Office
- ISP gives one public IP
- Internal network uses 192.168.1.0/24
- NAT router connects both networks
- All internal devices share one public IP

### Scenario 2: Large Enterprise
- Multiple public IP blocks
- Extensive private networks (10.0.0.0/8)
- Complex NAT policies
- DMZ with public IPs for servers

### Scenario 3: Cloud Environment
- Virtual private clouds (VPC)
- Private subnets for backend
- Public subnets for load balancers
- NAT gateways for outbound

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
