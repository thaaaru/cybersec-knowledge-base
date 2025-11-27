# Cybersecurity Zettelkasten Knowledge Base

A comprehensive, atomic-note-based knowledge base for cybersecurity learning based on the [roadmap.sh Cybersecurity Roadmap](https://roadmap.sh/cyber-security).

## Overview

This knowledge base follows Zettelkasten principles for optimal knowledge management:
- **Atomic Notes**: Each note covers ONE concept
- **Bidirectional Links**: Connected concepts reference each other using `[[Note Name]]` syntax
- **Obsidian Compatible**: Designed for use with Obsidian.md
- **Progressive Learning**: Organized from fundamentals to advanced topics
- **Comprehensive Coverage**: 94 notes covering the complete cybersecurity roadmap

## Structure

### 📊 Statistics
- **Total Notes**: 94
- **Categories**: 10
- **Links**: Hundreds of bidirectional connections

### 📁 Directory Organization

```
cybersecurity-zettelkasten/
├── 00-MOC-Cybersecurity-Roadmap.md  (Main navigation hub)
├── 01-Fundamentals/                  (6 notes)
├── 02-Operating-Systems/             (8 notes)
├── 03-Networking/                    (21 notes)
├── 04-Security-Concepts/             (12 notes)
├── 05-Authentication-Access-Control/ (8 notes)
├── 06-Security-Tools/                (12 notes)
├── 07-Incident-Response/             (4 notes)
├── 08-Governance-Risk-Compliance/    (5 notes)
├── 09-Practice-Platforms/            (5 notes)
└── 10-Certifications/                (12 notes)
```

## Getting Started

### Option 1: Using Obsidian (Recommended)

1. **Install Obsidian**: Download from [obsidian.md](https://obsidian.md)
2. **Open Vault**:
   - Launch Obsidian
   - Choose "Open folder as vault"
   - Select the `cybersecurity-zettelkasten` directory
3. **Start Exploring**:
   - Begin with `00-MOC-Cybersecurity-Roadmap.md`
   - Click on any `[[link]]` to navigate
   - Use graph view to visualize connections

### Option 2: Using Any Markdown Editor

- Notes are standard Markdown files
- View with any editor (VS Code, Typora, etc.)
- Links use `[[Note Name]]` format

## Learning Paths

### 🟢 Beginner Path

**Start Here:**
1. `01-Fundamentals/Computer Hardware Components.md`
2. `02-Operating-Systems/Linux Operating System.md`
3. `03-Networking/OSI Model.md`
4. `03-Networking/TCP-IP Protocol Suite.md`
5. `04-Security-Concepts/Defense in Depth.md`

**Practice:**
- `09-Practice-Platforms/TryHackMe.md`
- `09-Practice-Platforms/picoCTF.md`

**Certification Goal:**
- `10-Certifications/CompTIA Security+.md`

### 🟡 Intermediate Path

**Topics:**
1. `03-Networking/Network Segmentation.md`
2. `03-Networking/VLAN.md`
3. `04-Security-Concepts/Zero Trust Architecture.md`
4. `05-Authentication-Access-Control/Multi-Factor Authentication.md`
5. `06-Security-Tools/nmap.md`
6. `06-Security-Tools/Wireshark and Packet Sniffers.md`

**Practice:**
- `09-Practice-Platforms/HackTheBox.md`
- `09-Practice-Platforms/VulnHub.md`

**Certification Goals:**
- `10-Certifications/CEH.md`
- `10-Certifications/CCNA.md`

### 🔴 Advanced Path

**Topics:**
1. `04-Security-Concepts/Penetration Testing.md`
2. `04-Security-Concepts/Threat Hunting.md`
3. `07-Incident-Response/Incident Response Process.md`
4. `07-Incident-Response/Digital Forensics Basics.md`
5. `08-Governance-Risk-Compliance/Risk Assessment.md`

**Practice:**
- `09-Practice-Platforms/HackTheBox.md` (Pro Labs)
- `09-Practice-Platforms/SANS Holiday Hack Challenge.md`

**Certification Goals:**
- `10-Certifications/OSCP.md`
- `10-Certifications/CISSP.md`

## Key Topics by Domain

### 🖥️ Fundamentals (6 notes)
- Computer Hardware Components
- Connection Types and Functions
- OS-Independent Troubleshooting
- Popular Software Suites
- Wireless Technologies
- Cloud Services Overview

### 💻 Operating Systems (8 notes)
- Windows, Linux, MacOS
- OS Installation and Configuration
- Permission Structures
- File CRUD Operations
- Command Line Interface
- Graphical User Interface

### 🌐 Networking (21 notes)
Core concepts:
- OSI Model
- TCP-IP Protocol Suite
- Subnetting, CIDR Notation
- Public vs Private IP Addresses

Infrastructure:
- Router, Switch
- VLAN, DMZ, VPN

Protocols:
- DNS, DHCP, NAT, ARP
- SSH, RDP, FTP/SFTP
- HTTP/HTTPS, SSL-TLS

### 🔒 Security Concepts (12 notes)
- Defense in Depth
- Zero Trust Architecture
- Cyber Kill Chain
- Threat Hunting
- Vulnerability Management
- Penetration Testing
- Network Segmentation
- Perimeter Security

### 🔑 Authentication & Access Control (8 notes)
- Multi-Factor Authentication
- Two-Factor Authentication
- Kerberos
- LDAP
- Single Sign-On (SSO)
- RADIUS
- Certificate-Based Authentication

### 🛠️ Security Tools (12 notes)
Network Analysis:
- nmap (comprehensive note)
- Wireshark and Packet Sniffers
- tcpdump
- netstat, ping, traceroute

Infrastructure:
- Virtualization Technologies
- VMware, VirtualBox

DNS Tools:
- nslookup, dig

Firewall:
- iptables

### 🚨 Incident Response (4 notes)
- Incident Response Process
- Digital Forensics Basics
- Evidence Preservation
- Investigation Techniques

### 📋 Governance, Risk & Compliance (5 notes)
- Risk Assessment
- Compliance and Auditing
- Backup and Resiliency
- Business Continuity Planning
- Security Frameworks

### 🎯 Practice Platforms (5 notes)
- HackTheBox
- TryHackMe
- VulnHub
- picoCTF
- SANS Holiday Hack Challenge

### 🎓 Certifications (12 notes)

**Entry Level:**
- CompTIA A+, Linux+, Network+, Security+
- CCNA

**Advanced:**
- CEH (Certified Ethical Hacker)
- CISSP (Certified Information Systems Security Professional)
- OSCP (Offensive Security Certified Professional)
- CISM, CISA
- GIAC Certifications
- CREST Certifications

## Navigation Features

### Map of Content (MOC)

The `00-MOC-Cybersecurity-Roadmap.md` file serves as the central navigation hub:
- Organized by domain
- Learning path suggestions
- Quick reference index
- Key concept groupings

### Bidirectional Links

Notes are interconnected using `[[Note Name]]` syntax:
- Click any link to navigate
- Obsidian shows backlinks automatically
- Graph view visualizes connections

### Tags

Each note includes relevant tags:
- `#fundamentals`, `#networking`, `#security`
- `#tools`, `#authentication`, `#compliance`
- `#certifications`, `#practice`

## Note Structure

Each note follows a consistent structure:

```markdown
# Note Title

**Created:** 2025-11-25
**Tags:** #relevant #tags #here

## Description
Brief overview of the concept

## Key Concepts
Main points and details

## Related Topics
- [[Linked Note 1]]
- [[Linked Note 2]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
```

## How to Use This Knowledge Base

### For Learning
1. Start with the MOC file
2. Follow suggested learning paths
3. Explore linked concepts
4. Use practice platforms
5. Work toward certifications

### For Reference
1. Use Obsidian's search (Ctrl+O / Cmd+O)
2. Browse by tag
3. Check the MOC for topic location
4. Follow links between related concepts

### For Study Planning
1. Review learning path suggestions
2. Identify knowledge gaps
3. Follow certification roadmaps
4. Practice on recommended platforms
5. Track progress with notes/annotations

## Customization

Feel free to:
- Add your own notes
- Create additional links
- Add personal annotations
- Reorganize for your needs
- Extend with more detailed content

## Source Material

This knowledge base is based on the [roadmap.sh Cybersecurity Roadmap](https://roadmap.sh/cyber-security), a comprehensive, community-driven learning path for cybersecurity professionals.

## Contributing

To expand this knowledge base:
1. Follow the atomic note principle (one concept per note)
2. Maintain consistent structure
3. Add bidirectional links
4. Use descriptive tags
5. Include practical examples

## Updates

This knowledge base can be expanded with:
- More detailed technical content
- Additional practice scenarios
- Real-world case studies
- Tool tutorials
- Exam preparation notes
- Personal learning experiences

## Tips for Success

1. **Consistency**: Review notes regularly
2. **Active Learning**: Don't just read, practice
3. **Connect Ideas**: Add your own links as you learn
4. **Hands-On**: Use practice platforms extensively
5. **Community**: Join security communities (Reddit, Discord)
6. **Stay Current**: Security is always evolving
7. **Build Labs**: Set up home lab for practice
8. **Document**: Add your own notes and findings

## Quick Reference

### Essential Starting Points
- `00-MOC-Cybersecurity-Roadmap.md` - Start here
- `01-Fundamentals/` - If you're new to IT
- `03-Networking/OSI Model.md` - Core networking
- `04-Security-Concepts/Defense in Depth.md` - Security philosophy
- `06-Security-Tools/nmap.md` - Essential security tool

### Most Connected Topics
- Defense in Depth
- Network Segmentation
- Zero Trust Architecture
- Multi-Factor Authentication
- Penetration Testing

---

**Generated:** 2025-11-25
**Total Notes:** 94
**MOC Location:** `/00-MOC-Cybersecurity-Roadmap.md`
**License:** For educational purposes

Start your cybersecurity journey by opening the MOC file!
