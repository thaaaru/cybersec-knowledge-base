# CIDR Notation

**Created:** 2025-11-25
**Tags:** #networking #cidr #ip-addressing #notation

## Description

CIDR (Classless Inter-Domain Routing) notation is a compact method of specifying IP addresses and their associated network masks. It replaced the old classful addressing system, providing more flexibility in IP address allocation.

## Format

**Syntax:** `IP_Address/Prefix_Length`
**Example:** `192.168.1.0/24`

- **IP Address**: Network or host address
- **Slash (/)**: Separator
- **Prefix Length**: Number of bits in the network portion (0-32)

## Understanding the Prefix

The prefix number indicates how many bits (from left to right) are used for the network portion:

```
/24 means:
11111111.11111111.11111111.00000000
255     .255     .255     .0

Network portion: 24 bits (1s)
Host portion: 8 bits (0s)
```

## Common CIDR Blocks

| CIDR | Subnet Mask | Binary Notation | Addresses | Hosts |
|------|-------------|-----------------|-----------|-------|
| /32 | 255.255.255.255 | 11111111.11111111.11111111.11111111 | 1 | 0 |
| /31 | 255.255.255.254 | 11111111.11111111.11111111.11111110 | 2 | 2 |
| /30 | 255.255.255.252 | 11111111.11111111.11111111.11111100 | 4 | 2 |
| /29 | 255.255.255.248 | 11111111.11111111.11111111.11111000 | 8 | 6 |
| /28 | 255.255.255.240 | 11111111.11111111.11111111.11110000 | 16 | 14 |
| /27 | 255.255.255.224 | 11111111.11111111.11111111.11100000 | 32 | 30 |
| /26 | 255.255.255.192 | 11111111.11111111.11111111.11000000 | 64 | 62 |
| /25 | 255.255.255.128 | 11111111.11111111.11111111.10000000 | 128 | 126 |
| /24 | 255.255.255.0 | 11111111.11111111.11111111.00000000 | 256 | 254 |
| /23 | 255.255.254.0 | 11111111.11111111.11111110.00000000 | 512 | 510 |
| /22 | 255.255.252.0 | 11111111.11111111.11111100.00000000 | 1,024 | 1,022 |
| /21 | 255.255.248.0 | 11111111.11111111.11111000.00000000 | 2,048 | 2,046 |
| /20 | 255.255.240.0 | 11111111.11111111.11110000.00000000 | 4,096 | 4,094 |
| /16 | 255.255.0.0 | 11111111.11111111.00000000.00000000 | 65,536 | 65,534 |
| /8 | 255.0.0.0 | 11111111.00000000.00000000.00000000 | 16,777,216 | 16,777,214 |

## Calculation Methods

### Method 1: Power of 2
**Host bits**: 32 - prefix length
**Total addresses**: 2^(host bits)
**Usable hosts**: 2^(host bits) - 2

Example: /26
- Host bits: 32 - 26 = 6
- Total addresses: 2^6 = 64
- Usable hosts: 64 - 2 = 62

### Method 2: Memorization
Memorize common prefixes and their sizes:
- /24 = 256 addresses
- /25 = 128 addresses
- /26 = 64 addresses
- /27 = 32 addresses
- /28 = 16 addresses

## Practical Examples

### Example 1: Single Host
```
192.168.1.100/32
- Represents a single specific host
- Used in firewall rules, routing
- No other addresses in this "network"
```

### Example 2: Point-to-Point Link
```
10.1.1.0/30
- Network: 10.1.1.0
- Host 1: 10.1.1.1
- Host 2: 10.1.1.2
- Broadcast: 10.1.1.3
```

### Example 3: Small Office
```
172.16.0.0/24
- Network: 172.16.0.0
- Usable: 172.16.0.1 - 172.16.0.254
- Broadcast: 172.16.0.255
- Perfect for 254 devices
```

### Example 4: Large Network
```
10.0.0.0/8
- Entire Class A network
- 16,777,214 usable hosts
- Can be subdivided into smaller subnets
```

## Security Applications

### Firewall Rules
```
Allow 192.168.1.0/24 → Allows entire subnet
Deny 10.0.0.0/8 → Blocks entire private range
```

### Access Control Lists (ACLs)
```
permit ip 172.16.0.0/16 any
deny ip any any
```

### Network Segmentation
```
Users: 10.1.0.0/16
Servers: 10.2.0.0/16
DMZ: 10.3.0.0/16
Management: 10.4.0.0/16
```

## CIDR vs. Classful Addressing

### Old Classful System
- **Class A**: Always /8 (wasteful)
- **Class B**: Always /16 (wasteful)
- **Class C**: Always /24 (limited)

### Modern CIDR
- **Flexible**: Any prefix length
- **Efficient**: Match size to needs
- **Hierarchical**: Summarization possible

## Route Aggregation (Supernetting)

Combining multiple networks into one larger CIDR block:

```
Combine:
192.168.0.0/24
192.168.1.0/24
192.168.2.0/24
192.168.3.0/24

Into:
192.168.0.0/22 (covers 192.168.0.0 - 192.168.3.255)
```

## Related Topics

- [[Subnetting]]
- [[Public vs Private IP Addresses]]
- [[Default Gateway]]
- [[Router]]
- [[Network Segmentation]]
- [[NAT]]

## Tools for CIDR

### Command Line
```bash
# Linux
ipcalc 192.168.1.0/24
sipcalc 192.168.1.0/24

# Python
import ipaddress
net = ipaddress.ip_network('192.168.1.0/24')
```

### Online Resources
- CIDR calculators
- Subnet calculators
- IP address calculators

## Best Practices

1. **Be specific**: Use /32 for single hosts in ACLs
2. **Plan hierarchy**: Use summarization-friendly addressing
3. **Document**: Always note CIDR in documentation
4. **Validate**: Check for overlaps in address planning
5. **Consistency**: Use standard sizes where possible

## Common Mistakes

- Confusing /24 with Class C (CIDR is classless)
- Forgetting network and broadcast addresses
- Not accounting for growth
- Overlapping CIDR blocks
- Using /31 incorrectly (special use case)

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
