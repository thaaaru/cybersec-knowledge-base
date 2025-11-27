# ARP

**Created:** 2025-11-25
**Tags:** #networking #arp #protocols #layer2

## Description

ARP (Address Resolution Protocol) resolves IP addresses to MAC addresses on local networks. It operates at Layer 2 and is essential for local network communication but vulnerable to attacks.

## How ARP Works

1. Device needs to communicate with IP on local network
2. Checks ARP cache for MAC address
3. If not found, broadcasts ARP request: "Who has IP X.X.X.X?"
4. Device with that IP responds with MAC address
5. Requester caches the MAC-to-IP mapping

## ARP Cache

- Temporary storage of IP-to-MAC mappings
- Reduces network traffic
- Entries expire after timeout
- View cache: `arp -a` (Windows/Linux)

## Security Vulnerabilities

### ARP Spoofing/Poisoning
- **Attack**: Attacker sends fake ARP responses
- **Result**: Traffic redirected through attacker
- **Impact**: Man-in-the-middle, eavesdropping, session hijacking

### ARP Cache Poisoning
- Corrupt ARP cache with false entries
- Redirect traffic to attacker
- Enable interception of communications

## Attack Example

```
Normal:
Computer A ←→ Switch ←→ Computer B

ARP Poisoning:
Computer A ←→ Attacker ←→ Computer B
                ↓
         (Intercepts all traffic)
```

## Protections

### Network Level
- **Dynamic ARP Inspection (DAI)**: Validate ARP packets
- **Port Security**: Limit MAC addresses per port
- **Static ARP Entries**: For critical devices
- **VLAN Segmentation**: Limit ARP domain
- **ARP Rate Limiting**: Prevent ARP storms

### Host Level
- Monitor ARP cache for changes
- Use ARP monitoring tools
- Static ARP entries for gateway
- Enable OS-level ARP protection

### Detection
- Duplicate MAC addresses
- Multiple IPs for single MAC
- Rapid ARP cache changes
- IDS/IPS signatures

## Related Topics

- [[OSI Model]] - Layer 2
- [[Switch]]
- [[VLAN]]
- [[Network Segmentation]]
- [[Penetration Testing]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
