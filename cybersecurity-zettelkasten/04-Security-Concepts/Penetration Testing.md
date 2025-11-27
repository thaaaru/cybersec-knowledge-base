# Penetration Testing

**Created:** 2025-11-25
**Tags:** #penetration-testing #pentesting #offensive-security #security-assessment #ethical-hacking

## Description

Penetration testing, commonly known as pen testing or ethical hacking, is a simulated cyberattack against a system, network, or application performed to identify security vulnerabilities that could be exploited by malicious actors. Unlike [[Vulnerability Management]], which focuses on discovering and cataloging vulnerabilities, penetration testing goes further by attempting to actually exploit these weaknesses to determine their real-world impact and the effectiveness of security controls.

The practice involves authorized security professionals using the same tools, techniques, and procedures (TTPs) as real attackers, but in a controlled environment with explicit permission and defined scope. Penetration testers attempt to breach systems, escalate privileges, move laterally through networks, and access sensitive data - all to demonstrate what an actual attacker could accomplish and to provide actionable recommendations for improving security posture.

Penetration testing serves multiple critical purposes in a comprehensive security program. It validates that security controls are working as intended, uncovers complex vulnerabilities that automated scanners miss, demonstrates business risk in concrete terms, and satisfies compliance requirements for many regulatory frameworks. The insights gained from penetration tests help organizations prioritize remediation efforts and make informed decisions about security investments.

Modern penetration testing has evolved beyond simple vulnerability exploitation to encompass sophisticated attack simulations including social engineering, physical security testing, wireless network attacks, cloud infrastructure assessments, and red team exercises that simulate advanced persistent threats. Effective penetration testing requires a combination of technical expertise, creativity, problem-solving skills, and ethical conduct, making it one of the most challenging and rewarding specializations in cybersecurity.

## Types of Penetration Tests

### By Approach/Knowledge Level

**Black Box Testing**
- No prior knowledge of the target system
- Simulates external attacker with no inside information
- Tests how visible the organization is from outside
- Most time-consuming approach
- Realistic external threat simulation

**Gray Box Testing**
- Partial knowledge provided (e.g., user credentials, network diagrams)
- Simulates insider threat or compromised account
- Balance between realism and efficiency
- Most common approach in practice
- Focuses testing on critical areas

**White Box Testing**
- Full knowledge of systems, source code, architecture
- Also called "crystal box" or "clear box" testing
- Most comprehensive testing possible
- Efficient use of testing time
- Best for finding complex vulnerabilities
- Often includes code review

### By Target Type

**External Penetration Test**
- Tests internet-facing assets and perimeter defenses
- Targets: websites, email servers, VPNs, external IPs
- Simulates remote attacker
- Identifies exposure to internet-based threats
- Tests [[Perimeter Security]] effectiveness

**Internal Penetration Test**
- Assumes attacker has gained internal network access
- Simulates insider threat or successful initial breach
- Tests [[Network Segmentation]] and internal controls
- Evaluates lateral movement possibilities
- Critical for [[Defense in Depth]] validation

**Web Application Penetration Test**
- Focused on web applications and APIs
- Tests for OWASP Top 10 vulnerabilities
- Includes authentication, authorization, input validation
- Business logic flaws and session management
- Both automated and manual testing

**Mobile Application Penetration Test**
- iOS and Android application security testing
- Client-side code analysis and reverse engineering
- API communication security
- Local data storage security
- Platform-specific vulnerabilities

**Wireless Network Penetration Test**
- WiFi security assessment
- Rogue access point detection
- Encryption protocol analysis
- WPA/WPA2/WPA3 security testing
- Wireless intrusion detection testing

**Physical Penetration Test**
- Tests physical security controls
- Attempts to gain unauthorized physical access
- Social engineering components
- Badge cloning and lock picking
- Tailgating and piggybacking attempts

**Cloud Penetration Test**
- Cloud infrastructure security assessment
- Configuration review (IAM, S3, security groups)
- Container and orchestration security
- API security testing
- Multi-tenancy isolation testing

**IoT Penetration Test**
- Internet of Things device security
- Firmware analysis and reverse engineering
- Communication protocol security
- Hardware security testing
- Embedded system vulnerabilities

## Penetration Testing Methodology

### 1. Pre-Engagement / Planning
**Objective**: Define scope, rules of engagement, and legal protections

**Activities**:
- Scope definition (in-scope and out-of-scope systems)
- Rules of engagement documentation
- Legal agreements and authorization
- Emergency contact establishment
- Communication protocols
- Success criteria definition

**Deliverables**:
- Signed contract and statement of work
- Rules of engagement document
- Non-disclosure agreements
- Authorization letters

### 2. Reconnaissance / Information Gathering
**Objective**: Collect information about the target

