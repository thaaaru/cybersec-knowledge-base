# Threat Hunting

**Created:** 2025-11-25
**Tags:** #threat-hunting #proactive-security #security-operations #incident-response #threat-intelligence

## Description

Threat hunting is a proactive cybersecurity practice where security professionals actively search through networks, endpoints, and datasets to detect and isolate advanced threats that evade existing security solutions. Unlike traditional security monitoring that waits for alerts, threat hunting operates on the assumption that adversaries have already bypassed perimeter defenses and are lurking undetected within the environment.

The practice emerged from the recognition that automated security tools alone cannot catch every threat, particularly sophisticated advanced persistent threats (APTs) and zero-day exploits. Threat hunters use a combination of human intuition, threat intelligence, data analysis, and hypothesis-driven investigation to discover malicious activity before it causes significant damage. This approach shifts security teams from a reactive posture to a proactive one, actively seeking out indicators of compromise (IOCs) and abnormal behaviors that might indicate a breach.

Effective threat hunting requires deep knowledge of both the organization's normal network behavior and attacker tactics, techniques, and procedures (TTPs). Hunters must understand how adversaries operate, what tools they use, and what patterns they leave behind. This knowledge allows them to formulate hypotheses about potential intrusions and systematically investigate those hypotheses using various data sources and analytical techniques.

The process is iterative and continuous, with each hunt generating insights that improve detection capabilities and inform future hunting missions. Successful threat hunting programs not only discover active threats but also identify security gaps, improve detection rules, and enhance overall security posture. Organizations with mature threat hunting capabilities can significantly reduce dwell time - the period between initial compromise and detection - from months or weeks down to hours or days.

## Core Components

### 1. Threat Intelligence
- External threat feeds and indicators
- Industry-specific threat reports
- Adversary TTPs from frameworks like MITRE ATT&CK
- Dark web monitoring
- Information sharing communities

### 2. Data Sources
- Network traffic logs and packet captures
- Endpoint telemetry and system logs
- Authentication logs and access records
- Cloud infrastructure logs
- Application logs and database queries
- Email and web proxy logs

### 3. Hunting Tools
- SIEM (Security Information and Event Management)
- EDR (Endpoint Detection and Response)
- Network analysis tools like [[Wireshark and Packet Sniffers]]
- Log aggregation platforms
- Threat intelligence platforms
- Custom scripts and automation

## Threat Hunting Methodologies

### Hypothesis-Driven Hunting
Start with a specific hypothesis about potential threats:
- "Attackers may be using PowerShell for lateral movement"
- "Credential dumping tools may be present on domain controllers"
- "Command and control traffic may be hidden in DNS queries"

### Intelligence-Based Hunting
Use threat intelligence to guide searches:
- Known IOCs from recent campaigns
- TTPs associated with specific threat actors
- Vulnerabilities being actively exploited

### Baseline Anomaly Detection
Identify deviations from normal behavior:
- Unusual network connections
- Abnormal user activity patterns
- Unexpected process executions
- Anomalous data transfers

### Custom Analytics
Develop detection logic for specific threats:
- Statistical analysis of behaviors
- Machine learning models
- Pattern recognition algorithms
- Correlation of multiple events

## The Threat Hunting Process

### 1. Trigger Phase
- Review threat intelligence reports
- Analyze security alerts and incidents
- Monitor for emerging vulnerabilities
- Identify high-risk assets or users

### 2. Investigation Phase
- Collect relevant data from multiple sources
- Apply analytical techniques and tools
- Search for indicators of compromise
- Correlate events across systems
- Document findings and evidence

### 3. Resolution Phase
- Confirm or disprove the hypothesis
- Escalate verified threats to incident response
- Document attacker TTPs discovered
- Create detection rules for future automation
- Update threat models and hunting playbooks

### 4. Improvement Phase
- Enhance detection capabilities
- Update security controls
- Share lessons learned
- Refine hunting techniques
- Train team members

## Essential Skills for Threat Hunters

### Technical Skills
- Network protocol analysis
- Operating system internals (Windows, Linux, macOS)
- Scripting and automation (Python, PowerShell, Bash)
- Log analysis and data querying (SQL, SPL, KQL)
- Malware analysis basics
- Understanding of [[Reverse Engineering]] fundamentals

### Analytical Skills
- Critical thinking and pattern recognition
- Statistical analysis
- Hypothesis formulation and testing
- Data visualization
- Root cause analysis

### Domain Knowledge
- Adversary tactics and techniques (MITRE ATT&CK)
- Common attack vectors and methodologies
- Network architecture and protocols
- Security tools and their limitations
- Incident response procedures

## Common Hunting Scenarios

### Credential Theft Detection
- Monitor for LSASS memory dumps
- Search for credential dumping tools (Mimikatz, LaZagne)
- Analyze authentication logs for pass-the-hash attacks
- Detect unusual credential access patterns

### Lateral Movement Discovery
- Identify abnormal RDP or SSH connections
- Track PsExec and remote execution tools
- Monitor for suspicious SMB activity
- Analyze service creation on remote systems

### Data Exfiltration Detection
- Look for large data transfers to external IPs
- Monitor for unusual DNS tunneling
- Detect compression and staging activities
- Identify abnormal cloud storage uploads

### Command and Control Detection
- Search for beaconing behavior
- Analyze network connections to suspicious domains
- Monitor for encoded traffic patterns
- Detect DGA (Domain Generation Algorithm) usage

