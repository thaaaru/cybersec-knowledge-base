# Common Hacking Tools

**Created:** 2025-11-25
**Tags:** #hacking-tools #penetration-testing #security-tools #red-team #offensive-security

## Description

Common hacking tools are software applications and utilities used by security professionals, penetration testers, and malicious actors to identify vulnerabilities, exploit weaknesses, and test the security of systems and networks. While these tools can be used for both legitimate security testing and malicious attacks, understanding them is essential for cybersecurity professionals to defend against potential threats and conduct authorized security assessments.

The landscape of hacking tools spans multiple categories including reconnaissance, scanning, exploitation, post-exploitation, password cracking, wireless attacks, web application testing, and forensics. Many of these tools are open-source and freely available, making them accessible to both security professionals and adversaries. Modern security teams must understand how these tools work, what traces they leave behind, and how to detect their use in order to build effective defenses.

These tools are commonly used in [[Penetration Testing]] engagements, red team operations, and security research. They help identify security weaknesses before malicious actors can exploit them, making them valuable assets in proactive security programs. However, unauthorized use of these tools against systems without permission is illegal and can result in serious legal consequences. Ethical hackers must always obtain proper authorization and follow responsible disclosure practices when using these tools.

Understanding common hacking tools is also crucial for [[Threat Hunting]] and [[Incident Response Process]], as security analysts need to recognize indicators of compromise (IOCs) left by these tools. Many defensive security solutions include signatures and behavioral patterns to detect the use of popular hacking tools, making familiarity with them essential for both offensive and defensive security professionals.

## Reconnaissance and Information Gathering

### Network Reconnaissance
**[[nmap]]** (Network Mapper) is the industry-standard tool for network discovery and security auditing. It can discover hosts, identify open ports, determine service versions, and detect operating systems. Nmap's versatility and scriptable nature make it indispensable for both attackers and defenders.

**Masscan** is designed for high-speed port scanning across large networks, capable of scanning the entire Internet in minutes. While similar to nmap, it prioritizes speed over detailed analysis and is often used for initial reconnaissance of large attack surfaces.

**Netdiscover** is an ARP-based passive and active reconnaissance tool primarily used for wireless networks and systems without DHCP servers. It's particularly useful for identifying devices on local networks during the initial phases of penetration testing.

### DNS and Domain Reconnaissance
**[[dig]]** and **[[nslookup]]** are essential DNS interrogation tools that query domain name servers to retrieve DNS records. These tools help identify subdomains, mail servers, name servers, and other infrastructure components that might be potential attack vectors.

**DNSenum** automates the process of gathering DNS information including host addresses, subdomain enumeration, DNS zone transfers, and reverse lookups. It's particularly effective at mapping an organization's external infrastructure.

**Sublist3r** is a subdomain enumeration tool that uses search engines and other sources to discover subdomains. Subdomain discovery is crucial because organizations often have forgotten or poorly secured subdomains that can serve as entry points.

### Web Application Reconnaissance
**Burp Suite** is a comprehensive web application security testing platform that includes an intercepting proxy, web spider, scanner, and various tools for manipulating HTTP requests. It's the de facto standard for web application penetration testing.

**OWASP ZAP** (Zed Attack Proxy) is a free, open-source alternative to Burp Suite, providing similar functionality for finding vulnerabilities in web applications. It's maintained by the Open Web Application Security Project (OWASP).

**Nikto** is a web server scanner that tests for thousands of dangerous files, outdated server versions, and server configuration issues. It's often used in the initial assessment phase to identify low-hanging fruit.

## Vulnerability Scanning and Assessment

**Nessus** is a commercial vulnerability scanner that identifies security holes, missing patches, misconfigurations, and default passwords across networks. It's widely used in enterprise environments for compliance and [[Vulnerability Management]].

**OpenVAS** (Open Vulnerability Assessment System) is the open-source alternative to Nessus, providing comprehensive vulnerability scanning capabilities without licensing costs. It maintains an extensive database of vulnerability tests.

**Nexpose** (now InsightVM) by Rapid7 is an enterprise vulnerability management solution that provides real-time visibility into vulnerabilities and prioritizes them based on risk. It integrates well with other Rapid7 products.

**Nikto** serves dual purposes as both a reconnaissance tool and vulnerability scanner for web servers, checking for outdated versions, dangerous files, and configuration weaknesses.

## Exploitation Frameworks

**Metasploit Framework** is the most popular exploitation framework, providing a vast collection of exploits, payloads, and auxiliary modules. It's used by penetration testers worldwide and has become the standard for exploit development and deployment. More details in [[Exploit Frameworks]].

