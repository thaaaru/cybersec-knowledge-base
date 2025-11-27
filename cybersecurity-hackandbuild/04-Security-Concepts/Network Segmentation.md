# Network Segmentation

**Created:** 2025-11-25
**Tags:** #network-segmentation #network-security #defense-in-depth #zero-trust #network-architecture

## Description

Network segmentation is a security practice that divides a computer network into smaller, isolated subnetworks or segments, each functioning as a separate network with its own security controls and policies. By creating logical or physical boundaries between different parts of the network, organizations can limit the lateral movement of attackers, contain security breaches, improve network performance, and enforce granular access controls based on business requirements and security policies.

The fundamental principle behind network segmentation is to implement a "divide and conquer" approach to network security. Rather than treating the entire network as a single, flat entity where any device can communicate with any other device, segmentation creates controlled zones with specific purposes, security requirements, and trust levels. This architectural approach significantly reduces the attack surface and blast radius of potential security incidents.

Network segmentation is a critical component of [[Defense in Depth]] strategies and modern [[Zero Trust Architecture]]. It addresses the reality that perimeter security alone is insufficient, especially in today's hybrid environments where traditional network boundaries have dissolved. By assuming that breaches will occur and limiting what attackers can access once inside, segmentation provides essential protection for critical assets and sensitive data.

Effective segmentation requires careful planning, understanding of business workflows, identification of critical assets, and ongoing maintenance. While it adds complexity to network design and management, the security benefits far outweigh the operational overhead. Organizations that implement proper segmentation can significantly reduce their risk of widespread compromise, limit the impact of insider threats, and improve their ability to meet regulatory compliance requirements.

## Types of Network Segmentation

### Physical Segmentation
Physical segmentation uses dedicated hardware to create separate networks with no direct connection between segments. This approach provides the strongest isolation but is also the most expensive and least flexible.

**Implementation Methods:**
- Separate physical switches and routers for each segment
- Air-gapped networks for highly sensitive systems
- Dedicated cabling infrastructure
- Independent network equipment

**Use Cases:**
- Critical infrastructure (SCADA/ICS systems)
- Payment card processing environments (PCI-DSS requirements)
- Classified government networks
- Research and development labs

### Logical Segmentation
Logical segmentation creates network boundaries using software-defined policies and configurations on shared infrastructure. This approach is more flexible and cost-effective than physical segmentation while still providing significant security benefits.

**Implementation Methods:**
- Virtual LANs (VLANs)
- Virtual routing and forwarding (VRF)
- Software-defined networking (SDN)
- Network access control (NAC)
- Firewalls and access control lists (ACLs)

**Advantages:**
- Lower hardware costs
- Greater flexibility
- Easier to modify and scale
- Centralized management
- Better resource utilization

## Segmentation Strategies

### Perimeter-Based Segmentation
Traditional approach that separates internal networks from external networks using [[Perimeter Security]] devices like firewalls and DMZs (Demilitarized Zones).

**Components:**
- External-facing DMZ for public services
- Internal network for employee workstations
- Firewall rules controlling traffic flow
- VPN access for remote users

**Limitations:**
- Assumes internal network is trusted
- Vulnerable to lateral movement after initial breach
- Insufficient for modern threats

### Function-Based Segmentation
Divides the network based on business functions, departments, or services. Each segment contains resources related to specific organizational activities.

**Examples:**
- Finance department network
- Human resources systems
- Engineering and development environment
- Sales and marketing segment
- Guest wireless network

**Benefits:**
- Aligns with business structure
- Easier to manage access controls
- Limits impact of departmental breaches
- Supports compliance requirements

### Role-Based Segmentation
Segments network based on user roles, device types, or security classifications rather than physical location or department.

**Segments by Role:**
- Administrative users with elevated privileges
- Standard employees with basic access
- Contractors and temporary workers
- Service accounts and automated systems
- IoT devices and operational technology

**Implementation:**
- Identity and access management integration
- Dynamic VLAN assignment
- Network access control (NAC)
- Software-defined perimeter (SDP)

### Data Classification-Based Segmentation
Segments network based on the sensitivity and classification level of data being processed or stored.