## Key Performance Indicators

### Hunt Metrics
- Number of hunts conducted
- Threats discovered per hunt
- False positive rate
- Time to detect (TTD)
- Dwell time reduction

### Impact Metrics
- Incidents prevented
- New detection rules created
- Security gaps identified
- Mean time to respond (MTTR) improvement

## Threat Hunting Maturity Model

### HM0 - Initial
- No formal hunting program
- Relies entirely on automated alerts
- Reactive security posture

### HM1 - Minimal
- Ad-hoc hunting activities
- Limited data collection
- Basic analysis capabilities

### HM2 - Procedural
- Regular hunting schedule
- Documented procedures
- Some automation and tooling

### HM3 - Innovative
- Sophisticated analysis techniques
- Integrated threat intelligence
- Custom detection development

### HM4 - Leading
- Continuous hunting operations
- Advanced automation
- Industry-leading practices
- Threat intelligence sharing

## Best Practices

1. **Start with High-Value Assets**: Focus hunting efforts on critical systems and data
2. **Use Threat Intelligence**: Leverage both internal and external intelligence sources
3. **Document Everything**: Maintain detailed hunt logs and findings
4. **Create Detection Rules**: Convert successful hunts into automated detections
5. **Collaborate Across Teams**: Work closely with SOC, IR, and threat intelligence teams
6. **Continuous Learning**: Stay updated on latest threats and techniques
7. **Measure Success**: Track metrics and demonstrate value
8. **Automate Repetitive Tasks**: Free up time for complex analysis
9. **Build Playbooks**: Standardize approaches for common scenarios
10. **Practice Regularly**: Schedule consistent hunting activities

## Common Challenges

### Data Volume and Quality
- Overwhelming amounts of log data
- Incomplete or missing telemetry
- Data retention limitations
- Log normalization issues

### Resource Constraints
- Limited hunting staff
- Time constraints from other duties
- Budget limitations for tools
- Training and skill development needs

### False Positives
- Benign anomalies triggering investigations
- Time wasted on dead ends
- Alert fatigue

### Tool Limitations
- Gaps in visibility
- Integration challenges
- Learning curves for new tools

## Tools and Technologies

### SIEM Platforms
- Splunk Enterprise Security
- IBM QRadar
- Microsoft Sentinel
- Elastic Security

### EDR Solutions
- CrowdStrike Falcon
- Carbon Black
- Microsoft Defender for Endpoint
- SentinelOne

### Network Analysis
- [[Wireshark and Packet Sniffers]]
- [[tcpdump]]
- Zeek (formerly Bro)
- Suricata

### Threat Intelligence Platforms
- MISP (Malware Information Sharing Platform)
- ThreatConnect
- Anomali
- Recorded Future

### Open Source Tools
- [[nmap]] for network reconnaissance
- YARA for malware pattern matching
- Sigma for detection rule sharing
- Velociraptor for endpoint hunting

## Integration with Security Operations

### SOC Collaboration
- Feed hunt findings to SOC analysts
- Investigate escalated SOC alerts
- Improve SIEM detection rules
- Share threat intelligence

### Incident Response
- Provide context during active incidents
- Conduct post-incident hunts
- Identify persistence mechanisms
- Support forensic investigations

### Vulnerability Management
- Hunt for exploitation of known vulnerabilities
- Prioritize patching based on active threats
- Validate security controls

## Real-World Examples

### APT29 (Cozy Bear) Hunt
Hypothesis: Adversaries may be using legitimate cloud services for C2
- Analyzed unusual patterns in cloud service API calls
- Discovered compromised OAuth tokens
- Identified data exfiltration to OneDrive
- Resulted in new detection rules for cloud abuse

### Insider Threat Hunt
Hypothesis: Departing employees may be stealing intellectual property
- Monitored file access patterns for high-value data
- Detected bulk downloads to USB devices
- Identified after-hours access to sensitive repositories
- Prevented data theft before employee departure

### Cryptocurrency Mining Hunt
Hypothesis: Unauthorized mining may be consuming resources
- Analyzed CPU utilization anomalies
- Detected network connections to mining pools
- Discovered compromised servers running miners
- Implemented network-based blocking

## Related Topics

- [[Vulnerability Management]]
- [[Penetration Testing]]
- [[Incident Response Process]]
- [[Digital Forensics Basics]]
- [[Investigation Techniques]]
- [[Common Hacking Tools]]
- [[Zero Trust Architecture]]
- [[Defense in Depth]]
- [[SIEM]] (if available)
- [[EDR]] (if available)

## Certifications and Training

- GIAC Cyber Threat Intelligence (GCTI)
- GIAC Threat Hunting (GTHC)
- Certified Threat Intelligence Analyst (CTIA)
- Cyberbit Threat Hunting Training
- ThreatHunting.io courses

## Further Learning

### Books
- "The Practice of Network Security Monitoring" by Richard Bejtlich
- "Practical Threat Intelligence and Data-Driven Threat Hunting" by Valentina Costa-Gazcón
- "Applied Network Security Monitoring" by Chris Sanders

### Frameworks
- MITRE ATT&CK Framework
- Cyber Kill Chain
- Diamond Model of Intrusion Analysis
- TaHiTI (Targeted Hunting integrating Threat Intelligence)

### Communities
- ThreatHunting.net
- SANS Threat Hunting Summit
- Threat Hunting Project on GitHub
- r/threathunting subreddit

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
