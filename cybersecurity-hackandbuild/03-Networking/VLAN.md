# VLAN

**Created:** 2025-11-25
**Tags:** #networking #vlan #segmentation #security #switching

## Description

VLAN (Virtual Local Area Network) is a logical network segment created within a physical network. VLANs enable network segmentation without requiring separate physical switches, improving security and network management.

## Key Concepts

### Types of VLANs
- **Port-based VLAN**: Ports assigned to VLANs
- **Tagged VLAN (802.1Q)**: Frame tagging for trunk links
- **MAC-based VLAN**: Based on device MAC address
- **Protocol-based VLAN**: Based on protocol type

### VLAN Components
- **VLAN ID**: 1-4094 (1 and 1002-1005 reserved)
- **Native VLAN**: Untagged traffic on trunk (default VLAN 1)
- **Access Port**: Belongs to single VLAN
- **Trunk Port**: Carries multiple VLANs

## Security Benefits

### Segmentation
- Isolate departments or functions
- Separate guest from corporate traffic
- Isolate IoT/SCADA devices
- Contain broadcast domains

### Example Architecture
```
VLAN 10: Management (192.168.10.0/24)
VLAN 20: Users (192.168.20.0/24)
VLAN 30: Servers (192.168.30.0/24)
VLAN 40: Guest (192.168.40.0/24)
VLAN 99: Native/Unused
```

## Security Considerations

### VLAN Attacks
- **VLAN Hopping**: Jumping between VLANs
  - Switch spoofing attack
  - Double tagging attack
- **VLAN Traversal**: Unauthorized inter-VLAN routing

### Security Best Practices
1. Change native VLAN from default (1)
2. Disable unused ports and assign to unused VLAN
3. Use dedicated management VLAN
4. Implement 802.1X for port authentication
5. Configure trunk ports explicitly
6. Use private VLANs where appropriate
7. Apply ACLs between VLANs

## Inter-VLAN Routing

Devices in different VLANs need router/Layer 3 switch to communicate:

```
VLAN 10 ←→ Layer 3 Device ←→ VLAN 20
```

Methods:
- Router with multiple interfaces
- Router-on-a-stick (single trunk)
- Layer 3 switch (SVI)

## Configuration Example

```
# Cisco Switch
! Create VLAN
vlan 10
 name Management
vlan 20
 name Users

! Assign access port
interface Fa0/1
 switchport mode access
 switchport access vlan 20

! Configure trunk
interface Gi0/1
 switchport mode trunk
 switchport trunk native vlan 99
 switchport trunk allowed vlan 10,20,30
```

## Related Topics

- [[Network Segmentation]]
- [[Switch]]
- [[Router]]
- [[DMZ]]
- [[Subnetting]]
- [[Zero Trust Architecture]]
- [[Defense in Depth]]

## Practical Applications

- Corporate network segmentation
- Guest WiFi isolation
- PCI DSS compliance (cardholder data isolation)
- Voice/Data separation
- Security zone implementation

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
