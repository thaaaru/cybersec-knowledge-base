# RDP

**Created:** 2025-11-25
**Tags:** #networking #rdp #remote-access #windows #protocols

## Description

RDP (Remote Desktop Protocol) is Microsoft's proprietary protocol for graphical remote access to Windows systems.

## Key Features

- Port: TCP 3389 (default)
- Graphical desktop access
- Clipboard sharing
- Printer/drive redirection
- Multi-monitor support

## Security Concerns

### Common Attacks
- Brute force attacks
- BlueKeep vulnerability (CVE-2019-0708)
- Pass-the-hash attacks
- Man-in-the-middle

### Best Practices
1. Use VPN for RDP access
2. Enable Network Level Authentication (NLA)
3. Use RDP Gateway
4. Strong passwords or certificate auth
5. Change default port (security through obscurity)
6. Use MFA
7. Limit user access
8. Monitor logs
9. Keep systems patched
10. Never expose RDP directly to internet

## Related Topics

- [[SSH]]
- [[VPN]]
- [[Windows Operating System]]
- [[Multi-Factor Authentication]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
