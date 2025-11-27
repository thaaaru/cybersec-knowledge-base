# Zero Trust Architecture

**Created:** 2025-11-25
**Tags:** #security #zero-trust #architecture #modern-security

## Description

Zero Trust is a security framework based on the principle "never trust, always verify." It assumes no implicit trust based on network location and requires verification for every access request.

## Core Principles

### 1. Verify Explicitly
- Authenticate and authorize every access request
- Use all available data points
- Continuous verification, not one-time
- Context-aware access decisions

### 2. Least Privilege Access
- Just-in-time and just-enough access
- Risk-based adaptive policies
- Minimize blast radius
- Time-limited access

### 3. Assume Breach
- Minimize impact of potential breach
- Segment access
- Encrypt end-to-end
- Analytics for threat detection
- Continuous monitoring

## Traditional vs. Zero Trust

### Traditional (Castle-and-Moat)
```
External (Untrusted) → Firewall → Internal (Trusted)
- Trust based on location
- Perimeter-focused security
- Lateral movement easy once inside
```

### Zero Trust
```
Every access request → Verification → Conditional Access
- No implicit trust
- Identity-centric security
- Microsegmentation prevents lateral movement
```

## Key Components

### Identity Verification
- Strong authentication
- Multi-factor authentication
- Continuous authentication
- Identity and Access Management (IAM)

### Device Security
- Device health verification
- Endpoint detection and response (EDR)
- Mobile device management (MDM)
- Compliance checking

### Microsegmentation
- Granular network segmentation
- Application-level access control
- Software-defined perimeters
- Workload isolation

### Least Privilege
- Role-based access control (RBAC)
- Just-in-time access
- Privileged access management (PAM)
- Attribute-based access control (ABAC)

### Continuous Monitoring
- Real-time analytics
- Behavioral analysis
- Threat intelligence
- Automated response

## Implementation Model

### 1. Identify Protect Surface
- Critical data
- Applications
- Assets
- Services (DAAS)

### 2. Map Transaction Flows
- How data moves
- Who accesses what
- Dependencies

### 3. Design Zero Trust Network
- Microsegments around protect surface
- Implement policy enforcement points
- Configure access policies

### 4. Create Zero Trust Policy
- Kipling Method (Who, What, When, Where, Why, How)
- Define allowed communications
- Block everything else (default deny)

### 5. Monitor and Maintain
- Continuous logging
- Analytics and visibility
- Iterate and improve

## Technologies Enabling Zero Trust

- **Identity**: Azure AD, Okta, Ping Identity
- **Network**: Software-Defined Perimeter (SDP), ZTNA
- **Endpoints**: EDR, MDM, UEM
- **Workloads**: Container security, serverless security
- **Data**: DLP, CASB, encryption
- **Analytics**: SIEM, UEBA, SOAR

## Benefits

1. **Reduced Attack Surface**: Microsegmentation limits exposure
2. **Breach Containment**: Prevent lateral movement
3. **Improved Visibility**: Monitor all access
4. **Better Compliance**: Granular access controls
5. **Cloud-Ready**: Works with modern infrastructure
6. **Remote Work Enabler**: Secure access from anywhere

## Challenges

- Cultural shift required
- Initial complexity
- Implementation cost
- Legacy system integration
- User experience considerations
- Requires skilled personnel

## Zero Trust Network Access (ZTNA)

Replaces traditional VPN with:
- Application-level access (not network-level)
- Identity-based access
- No network exposure
- Better user experience
- Cloud-native architecture

## Best Practices

1. **Start Small**: Pilot with high-value assets
2. **Identity First**: Strong authentication foundation
3. **Visibility**: Know your environment
4. **Automate**: Use AI/ML for analytics
5. **User Experience**: Balance security and usability
6. **Continuous Improvement**: Iterate policies
7. **Cross-Functional**: Involve all stakeholders

## Common Misconceptions

- ❌ "Zero Trust is a product" - It's a strategy/framework
- ❌ "It replaces firewall" - It complements existing security
- ❌ "It's only for large enterprises" - Applicable to all sizes
- ❌ "It's all-or-nothing" - Can be implemented incrementally
- ❌ "It eliminates all other security" - It's part of defense in depth

## Use Cases

- Remote workforce security
- Cloud migration
- Third-party access
- Merger and acquisition integration
- Insider threat mitigation
- Compliance requirements

## Related Topics

- [[Defense in Depth]]
- [[Multi-Factor Authentication]]
- [[Network Segmentation]]
- [[DMZ]]
- [[VLAN]]
- [[Identity and Access Management]] (if created)
- [[Microsegmentation]] (if created)
- [[VPN]]

## Standards and Frameworks

- **NIST SP 800-207**: Zero Trust Architecture
- **Forrester Zero Trust eXtended (ZTX)**
- **Gartner SASE** (Secure Access Service Edge)

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