**Passive Reconnaissance** (No direct interaction):
- OSINT (Open Source Intelligence) gathering
- Social media profiling
- DNS enumeration
- WHOIS lookups
- Job posting analysis
- Public document metadata
- Search engine reconnaissance

**Active Reconnaissance** (Direct interaction):
- [[nmap]] port and service scanning
- [[DNS]] zone transfers
- Banner grabbing
- Service fingerprinting
- Web application spidering
- Network mapping

**Tools**:
- [[nmap]], masscan for network scanning
- theHarvester, Maltego for OSINT
- Shodan, Censys for internet-wide reconnaissance
- DNSdumpster, [[dig]], [[nslookup]] for DNS
- Google Dorks for search engine reconnaissance

### 3. Enumeration / Scanning
**Objective**: Identify specific vulnerabilities and attack vectors

**Activities**:
- Service version detection
- Vulnerability scanning
- User enumeration
- Share enumeration (SMB, NFS)
- SNMP enumeration
- Web directory brute-forcing
- SSL/TLS configuration analysis

**Tools**:
- Nessus, OpenVAS for vulnerability scanning
- Gobuster, dirb for directory enumeration
- enum4linux for Windows/Samba enumeration
- nikto for web server scanning
- testssl.sh for SSL/TLS testing

### 4. Vulnerability Analysis
**Objective**: Identify exploitable vulnerabilities

**Activities**:
- Correlate findings from multiple sources
- Prioritize vulnerabilities by exploitability
- Research exploits and techniques
- Map vulnerabilities to [[Common Hacking Tools]]
- Identify attack paths
- Analyze business logic flaws

**Considerations**:
- Exploit availability and reliability
- System criticality and sensitivity
- Potential impact of exploitation
- Likelihood of detection
- Client risk tolerance

### 5. Exploitation
**Objective**: Gain unauthorized access to systems

**Techniques**:
- Exploit known vulnerabilities
- Password attacks (brute force, spraying, cracking)
- Social engineering
- Client-side attacks (phishing, malicious documents)
- Man-in-the-middle attacks
- Privilege escalation
- Application-specific exploits

**Tools**:
- Metasploit Framework ([[Exploit Frameworks]])
- SQLmap for SQL injection
- Burp Suite for web application attacks
- John the Ripper, Hashcat for password cracking
- Responder for LLMNR/NBT-NS poisoning
- Impacket for Windows exploitation

**Common Attacks**:
- SQL injection
- Cross-site scripting (XSS)
- Remote code execution
- Buffer overflows
- Credential stuffing
- Pass-the-hash attacks

### 6. Post-Exploitation
**Objective**: Determine impact and demonstrate business risk

**Activities**:
- Privilege escalation (local and domain)
- Lateral movement through network
- Persistence mechanism installation
- Data exfiltration simulation
- Pivoting to other networks
- Evidence collection
- Documenting compromised assets

**Techniques**:
- Credential harvesting (Mimikatz, LaZagne)
- Kerberos attacks (Kerberoasting, Golden Ticket)
- Active Directory exploitation
- Backdoor installation
- Log tampering
- Data staging and exfiltration

**Goals**:
- Demonstrate real-world impact
- Identify crown jewels and sensitive data
- Test detection and response capabilities
- Evaluate [[Incident Response Process]] effectiveness

### 7. Reporting
**Objective**: Communicate findings and recommendations

**Report Components**:

**Executive Summary**:
- High-level overview for non-technical stakeholders
- Business risk summary
- Key findings and recommendations
- Overall security posture assessment

**Technical Findings**:
- Detailed vulnerability descriptions
- Proof-of-concept demonstrations
- Exploitation steps
- Screenshots and evidence
- Severity ratings (CVSS scores)
- Affected systems

**Remediation Recommendations**:
- Specific, actionable fixes
- Prioritized by risk
- Short-term and long-term solutions
- Compensating controls
- Strategic recommendations

**Appendices**:
- Methodology details
- Tools used
- Raw scan data
- Attack paths and timelines

### 8. Remediation Support and Retesting
**Objective**: Verify fixes and support remediation

**Activities**:
- Answer client questions about findings
- Clarify technical details
- Provide guidance on remediation
- Retest specific vulnerabilities after fixes
- Validate security improvements
- Document retest results

## Penetration Testing Standards and Frameworks

### OWASP Testing Guide
- Comprehensive web application testing methodology
- Covers authentication, authorization, session management
- Business logic testing
- Input validation testing
- Regularly updated by community

### PTES (Penetration Testing Execution Standard)
- Complete penetration testing methodology
- Seven main phases from planning to reporting
- Technical guidelines and reporting templates
- Industry-recognized standard

