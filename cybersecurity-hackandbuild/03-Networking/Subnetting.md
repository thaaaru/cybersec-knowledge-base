# Subnetting

**Created:** 2025-11-25
**Tags:** #networking #subnetting #ip-addressing #network-design

## Description

Subnetting is the practice of dividing a network into smaller, manageable sub-networks. It's essential for efficient IP address allocation, network organization, and security segmentation.

## Key Concepts

### Subnet Mask
A 32-bit number that divides IP address into network and host portions.

**Common Subnet Masks:**
- 255.0.0.0 (/8) - Class A
- 255.255.0.0 (/16) - Class B
- 255.255.255.0 (/24) - Class C
- 255.255.255.128 (/25)
- 255.255.255.192 (/26)

### CIDR Notation
Classless Inter-Domain Routing notation: IP/prefix
- 192.168.1.0/24 means first 24 bits are network, last 8 are host
- /24 = 255.255.255.0
- /16 = 255.255.0.0
- /8 = 255.0.0.0

### Network Classes (Legacy)

| Class | Range | Default Mask | Networks | Hosts/Network |
|-------|-------|--------------|----------|---------------|
| A | 1-126 | /8 | 126 | 16,777,214 |
| B | 128-191 | /16 | 16,384 | 65,534 |
| C | 192-223 | /24 | 2,097,152 | 254 |
| D | 224-239 | - | Multicast | - |
| E | 240-255 | - | Experimental | - |

## Subnet Calculation

### Formula
- **Number of subnets**: 2^n (n = borrowed bits)
- **Hosts per subnet**: 2^h - 2 (h = host bits, -2 for network and broadcast)

### Example: 192.168.1.0/24 split into /26

```
Original: 192.168.1.0/24 (256 addresses)
New: /26 subnets (64 addresses each)

Subnet 1: 192.168.1.0/26
  Network:   192.168.1.0
  First host: 192.168.1.1
  Last host:  192.168.1.62
  Broadcast:  192.168.1.63

Subnet 2: 192.168.1.64/26
  Network:   192.168.1.64
  First host: 192.168.1.65
  Last host:  192.168.1.126
  Broadcast:  192.168.1.127

Subnet 3: 192.168.1.128/26
Subnet 4: 192.168.1.192/26
```

### Special Addresses
- **Network Address**: First address (all host bits 0)
- **Broadcast Address**: Last address (all host bits 1)
- **Usable Hosts**: Network + 1 to Broadcast - 1

## CIDR Block Sizes

| CIDR | Subnet Mask | Total IPs | Usable Hosts |
|------|-------------|-----------|--------------|
| /32 | 255.255.255.255 | 1 | 0 (single host) |
| /31 | 255.255.255.254 | 2 | 2 (point-to-point) |
| /30 | 255.255.255.252 | 4 | 2 |
| /29 | 255.255.255.248 | 8 | 6 |
| /28 | 255.255.255.240 | 16 | 14 |
| /27 | 255.255.255.224 | 32 | 30 |
| /26 | 255.255.255.192 | 64 | 62 |
| /25 | 255.255.255.128 | 128 | 126 |
| /24 | 255.255.255.0 | 256 | 254 |
| /16 | 255.255.0.0 | 65,536 | 65,534 |
| /8 | 255.0.0.0 | 16,777,216 | 16,777,214 |

## Security Benefits

### Network Segmentation
- Isolate departments/functions
- Contain security breaches
- Limit broadcast domains
- Implement access controls between subnets

### Examples
```
Corporate Network: 10.0.0.0/8
  - Management: 10.1.0.0/16
  - Users: 10.2.0.0/16
  - Servers: 10.3.0.0/16
  - DMZ: 10.4.0.0/16
  - Guest: 10.5.0.0/16
```

## Related Topics

- [[CIDR Notation]]
- [[Public vs Private IP Addresses]]
- [[Default Gateway]]
- [[VLAN]]
- [[Network Segmentation]]
- [[Router]]
- [[DHCP]]
- [[NAT]]

## Practical Tools

### Linux/Mac
```bash
# Calculate subnets
ipcalc 192.168.1.0/24

# View network configuration
ip addr show
ifconfig
```

### Windows
```powershell
# View network configuration
ipconfig

# Calculate subnets (third-party tool)
# Or use online calculators
```

### Online Calculators
- subnet-calculator.com
- ipcalc.org
- Various mobile apps

## Common Subnetting Scenarios

### Scenario 1: Office with 50 users
- Need: 62 usable addresses (50 users + devices + growth)
- Solution: /26 subnet (62 usable hosts)

### Scenario 2: Point-to-point router link
- Need: 2 addresses for routers
- Solution: /30 subnet (2 usable hosts)

### Scenario 3: Data center with 200 servers
- Need: 200+ addresses
- Solution: /24 subnet (254 usable hosts)

## VLSM (Variable Length Subnet Masking)

Using different subnet masks for different subnets to optimize address allocation.

**Example:**
```
Main network: 10.0.0.0/16

Large department (500 hosts): 10.0.0.0/23
Medium department (100 hosts): 10.0.2.0/25
Small department (20 hosts): 10.0.2.128/27
Point-to-point links: 10.0.3.0/30
```

## Best Practices

1. **Plan ahead**: Account for growth
2. **Document**: Maintain IP address management (IPAM)
3. **Standardize**: Consistent subnet sizes where possible
4. **Security**: Segment by security zone
5. **Avoid waste**: Use VLSM for efficiency
6. **Reserve space**: Leave room for expansion

## Common Mistakes

- Not accounting for network and broadcast addresses
- Overlapping subnets
- Wrong subnet mask calculation
- Not planning for growth
- Inconsistent addressing scheme

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
