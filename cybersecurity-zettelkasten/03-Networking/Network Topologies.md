# Network Topologies

**Created:** 2025-11-25
**Tags:** #networking #topology #design #infrastructure

## Description

Network topology refers to the physical or logical layout of network devices and connections. Understanding topologies is important for network design, troubleshooting, and security planning.

## Physical Topologies

### Star Topology
```
        [Switch/Hub]
       /  |  |  \
      /   |  |   \
   [PC] [PC][PC] [PC]
```
- **Pros**: Easy to manage, failure isolation, scalable
- **Cons**: Central device is single point of failure
- **Use**: Most common in modern networks

### Ring Topology
```
[PC]---[PC]
 |       |
[PC]---[PC]
```
- **Pros**: Predictable performance, no collisions
- **Cons**: Single break affects whole network
- **Use**: FDDI, Token Ring (legacy)

### Bus Topology
```
[PC]--[PC]--[PC]--[PC]--[Terminator]
```
- **Pros**: Simple, minimal cable
- **Cons**: Difficult troubleshooting, single point of failure
- **Use**: Legacy (10Base2, 10Base5)

### Mesh Topology
```
[PC]--[PC]
 | \\ / |
 | / \\ |
[PC]--[PC]
```
- **Pros**: High redundancy, fault tolerant
- **Cons**: Expensive, complex
- **Types**: Full mesh (all-to-all), Partial mesh
- **Use**: Critical infrastructure, internet backbone

### Hybrid Topology
- Combination of multiple topologies
- Most real-world networks
- Star-bus, star-ring combinations

## Logical vs. Physical

- **Physical**: How devices are actually connected
- **Logical**: How data flows through network
- **Example**: Star physical with ring logical (Token Ring)

## Security Considerations

### Star
- Monitor central switch
- Implement port security
- VLAN segmentation

### Mesh
- Multiple paths for redundancy
- Prevent routing loops
- Secure all links

### Bus/Ring
- Single point of failure is security risk
- Difficult to implement security zones
- Legacy topologies, replace if possible

## Related Topics

- [[Switch]]
- [[Router]]
- [[VLAN]]
- [[Network Segmentation]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