### OSSTMM (Open Source Security Testing Methodology Manual)
- Scientific methodology for security testing
- Peer-reviewed and regularly updated
- Covers physical, human, and technological security
- Provides metrics for quantifying security

### NIST SP 800-115
- Technical Guide to Information Security Testing
- Government and enterprise standard
- Covers testing techniques and methodologies
- Emphasizes risk-based testing

## Common Vulnerabilities Tested

### OWASP Top 10 (Web Applications)
1. Broken Access Control
2. Cryptographic Failures
3. Injection (SQL, OS command, LDAP)
4. Insecure Design
5. Security Misconfiguration
6. Vulnerable and Outdated Components
7. Identification and Authentication Failures
8. Software and Data Integrity Failures
9. Security Logging and Monitoring Failures
10. Server-Side Request Forgery (SSRF)

### Infrastructure Vulnerabilities
- Unpatched systems and services
- Weak or default credentials
- Misconfigured services
- Insecure protocols (Telnet, FTP, SMBv1)
- Unnecessary services running
- Weak encryption implementations

### Windows-Specific Vulnerabilities
- MS17-010 (EternalBlue)
- Pass-the-Hash attacks
- [[Kerberos]] attacks (Kerberoasting, AS-REP Roasting)
- [[LDAP]] injection
- Active Directory misconfigurations
- Group Policy vulnerabilities

### Linux-Specific Vulnerabilities
- Privilege escalation via SUID binaries
- Kernel exploits
- Misconfigured sudo permissions
- Cron job abuse
- Docker/container escape
- Weak file permissions

## Essential Skills for Penetration Testers

### Technical Skills
- **Networking**: TCP/IP, [[OSI Model]], routing, protocols
- **Operating Systems**: [[Windows Operating System]], [[Linux Operating System]], [[MacOS Operating System]]
- **Programming**: Python, Bash, PowerShell, JavaScript
- **Web Technologies**: [[HTTP and HTTPS]], [[SSL-TLS]], REST APIs, WebSockets
- **Databases**: SQL, NoSQL, database exploitation
- **Cryptography**: Understanding encryption, hashing, PKI

### Security Knowledge
- **Vulnerability Types**: Understanding common vulnerability classes
- **Exploit Development**: Basic exploitation techniques
- **[[Reverse Engineering]]**: Reading assembly, debugging
- **Malware Analysis**: Identifying malicious code
- **Network Security**: Firewalls, IDS/IPS, [[VPN]]

### Soft Skills
- **Report Writing**: Clear, professional documentation
- **Communication**: Explaining technical issues to non-technical stakeholders
- **Ethics**: Professional conduct and integrity
- **Problem Solving**: Creative thinking and persistence
- **Time Management**: Working within project constraints

## Penetration Testing Tools

### Distributions
- **Kali Linux**: Premier penetration testing distribution
- **Parrot Security OS**: Security-focused distribution
- **BlackArch Linux**: Arch-based with 2500+ tools
- **Pentoo**: Gentoo-based penetration testing

### Frameworks
- **Metasploit**: Comprehensive exploitation framework
- **Cobalt Strike**: Commercial red team platform
- **Empire/Starkiller**: Post-exploitation framework
- **BeEF**: Browser exploitation framework

### Network Tools
- **[[nmap]]**: Network discovery and security auditing
- **[[Wireshark and Packet Sniffers]]**: Network protocol analyzer
- **[[tcpdump]]**: Command-line packet analyzer
- **Responder**: LLMNR/NBT-NS/MDNS poisoner
- **Bettercap**: Network attack and monitoring

### Web Application Tools
- **Burp Suite**: Web vulnerability scanner and proxy
- **OWASP ZAP**: Free web application security scanner
- **SQLmap**: Automatic SQL injection tool
- **Nikto**: Web server scanner
- **WPScan**: WordPress vulnerability scanner

### Password Tools
- **John the Ripper**: Password cracking
- **Hashcat**: Advanced password recovery
- **Hydra**: Network login cracker
- **CrackMapExec**: Swiss army knife for pentesting networks
- **Mimikatz**: Credential extraction

### Exploitation Tools
- **Metasploit Framework**: Exploit development and execution
- **SearchSploit**: Offline exploit database
- **ExploitDB**: Online exploit database
- **Impacket**: Python classes for network protocols

## Compliance and Legal Considerations

### Authorization Requirements
- Written authorization from asset owner
- Clearly defined scope and boundaries
- Emergency contact information
- Explicit permission for each system tested
- Legal protections for tester and client

### Compliance Drivers
- **PCI DSS**: Requires annual penetration testing
- **HIPAA**: Security assessments for healthcare
- **GDPR**: Security measures for data protection
- **SOC 2**: Security testing requirements
- **ISO 27001**: Regular security assessments

