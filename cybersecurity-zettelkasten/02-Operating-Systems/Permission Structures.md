# Permission Structures

**Created:** 2025-11-25
**Tags:** #operating-systems #permissions #access-control #security

## Description

Permission structures control access to files, directories, and resources in operating systems. Understanding and properly configuring permissions is crucial for system security and the principle of least privilege.

## Key Concepts

### Linux/Unix Permissions

#### Standard Permissions
- **Read (r/4)**: View file contents or list directory
- **Write (w/2)**: Modify file or directory contents
- **Execute (x/1)**: Run file as program or enter directory

#### Permission Categories
- **User (u)**: File owner
- **Group (g)**: Group members
- **Other (o)**: Everyone else

#### Notation
```bash
-rwxr-xr--  (symbolic)
 755        (octal)

-: regular file
d: directory
l: symbolic link
```

#### Special Permissions
- **SUID (4)**: Run as file owner
- **SGID (2)**: Run as group owner, inherit group in directory
- **Sticky Bit (1)**: Only owner can delete files in directory

### Windows Permissions

#### NTFS Permissions
- **Full Control**: Complete access
- **Modify**: Read, write, delete
- **Read & Execute**: View and run files
- **Read**: View only
- **Write**: Create files and modify attributes

#### Advanced Concepts
- **Inheritance**: Child objects inherit parent permissions
- **Explicit vs. Inherited**: Direct vs. inherited permissions
- **Deny permissions**: Override allow permissions
- **ACLs**: Access Control Lists for granular control

### MacOS Permissions
- Similar to Linux (BSD-based)
- Additional extended attributes
- ACLs available but less commonly used

## Security Considerations

### Principle of Least Privilege
- Grant minimum necessary permissions
- Avoid giving world-writable permissions
- Regular permission audits
- Careful with SUID/SGID files

### Common Vulnerabilities
- **World-writable files**: Anyone can modify
- **Excessive SUID binaries**: Privilege escalation risk
- **Improper ownership**: Files owned by wrong user
- **Weak directory permissions**: Unauthorized access

### Security Best Practices
- Never use 777 permissions (rwxrwxrwx)
- Limit SUID/SGID programs
- Use groups for shared access
- Regular permission reviews
- Document permission requirements

## Related Topics

- [[Linux Operating System]]
- [[Windows Operating System]]
- [[MacOS Operating System]]
- [[File CRUD Operations]]
- [[Penetration Testing]] - Permission exploitation
- [[Defense in Depth]]
- [[Zero Trust Architecture]]

## Common Commands

### Linux
```bash
# View permissions
ls -l
stat file.txt

# Change permissions
chmod 755 file.txt
chmod u+x,g-w file.txt

# Change ownership
chown user:group file.txt
chgrp group file.txt

# Find SUID files
find / -perm -4000 2>/dev/null

# View ACLs
getfacl file.txt
```

### Windows
```powershell
# View permissions
Get-Acl file.txt | Format-List

# Set permissions
icacls file.txt /grant user:RW

# Take ownership
takeown /f file.txt
```

## Practical Applications

- **Privilege escalation**: Finding misconfigured permissions
- **Hardening**: Securing file system permissions
- **Troubleshooting**: Resolving access issues
- **Compliance**: Meeting security standards

## Common Scenarios

### Shared Directory (Linux)
```bash
mkdir /shared
chgrp developers /shared
chmod 2775 /shared  # SGID + rwxrwxr-x
```

### Web Server Files
```bash
# Files: 644 (rw-r--r--)
# Directories: 755 (rwxr-xr-x)
find /var/www -type f -exec chmod 644 {} \;
find /var/www -type d -exec chmod 755 {} \;
```

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