**Classification Levels:**
- Public information (minimal protection)
- Internal use only (moderate protection)
- Confidential data (strong protection)
- Highly restricted (maximum protection)

**Requirements:**
- Data classification policy
- Asset inventory and mapping
- Strict access controls
- Enhanced monitoring and logging
- Encryption requirements

### Micro-Segmentation
Advanced segmentation approach that creates extremely granular security zones, often down to the individual workload or application level. Common in cloud and virtualized environments.

**Characteristics:**
- Software-defined security policies
- Dynamic policy enforcement
- Application-aware controls
- Container and VM-level isolation
- East-west traffic filtering

**Technologies:**
- Next-generation firewalls
- Software-defined networking
- Cloud security groups
- Service mesh (Kubernetes)
- Host-based firewalls

## Implementation Technologies

### VLANs (Virtual Local Area Networks)
VLANs create logical network segments on shared physical infrastructure using 802.1Q tagging.

**Advantages:**
- Cost-effective segmentation
- Broadcast domain isolation
- Flexible network design
- Easy to implement

**Considerations:**
- Requires proper switch configuration
- VLAN hopping vulnerabilities if misconfigured
- Limited to Layer 2 segmentation
- Requires routing between VLANs

### Firewalls
Firewalls enforce security policies between network segments, controlling which traffic is permitted or blocked.

**Types:**
- Network firewalls between major segments
- Internal firewalls between subnets
- Host-based firewalls on endpoints
- Next-generation firewalls (NGFW) with application awareness
- Web application firewalls (WAF) for web traffic

**Capabilities:**
- Stateful packet inspection
- Application-layer filtering
- Intrusion prevention (IPS)
- SSL/TLS inspection
- Threat intelligence integration

### Access Control Lists (ACLs)
ACLs are rules configured on routers and switches to permit or deny traffic based on various criteria.

**Configuration Elements:**
- Source and destination IP addresses
- Port numbers and protocols
- Time-based access
- Traffic direction (inbound/outbound)

**Best Practices:**
- Explicit deny at the end of ACLs
- Document all rules thoroughly
- Regular review and cleanup
- Principle of least privilege
- Test before implementing

### Software-Defined Networking (SDN)
SDN separates the network control plane from the data plane, enabling centralized, programmable network management.

**Benefits:**
- Dynamic policy enforcement
- Automated segmentation
- Centralized visibility
- Rapid response to threats
- Integration with security tools

**Components:**
- SDN controllers
- OpenFlow or proprietary protocols
- Network virtualization overlays
- API-driven management

### Network Access Control (NAC)
NAC solutions enforce security policies before granting network access, dynamically assigning devices to appropriate segments.

**Functions:**
- Device identification and profiling
- Compliance verification
- Dynamic VLAN assignment
- Quarantine for non-compliant devices
- Guest network management

**Enforcement Methods:**
- 802.1X authentication
- MAC authentication bypass (MAB)
- Agent-based or agentless
- DHCP-based enforcement

## Design Considerations

### Trust Zones
Define trust levels for different network segments based on risk and security requirements:

**Zone Examples:**
- **Untrusted Zone**: Internet and external networks
- **DMZ**: Public-facing services
- **Guest Zone**: Visitor and contractor access
- **Corporate Zone**: Internal business applications
- **Restricted Zone**: Sensitive data and critical systems
- **Management Zone**: Network and security administration

### Traffic Flow Rules
Establish clear policies for traffic between segments:

**General Principles:**
- Deny all by default, allow by exception
- Higher trust zones can access lower trust zones
- Lower trust zones cannot initiate connections to higher zones
- Lateral movement within zones should be controlled
- Administrative access from dedicated management networks

### Performance Impact
Consider the performance implications of segmentation:

**Factors:**
- Firewall throughput and latency
- Routing overhead between segments
- Encryption/decryption processing
- Inspection capabilities (deep packet inspection)
- Scalability of security devices

**Optimization Strategies:**
- Right-size security infrastructure
- Use hardware acceleration
- Implement intelligent traffic steering
- Avoid unnecessary inspection of trusted traffic
- Consider distributed firewalls

### Scalability and Flexibility
Design for growth and changing business needs:

**Considerations:**
- Automation and orchestration capabilities
- Cloud integration requirements
- Support for hybrid environments
- Ability to quickly create new segments
- API-driven management

## Best Practices

1. **Start with Asset Inventory**: Document all devices, applications, and data flows before designing segmentation
2. **Align with Business Requirements**: Ensure segmentation supports rather than hinders business operations
3. **Implement Defense in Depth**: Use multiple layers of segmentation and security controls
4. **Follow Least Privilege**: Restrict access to only what's necessary for job functions
5. **Monitor Inter-Segment Traffic**: Log and analyze all traffic crossing segment boundaries
6. **Regular Policy Review**: Audit and update segmentation rules quarterly
7. **Document Thoroughly**: Maintain accurate network diagrams and security policies
8. **Test Changes**: Validate segmentation changes in non-production before deploying
9. **Plan for Incidents**: Ensure segmentation supports containment and investigation
10. **Automate Where Possible**: Use orchestration to maintain consistent policies

## Security Benefits

### Breach Containment
Limits the lateral movement of attackers who gain initial access, preventing them from reaching critical assets or moving throughout the network.

### Reduced Attack Surface
Decreases the number of potential targets visible to attackers by hiding systems and services that don't need to be accessible from certain network locations.

### Compliance Support
Helps meet regulatory requirements (PCI-DSS, HIPAA, GDPR) that mandate isolation of sensitive data and systems.

### Improved Visibility
Provides clear boundaries for monitoring and logging, making it easier to detect anomalous traffic patterns and potential security incidents.

### Access Control Enforcement
Enables granular control over who and what can access specific network resources based on business requirements.

## Common Challenges

### Complexity Management
Network segmentation adds complexity to network design, troubleshooting, and day-to-day operations.

**Mitigation Strategies:**
- Comprehensive documentation
- Network automation tools
- Centralized management platforms
- Regular training for network teams

### Application Dependencies
Modern applications often have complex communication requirements that can be difficult to map and accommodate in segmented networks.

**Solutions:**
- Application dependency mapping tools
- Collaboration between security and application teams
- Phased implementation approach
- Micro-segmentation for granular control

### Legacy Systems
Older systems may lack support for modern segmentation technologies or may require broad network access.

**Approaches:**
- Isolate legacy systems in dedicated segments
- Implement compensating controls
- Use jump servers or privileged access management
- Plan for modernization or replacement

### Cloud and Hybrid Environments
Traditional segmentation approaches may not translate directly to cloud environments.

**Adaptations:**
- Cloud-native security groups
- Software-defined perimeters
- Zero trust network access (ZTNA)
- Cloud security posture management (CSPM)

## Integration with Security Strategy

### Zero Trust Architecture
Network segmentation is foundational to [[Zero Trust Architecture]], which assumes no implicit trust based on network location.

**Zero Trust Principles:**
- Verify explicitly
- Use least privilege access
- Assume breach
- Segment access to minimize blast radius

### Incident Response
Segmentation significantly enhances [[Incident Response Process]] capabilities:
- Faster containment of compromised systems
- Easier isolation of affected segments
- Reduced incident scope and impact
- Better forensic analysis through traffic logs

### Threat Hunting
Enables more effective [[Threat Hunting]] by:
- Defining normal traffic patterns for each segment
- Highlighting anomalous cross-segment communications
- Identifying unauthorized lateral movement
- Focusing investigation on high-value targets

## Related Topics

- [[Perimeter Security]]
- [[Defense in Depth]]
- [[Zero Trust Architecture]]
- [[Incident Response Process]]
- [[Threat Hunting]]
- [[iptables]]
- [[Network+]]
- [[CCNA]]
- [[Security+]]

## Further Learning

### Standards and Frameworks
- NIST SP 800-125B: Secure Virtual Network Configuration for VM Protection Profiles
- PCI-DSS Requirements 1 and 2: Network security controls
- NIST Cybersecurity Framework: Protect function
- CIS Controls: Network Asset Management and Boundary Defense

### Certifications
- [[CCNA]]: Covers VLANs and routing
- [[Network+]]: Network segmentation fundamentals
- [[Security+]]: Security aspects of segmentation
- [[CISSP]]: Security architecture including segmentation

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