### Legal Risks
- Unauthorized access is illegal (Computer Fraud and Abuse Act)
- Exceeding authorized scope
- Causing system damage or outages
- Data breaches during testing
- Third-party systems in scope

### Ethical Guidelines
- Obtain proper authorization
- Stay within defined scope
- Report all findings accurately
- Protect client data and confidentiality
- Maintain professional standards

## Advanced Penetration Testing Concepts

### Red Team Exercises
- Multi-phase, long-term engagement
- Simulates advanced persistent threat (APT)
- Tests detection and response capabilities
- Social engineering and physical security
- Adversary simulation

### Purple Teaming
- Collaboration between red team (offense) and blue team (defense)
- Immediate feedback and improvements
- Knowledge transfer between teams
- Improves both offensive and defensive capabilities

### Adversary Emulation
- Simulate specific threat actor TTPs
- MITRE ATT&CK framework alignment
- Realistic threat scenarios
- Tests defenses against known threats

### Bug Bounty Programs
- Crowd-sourced security testing
- Continuous security assessment
- Incentivized vulnerability discovery
- Platforms: HackerOne, Bugcrowd, Synack

## Career Path and Certifications

### Entry-Level Certifications
- [[CompTIA Security+]]
- [[CEH]] (Certified Ethical Hacker)
- eJPT (eLearnSecurity Junior Penetration Tester)

### Intermediate Certifications
- [[OSCP]] (Offensive Security Certified Professional)
- GPEN (GIAC Penetration Tester)
- PNPT (Practical Network Penetration Tester)

### Advanced Certifications
- OSEP (Offensive Security Experienced Penetration Tester)
- OSCE (Offensive Security Certified Expert)
- [[GIAC Certifications]] (GWAPT, GXPN)
- [[CREST Certifications]] (CRT, CCT)

### Specialized Certifications
- OSWE (Offensive Security Web Expert)
- GWAPT (GIAC Web Application Penetration Tester)
- GMOB (GIAC Mobile Device Security Analyst)
- GREM (GIAC Reverse Engineering Malware)

## Best Practices

### Before the Test
1. **Comprehensive scoping**: Clearly define what's in scope
2. **Backup verification**: Ensure backups exist and are tested
3. **Communication plan**: Establish escalation procedures
4. **Baseline documentation**: Document system state before testing
5. **Tool validation**: Test tools in lab environment first

### During the Test
1. **Document everything**: Screenshots, commands, timestamps
2. **Stay in scope**: Never test unauthorized systems
3. **Communicate regularly**: Keep client informed of progress
4. **Safe exploitation**: Minimize risk of system damage
5. **Evidence collection**: Gather proof while respecting privacy

### After the Test
1. **System cleanup**: Remove all backdoors, tools, and artifacts
2. **Thorough reporting**: Provide actionable recommendations
3. **Knowledge transfer**: Educate client on findings
4. **Retest support**: Verify fixes when requested
5. **Lessons learned**: Document for future engagements

## Common Challenges

### Technical Challenges
- **Advanced defenses**: Modern security tools detecting testing
- **Complex environments**: Cloud, containers, microservices
- **Time constraints**: Limited testing window
- **False positives**: Distinguishing real vulnerabilities
- **Tool limitations**: Automated tools missing manual issues

### Organizational Challenges
- **Scope creep**: Clients requesting additional testing
- **Inadequate access**: Missing credentials or permissions
- **Scheduling conflicts**: Production system availability
- **Stakeholder management**: Multiple decision makers
- **Unrealistic expectations**: Clients expecting guaranteed findings

## Related Topics

- [[Vulnerability Management]]
- [[Threat Hunting]]
- [[Reverse Engineering]]
- [[Common Hacking Tools]]
- [[Exploit Frameworks]]
- [[Incident Response Process]]
- [[Defense in Depth]]
- [[Zero Trust Architecture]]
- [[Security Runbooks]]
- [[nmap]]
- [[Wireshark and Packet Sniffers]]
- [[Kerberos]]
- [[LDAP]]

## Practice Platforms

- [[HackTheBox]]
- [[TryHackMe]]
- [[VulnHub]]
- [[picoCTF]]
- PentesterLab
- Offensive Security Proving Grounds
- SANS Cyber Ranges

## Further Learning

### Books
- "The Web Application Hacker's Handbook" by Dafydd Stuttard
- "Penetration Testing: A Hands-On Introduction to Hacking" by Georgia Weidman
- "Red Team Field Manual" (RTFM) by Ben Clark
- "The Hacker Playbook" series by Peter Kim

### Resources
- OWASP Testing Guide
- PTES Technical Guidelines
- HackTricks
- MITRE ATT&CK Framework
- PayloadsAllTheThings

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