**Cobalt Strike** is a commercial adversary simulation platform designed for red team operations. It provides advanced post-exploitation capabilities, command and control (C2) infrastructure, and sophisticated evasion techniques. However, it has been increasingly used by threat actors after versions were leaked.

**Empire/PowerShell Empire** is a post-exploitation framework that uses PowerShell agents to maintain access to compromised Windows systems. It's particularly effective because PowerShell is native to Windows and often allowed by security policies.

**BeEF** (Browser Exploitation Framework) focuses on exploiting web browser vulnerabilities to assess the security of web applications and client-side attacks. It demonstrates the risks of cross-site scripting (XSS) and other browser-based attacks.

## Password Cracking and Authentication

**John the Ripper** is a fast password cracker that supports hundreds of hash and cipher types. It's used for both testing password strength and recovering lost passwords through dictionary attacks, brute force, and rainbow tables.

**Hashcat** is considered the world's fastest password cracker, supporting GPU acceleration and a vast array of hashing algorithms. It's particularly effective for cracking complex passwords when sufficient computing power is available.

**Hydra** is a parallelized network authentication cracker that supports numerous protocols including SSH, FTP, HTTP, SMB, and databases. It's commonly used to test password policies and identify weak credentials.

**Mimikatz** is a powerful post-exploitation tool for extracting plaintext passwords, hashes, PIN codes, and Kerberos tickets from Windows memory. It's frequently used by both penetration testers and malicious actors for credential harvesting.

**Responder** is a LLMNR, NBT-NS, and MDNS poisoner that captures authentication credentials on Windows networks. It exploits common Windows misconfigurations to steal password hashes.

## Wireless Network Tools

**Aircrack-ng** is a complete suite for assessing WiFi network security, including packet capture, WEP and WPA/WPA2-PSK cracking, and replay attacks. It's the standard tool for wireless penetration testing.

**Reaver** implements a brute force attack against WiFi Protected Setup (WPS) to recover WPA/WPA2 passphrases. It exploits a fundamental design flaw in WPS that affects many routers.

**Wifite** automates wireless auditing, attempting to crack WEP, WPA, and WPS networks with minimal user interaction. It combines multiple tools into a streamlined workflow.

**Kismet** is a wireless network detector, packet sniffer, and intrusion detection system. It works passively, detecting networks without transmitting and making it difficult to detect.

## Network Sniffing and Analysis

**[[Wireshark and Packet Sniffers]]** is the world's foremost network protocol analyzer, allowing deep inspection of hundreds of protocols. It's essential for network troubleshooting, analysis, and security investigations.

**[[tcpdump]]** is a command-line packet analyzer that captures network traffic for later analysis. It's lightweight, powerful, and available on virtually all Unix-like systems.

**Ettercap** is a comprehensive suite for man-in-the-middle attacks, supporting active and passive network dissection and sniffing of live connections. It includes features for protocol analysis and network/host fingerprinting.

**Bettercap** is a modern, portable framework for network monitoring, reconnaissance, and attacks. It's more powerful and flexible than Ettercap, with support for wireless networks and Bluetooth.

## Web Application Testing

**SQLmap** automates the process of detecting and exploiting SQL injection vulnerabilities in database-driven applications. It supports a wide variety of database management systems and advanced exploitation techniques.

**XSSer** is a framework for detecting and exploiting Cross-Site Scripting (XSS) vulnerabilities. It includes over 1,300 XSS attack vectors and can bypass various filters and protections.

**Commix** (Command Injection Exploiter) is a tool for testing web applications for command injection vulnerabilities. It automates the detection and exploitation process across various injection techniques.

**WPScan** is a WordPress vulnerability scanner that identifies security issues in WordPress installations, themes, and plugins. Given WordPress's popularity, this tool is essential for securing web applications.

## Social Engineering Tools

**Social Engineering Toolkit (SET)** is a framework designed for social engineering penetration tests. It includes phishing attacks, credential harvesting, infectious media generation, and other attack vectors targeting human psychology rather than technical vulnerabilities.

**Gophish** is an open-source phishing simulation platform that helps organizations test their employees' susceptibility to phishing attacks. It provides campaign management, email templates, and detailed reporting.

**King Phisher** is another phishing campaign toolkit that emphasizes customization and flexibility. It includes a client-server architecture for team collaboration during social engineering assessments.

## Forensics and Analysis

**Autopsy** is a digital forensics platform that makes it easier to analyze digital evidence. It provides a graphical interface to The Sleuth Kit and other forensic tools, supporting various file systems and data recovery techniques.

**Volatility** is an advanced memory forensics framework for analyzing RAM dumps. It can extract running processes, network connections, loaded modules, and other artifacts from memory images.

