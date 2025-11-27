# DHCP

**Created:** 2025-11-25
**Tags:** #networking #dhcp #protocols #ip-addressing

## Description

DHCP (Dynamic Host Configuration Protocol) automatically assigns IP addresses and network configuration to devices on a network.

## Key Concepts

### DORA Process
1. **Discover**: Client broadcasts for DHCP server
2. **Offer**: Server offers IP configuration
3. **Request**: Client requests offered configuration
4. **Acknowledge**: Server acknowledges assignment

### DHCP Components
- **DHCP Server**: Assigns addresses
- **DHCP Client**: Requests configuration
- **Scope**: Range of available IPs
- **Lease**: Time period for IP assignment
- **Reservations**: Static IP for specific MAC

### Information Provided
- IP address
- Subnet mask
- Default gateway
- DNS servers
- Domain name
- Lease duration

## Security Considerations

### Attacks
- **Rogue DHCP Server**: Attacker provides malicious configuration
- **DHCP Starvation**: Exhaust IP pool
- **DHCP Spoofing**: Impersonate DHCP server

### Protections
- DHCP Snooping on switches
- Port security
- IP Source Guard
- Monitor for rogue DHCP servers
- Static IP for critical infrastructure

## Related Topics

- [[DNS]]
- [[Default Gateway]]
- [[NAT]]
- [[Network Segmentation]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
