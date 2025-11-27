# Command Line Interface

**Created:** 2025-11-25
**Tags:** #operating-systems #cli #terminal #shell

## Description

The Command Line Interface (CLI) is a text-based interface for interacting with operating systems. CLI proficiency is essential for cybersecurity professionals, enabling automation, remote administration, and advanced system control.

## Key Concepts

### Common Shells

#### Linux/Unix
- **Bash**: Bourne Again Shell (most common)
- **Zsh**: Z Shell (modern, feature-rich)
- **Fish**: Friendly Interactive Shell
- **Sh**: Original Bourne shell

#### Windows
- **CMD**: Command Prompt (legacy)
- **PowerShell**: Modern, object-oriented shell
- **WSL**: Windows Subsystem for Linux (Bash on Windows)

#### MacOS
- **Bash**: Default on older versions
- **Zsh**: Default on modern macOS

### CLI Advantages

#### Power and Efficiency
- Faster than GUI for many tasks
- Scriptable and automatable
- Precise control over system
- Lower resource usage
- Remote administration capability

#### Cybersecurity Applications
- Penetration testing tools
- Log analysis and parsing
- Network reconnaissance
- System administration
- Incident response
- Forensics investigation

## Essential Concepts

### Navigation
```bash
# Current directory
pwd

# List files
ls, ls -la, dir

# Change directory
cd /path, cd .., cd ~

# Paths
. (current), .. (parent), ~ (home), / (root)
```

### Input/Output
```bash
# Redirection
command > file    # Overwrite
command >> file   # Append
command < file    # Input

# Pipes
command1 | command2

# Standard streams
stdin (0), stdout (1), stderr (2)
```

### Environment Variables
```bash
# Linux/Mac
export VAR=value
echo $VAR
env

# Windows CMD
set VAR=value
echo %VAR%

# PowerShell
$env:VAR = "value"
$env:VAR
```

### Command Structure
```bash
command [options] [arguments]
command --help
man command  # Linux/Mac
Get-Help command  # PowerShell
```

## Security Considerations

### Command History
- Commands stored in history files
- May contain sensitive data (passwords)
- Clear history: `history -c`, `Clear-History`
- Prefix with space to avoid history (some shells)

### Privilege Management
```bash
# Linux
sudo command
su - user

# Windows
runas /user:admin command
# PowerShell as admin
Start-Process powershell -Verb RunAs
```

### Secure Practices
- Never store passwords in scripts
- Use environment variables or secrets managers
- Validate all user input
- Quote variables to prevent injection
- Use absolute paths in scripts
- Check command success ($?, $LASTEXITCODE)

## Related Topics

- [[Linux Operating System]]
- [[Windows Operating System]]
- [[MacOS Operating System]]
- [[File CRUD Operations]]
- [[SSH]] - Remote CLI access
- [[Permission Structures]]
- [[Penetration Testing]] - CLI-based tools

## Essential Command Categories

### File Management
- Create, read, update, delete files
- Search and find files
- Change permissions and ownership

### System Information
```bash
# Linux
uname -a, hostname, uptime
df -h, free -h, top

# Windows
systeminfo, hostname
wmic os get caption
Get-ComputerInfo
```

### Network Operations
```bash
# Cross-platform concepts
ping, traceroute/tracert
netstat, nslookup
curl, wget (Linux)
```

### Text Processing
```bash
# Linux power tools
grep, sed, awk
cut, sort, uniq
head, tail, wc
```

## Scripting Basics

### Bash Script
```bash
#!/bin/bash
# Comments
variable="value"
echo "$variable"

if [ condition ]; then
    commands
fi

for item in list; do
    commands
done
```

### PowerShell Script
```powershell
# Comments
$variable = "value"
Write-Host $variable

if (condition) {
    commands
}

foreach ($item in $collection) {
    commands
}
```

## Best Practices

1. **Learn the basics thoroughly**: Master fundamental commands
2. **Practice regularly**: Use CLI for daily tasks
3. **Read documentation**: man pages, help files
4. **Use tab completion**: Faster and prevents typos
5. **Create aliases**: For frequently used commands
6. **Script repetitive tasks**: Automation saves time
7. **Version control scripts**: Use git for scripts

## Practical Applications

- Penetration testing with Kali Linux
- Log analysis and incident response
- System administration and automation
- Network reconnaissance and scanning
- Remote server management
- DevOps and infrastructure as code

## Learning Resources

- [[TryHackMe]] - Linux fundamentals rooms
- [[HackTheBox]] - Practice on vulnerable machines
- ExplainShell.com - Command explanation
- Man pages and help documentation

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