**Foremost** is a file recovery tool that recovers files based on their headers, footers, and internal data structures. It's useful for recovering deleted files and extracting files from disk images.

## Remote Access and C2

**Netcat** (often called the "TCP/IP Swiss Army knife") is a versatile networking utility that can create TCP/UDP connections, port scanning, and file transfers. Its simplicity and power make it a favorite for both testing and maintaining access.

**Socat** is an enhanced version of netcat that supports additional protocols and features like SSL/TLS, SOCKS, and proxy connections. It's more powerful but also more complex than netcat.

**Meterpreter** is Metasploit's advanced payload that provides a powerful post-exploitation platform. It operates entirely in memory, making it difficult to detect and leaving minimal forensic evidence.

## Detection and Defense Considerations

Security teams must be able to detect the use of these tools in their environment. Common detection methods include:

**Signature-Based Detection**: Most security solutions include signatures for popular hacking tools. However, tools can be modified or obfuscated to evade signature detection.

**Behavioral Analysis**: Monitoring for unusual network patterns, port scans, authentication attempts, and process execution can reveal tool usage even when signatures are evaded.

**Network Traffic Analysis**: Many hacking tools produce distinctive network traffic patterns that can be detected through deep packet inspection or analysis of NetFlow data.

**Endpoint Detection**: Modern EDR solutions can detect the execution of hacking tools, especially when they use common techniques like process injection, credential dumping, or lateral movement.

**Log Correlation**: Analyzing logs from multiple sources (SIEM, firewalls, endpoints, authentication systems) can reveal patterns consistent with hacking tool usage.

## Legal and Ethical Considerations

The use of hacking tools carries significant legal and ethical responsibilities:

**Authorization Required**: Using these tools against systems without explicit written permission is illegal in most jurisdictions, even for security research purposes.

**Scope Limitations**: Authorized testing must stay within the defined scope. Exceeding the scope, even accidentally, can result in legal consequences.

**Responsible Disclosure**: When vulnerabilities are discovered, they should be reported to the affected parties responsibly, giving them time to fix issues before public disclosure.

**Tool Modifications**: Modifying tools to bypass security controls or make them more dangerous should be done carefully and only in controlled environments.

**Data Handling**: Any sensitive data discovered during testing must be handled according to privacy laws and confidentiality agreements.

## Best Practices for Tool Usage

1. **Always Obtain Authorization**: Never test systems without explicit written permission from the owner
2. **Use in Isolated Environments**: Test and practice with tools in lab environments before using them in production
3. **Understand Tool Capabilities**: Know exactly what a tool does before running it to avoid unintended consequences
4. **Keep Tools Updated**: Use the latest versions to ensure accuracy and avoid false positives
5. **Document Everything**: Maintain detailed logs of tool usage, findings, and actions taken
6. **Combine Multiple Tools**: Don't rely on a single tool; cross-verify findings with multiple sources
7. **Understand Detection**: Know what traces your tools leave and how they can be detected
8. **Practice Operational Security**: Protect your testing infrastructure and credentials
9. **Follow Industry Standards**: Adhere to frameworks like PTES (Penetration Testing Execution Standard)
10. **Continuous Learning**: Stay updated on new tools and techniques as the landscape evolves rapidly

## Related Topics

- [[Penetration Testing]]
- [[Exploit Frameworks]]
- [[Threat Hunting]]
- [[Network Segmentation]]
- [[Vulnerability Management]]
- [[Incident Response Process]]
- [[Digital Forensics Basics]]
- [[nmap]]
- [[Wireshark and Packet Sniffers]]
- [[tcpdump]]
- [[dig]]
- [[nslookup]]
- [[HackTheBox]]
- [[TryHackMe]]
- [[VulnHub]]

## Practice and Training Resources

- **[[HackTheBox]]**: Provides machines specifically designed to practice with various hacking tools
- **[[TryHackMe]]**: Offers guided rooms teaching specific tools and techniques
- **[[VulnHub]]**: Hosts vulnerable virtual machines for practicing tool usage
- **[[picoCTF]]**: Includes challenges requiring creative tool application
- **Metasploitable**: Intentionally vulnerable Linux distribution for practice
- **DVWA (Damn Vulnerable Web Application)**: Practice environment for web application tools
- **WebGoat**: OWASP's deliberately insecure application for learning

## Relevant Certifications

- [[CEH]] (Certified Ethical Hacker) - Covers many common hacking tools
- [[OSCP]] (Offensive Security Certified Professional) - Practical tool usage
- [[GIAC Certifications]] - Various certifications covering specific tool categories
- [[Security+]] - Includes basic understanding of security tools

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
