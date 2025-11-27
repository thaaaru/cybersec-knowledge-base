# Cyber Kill Chain

**Created:** 2025-11-25
**Tags:** #security #framework #attack-lifecycle #threat-intelligence

## Description

The Cyber Kill Chain is a framework developed by Lockheed Martin that describes the stages of a cyberattack. Understanding these stages helps defenders implement appropriate security controls and detect attacks early.

## The Seven Stages

### 1. Reconnaissance
**Attacker Activity:**
- Research target organization
- Identify employees, email formats
- Scan public information (OSINT)
- Social media mining
- Network scanning

**Defender Response:**
- Limit public information exposure
- Monitor for scanning activities
- Threat intelligence
- Security awareness training

### 2. Weaponization
**Attacker Activity:**
- Create malicious payload
- Embed exploit in deliverable
- Prepare phishing document
- Develop custom malware
- Couple exploit with backdoor

**Defender Response:**
- Threat intelligence sharing
- Understanding current exploits
- Vulnerability management
- Patch management

### 3. Delivery
**Attacker Activity:**
- Send phishing email
- Compromise website (watering hole)
- USB drop
- Supply chain compromise
- Exploit public-facing application

**Defender Response:**
- Email filtering and gateway security
- Web filtering
- USB device control
- Application whitelisting
- Security awareness training
- Patch management

### 4. Exploitation
**Attacker Activity:**
- Trigger vulnerability
- Execute malicious code
- Exploit application weakness
- Zero-day exploitation
- Social engineering victim

**Defender Response:**
- Vulnerability patching
- Endpoint protection
- IDS/IPS
- Application control
- Least privilege
- Segmentation

### 5. Installation
**Attacker Activity:**
- Install backdoor/remote access tool
- Establish persistence
- Modify registry/startup
- Create scheduled tasks
- Install rootkit

**Defender Response:**
- Endpoint detection and response (EDR)
- Application whitelisting
- File integrity monitoring
- Behavioral analysis
- Admin rights limitation

### 6. Command and Control (C2)
**Attacker Activity:**
- Establish outbound connection
- Beacon to C2 server
- Receive commands
- Maintain communication channel
- Use encrypted channel

**Defender Response:**
- Firewall egress filtering
- DNS monitoring and filtering
- IDS/IPS
- Network behavior analysis
- Proxy logs analysis
- Threat intelligence feeds

### 7. Actions on Objectives
**Attacker Activity:**
- Data exfiltration
- Lateral movement
- Privilege escalation
- Deploy ransomware
- Destroy evidence
- Maintain access

**Defender Response:**
- Data loss prevention (DLP)
- Network segmentation
- Access control
- Activity monitoring
- Incident response
- Forensics and recovery

## Defense Strategies by Stage

| Stage | Detection | Prevention |
|-------|-----------|------------|
| Reconnaissance | Web analytics, firewall logs | Limit public data |
| Weaponization | Threat intelligence | N/A (external) |
| Delivery | Email gateway, web filter | Training, filtering |
| Exploitation | IDS/IPS, EDR | Patching, hardening |
| Installation | EDR, file integrity | App whitelisting |
| C2 | Network monitoring | Egress filtering |
| Actions | DLP, SIEM | Segmentation, least privilege |

## Breaking the Chain

**Key Concept**: Stop the attack at any stage to prevent success.

### Early Stages (Preferable)
- Less damage
- Easier to contain
- Lower cost
- Proactive defense

### Later Stages
- More damage likely
- Harder to contain
- Higher remediation cost
- Reactive response

## Course of Action Matrix

For each stage, defenders should have:
- **Detect**: How to identify this stage
- **Deny**: How to prevent this stage
- **Disrupt**: How to interrupt this stage
- **Degrade**: How to slow down attacker
- **Deceive**: How to mislead attacker
- **Destroy**: How to eliminate attacker capability

## Limitations

- Assumes linear progression (not always true)
- Insider threats don't follow this model
- Advanced attackers may skip stages
- Doesn't cover all attack types
- May oversimplify complex attacks

## Alternative/Complementary Frameworks

- **MITRE ATT&CK**: More granular, tactics and techniques
- **Diamond Model**: Focuses on adversary, capability, infrastructure, victim
- **Unified Kill Chain**: Extends Lockheed Martin model

## Practical Application

### Defensive Gap Analysis
1. Map existing controls to kill chain stages
2. Identify gaps in coverage
3. Prioritize based on risk
4. Implement additional controls

### Incident Analysis
1. Identify which stages occurred
2. Determine detection points
3. Find where chain could have been broken
4. Improve future defenses

### Red Team/Penetration Testing
- Test ability to detect each stage
- Validate security controls
- Identify weaknesses

## Related Topics

- [[Defense in Depth]]
- [[Threat Hunting]]
- [[Incident Response Process]]
- [[Penetration Testing]]
- [[Vulnerability Management]]
- [[Common Hacking Tools]]
- [[Exploit Frameworks]]
- [[MITRE ATT&CK]] (if created)

## Use Cases

- Security architecture design
- Incident response planning
- Threat intelligence analysis
- Security tool selection
- Risk assessment
- Security awareness training

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
