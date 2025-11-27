# DNS

**Created:** 2025-11-25
**Tags:** #networking #dns #protocols #name-resolution

## Description

DNS (Domain Name System) translates human-readable domain names into IP addresses. It's a critical internet service and common attack target.

## Key Concepts

- Hierarchical distributed database
- Port 53 (UDP for queries, TCP for zone transfers)
- Resolves names to IPs and vice versa
- Caching for performance

## DNS Record Types

- **A**: IPv4 address
- **AAAA**: IPv6 address
- **CNAME**: Canonical name (alias)
- **MX**: Mail exchange
- **NS**: Name server
- **TXT**: Text records
- **PTR**: Reverse DNS lookup
- **SOA**: Start of authority

## Security Concerns

### Attacks
- DNS spoofing/poisoning
- DNS tunneling (data exfiltration)
- DDoS amplification
- Cache poisoning
- DNS hijacking

### Protections
- DNSSEC (DNS Security Extensions)
- DNS over HTTPS (DoH)
- DNS over TLS (DoT)
- Rate limiting
- Monitoring and logging

## Related Topics

- [[DHCP]]
- [[nslookup]]
- [[dig]]
- [[Threat Hunting]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
