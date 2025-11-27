#!/bin/bash

BASE_DIR="/Users/tharaka/claude_space/cybersec-roadmap/cybersecurity-zettelkasten"

# Function to create a note
create_note() {
    local category=$1
    local title=$2
    local file_path="$BASE_DIR/$category/$title.md"
    
    cat > "$file_path" << EOF
# $title

**Created:** 2025-11-25
**Tags:** #placeholder

## Description

This is a placeholder note for $title. This topic is part of the cybersecurity roadmap knowledge base.

## Key Concepts

(To be expanded with detailed information about $title)

## Related Topics

(Links to related concepts within the knowledge base)

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
EOF
}

# Security Concepts
create_note "04-Security-Concepts" "Threat Hunting"
create_note "04-Security-Concepts" "Vulnerability Management"
create_note "04-Security-Concepts" "Penetration Testing"
create_note "04-Security-Concepts" "Reverse Engineering"
create_note "04-Security-Concepts" "Network Segmentation"
create_note "04-Security-Concepts" "Perimeter Security"
create_note "04-Security-Concepts" "Security Runbooks"
create_note "04-Security-Concepts" "Common Hacking Tools"
create_note "04-Security-Concepts" "Exploit Frameworks"

# Authentication & Access Control
create_note "05-Authentication-Access-Control" "Kerberos"
create_note "05-Authentication-Access-Control" "LDAP"
create_note "05-Authentication-Access-Control" "Single Sign-On"
create_note "05-Authentication-Access-Control" "RADIUS"
create_note "05-Authentication-Access-Control" "Certificate-Based Authentication"
create_note "05-Authentication-Access-Control" "Multi-Factor Authentication"
create_note "05-Authentication-Access-Control" "Two-Factor Authentication"
create_note "05-Authentication-Access-Control" "Local Authentication"

# Security Tools
create_note "06-Security-Tools" "Virtualization Technologies"
create_note "06-Security-Tools" "VMware"
create_note "06-Security-Tools" "VirtualBox"
create_note "06-Security-Tools" "nmap"
create_note "06-Security-Tools" "tcpdump"
create_note "06-Security-Tools" "Wireshark and Packet Sniffers"
create_note "06-Security-Tools" "nslookup"
create_note "06-Security-Tools" "dig"
create_note "06-Security-Tools" "iptables"
create_note "06-Security-Tools" "netstat"
create_note "06-Security-Tools" "ping"
create_note "06-Security-Tools" "traceroute"

# Incident Response & Forensics
create_note "07-Incident-Response" "Incident Response Process"
create_note "07-Incident-Response" "Digital Forensics Basics"
create_note "07-Incident-Response" "Evidence Preservation"
create_note "07-Incident-Response" "Investigation Techniques"

# Governance, Risk & Compliance
create_note "08-Governance-Risk-Compliance" "Risk Assessment"
create_note "08-Governance-Risk-Compliance" "Compliance and Auditing"
create_note "08-Governance-Risk-Compliance" "Backup and Resiliency"
create_note "08-Governance-Risk-Compliance" "Business Continuity Planning"
create_note "08-Governance-Risk-Compliance" "Security Frameworks"

# Practice Platforms
create_note "09-Practice-Platforms" "HackTheBox"
create_note "09-Practice-Platforms" "TryHackMe"
create_note "09-Practice-Platforms" "VulnHub"
create_note "09-Practice-Platforms" "picoCTF"
create_note "09-Practice-Platforms" "SANS Holiday Hack Challenge"

# Certifications
create_note "10-Certifications" "CompTIA A+"
create_note "10-Certifications" "CompTIA Linux+"
create_note "10-Certifications" "CompTIA Network+"
create_note "10-Certifications" "CompTIA Security+"
create_note "10-Certifications" "CCNA"
create_note "10-Certifications" "CEH"
create_note "10-Certifications" "CISSP"
create_note "10-Certifications" "OSCP"
create_note "10-Certifications" "CISM"
create_note "10-Certifications" "CISA"
create_note "10-Certifications" "GIAC Certifications"
create_note "10-Certifications" "CREST Certifications"

echo "Placeholder notes created successfully!"
