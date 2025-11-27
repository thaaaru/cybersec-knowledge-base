# OSI Model

**Created:** 2025-11-25
**Tags:** #networking #osi-model #protocols #fundamentals

## Description

The OSI (Open Systems Interconnection) Model is a conceptual framework that standardizes network communication into seven distinct layers. Understanding the OSI Model is fundamental to networking and cybersecurity.

## The Seven Layers

### Layer 7: Application
- **Function**: User interface, application services
- **Protocols**: HTTP, HTTPS, FTP, SMTP, DNS, SSH
- **Devices**: Application gateways, proxies
- **Security concerns**: Application vulnerabilities, injection attacks, API security

### Layer 6: Presentation
- **Function**: Data translation, encryption, compression
- **Responsibilities**: Format conversion, character encoding
- **Security concerns**: Encryption/decryption, data encoding attacks
- **Examples**: SSL/TLS, JPEG, ASCII, EBCDIC

### Layer 5: Session
- **Function**: Session establishment, maintenance, termination
- **Responsibilities**: Authentication, authorization, session restoration
- **Protocols**: NetBIOS, RPC, SQL
- **Security concerns**: Session hijacking, session fixation

### Layer 4: Transport
- **Function**: End-to-end communication, reliability
- **Protocols**: TCP (connection-oriented), UDP (connectionless)
- **Features**: Port numbers, segmentation, flow control
- **Security concerns**: Port scanning, DoS attacks, TCP hijacking

### Layer 3: Network
- **Function**: Logical addressing, routing, path determination
- **Protocols**: IP, ICMP, IGMP, IPSec
- **Devices**: Routers, Layer 3 switches
- **Addressing**: IP addresses (IPv4, IPv6)
- **Security concerns**: IP spoofing, routing attacks, ICMP tunneling

### Layer 2: Data Link
- **Function**: Physical addressing, frame formatting, error detection
- **Sub-layers**: LLC (Logical Link Control), MAC (Media Access Control)
- **Protocols**: Ethernet, PPP, Frame Relay
- **Addressing**: MAC addresses
- **Devices**: Switches, bridges, NICs
- **Security concerns**: MAC spoofing, ARP poisoning, VLAN hopping

### Layer 1: Physical
- **Function**: Physical transmission of raw bits
- **Components**: Cables, connectors, signals
- **Devices**: Hubs, repeaters, cables, transceivers
- **Security concerns**: Physical access, wiretapping, electromagnetic interference

## Mnemonic Devices

**Top to Bottom:** "All People Seem To Need Data Processing"
**Bottom to Top:** "Please Do Not Throw Sausage Pizza Away"

## Security Relevance by Layer

### Layer 7 Attacks
- SQL injection, XSS, CSRF
- Application DoS
- API vulnerabilities
- Malware delivery

### Layer 4 Attacks
- SYN flood
- Port scanning
- Session hijacking

### Layer 3 Attacks
- IP spoofing
- ICMP flood
- Route poisoning
- Man-in-the-middle

### Layer 2 Attacks
- MAC flooding
- ARP spoofing
- VLAN hopping
- Switch spoofing

### Layer 1 Attacks
- Cable tapping
- Physical destruction
- Electromagnetic interference

## Related Topics

- [[TCP-IP Protocol Suite]]
- [[Network Topologies]]
- [[Switch]]
- [[Router]]
- [[VLAN]]
- [[SSL-TLS]]
- [[HTTP and HTTPS]]
- [[SSH]]
- [[Penetration Testing]]

## OSI vs. TCP/IP Model

| OSI Layer | TCP/IP Layer |
|-----------|--------------|
| Application | Application |
| Presentation | Application |
| Session | Application |
| Transport | Transport |
| Network | Internet |
| Data Link | Network Access |
| Physical | Network Access |

## Practical Applications

### Troubleshooting
Use layer-by-layer approach:
1. Physical: Check cables, lights
2. Data Link: Verify MAC addresses
3. Network: Test IP connectivity (ping)
4. Transport: Check port availability
5. Application: Test application functionality

### Security Analysis
- Identify attack layer
- Apply appropriate countermeasures
- Implement defense in depth across layers

### Network Design
- Plan security at each layer
- Understand dependencies between layers
- Optimize performance per layer

## Key Principles

- **Encapsulation**: Each layer adds headers/trailers
- **Data Units**:
  - Layer 7-5: Data
  - Layer 4: Segments (TCP) / Datagrams (UDP)
  - Layer 3: Packets
  - Layer 2: Frames
  - Layer 1: Bits
- **Peer Communication**: Each layer communicates with its peer
- **Abstraction**: Upper layers don't need to know lower layer details

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
