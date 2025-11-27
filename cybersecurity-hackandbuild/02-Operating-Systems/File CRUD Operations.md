# File CRUD Operations

**Created:** 2025-11-25
**Tags:** #operating-systems #files #filesystem #operations

## Description

CRUD (Create, Read, Update, Delete) operations are fundamental file management tasks in any operating system. Mastery of these operations across different platforms is essential for system administration and security work.

## Key Concepts

### CRUD Operations

#### Create
- Creating new files and directories
- Copying files (creates new file)
- Moving files (can create in new location)
- Touch command (Linux) - create empty files

#### Read
- Viewing file contents
- Listing directory contents
- Searching within files
- File metadata inspection

#### Update
- Editing file contents
- Modifying file attributes
- Changing permissions and ownership
- Appending to files

#### Delete
- Removing files
- Removing directories
- Secure deletion
- Recovering deleted files

## Platform-Specific Commands

### Linux/MacOS
```bash
# Create
touch file.txt
mkdir directory
echo "text" > file.txt
cp source dest

# Read
cat file.txt
less file.txt
head -n 10 file.txt
tail -f log.txt
ls -la
find /path -name "*.txt"

# Update
nano file.txt
vim file.txt
echo "append" >> file.txt
chmod 644 file.txt

# Delete
rm file.txt
rm -rf directory
shred -vfz file.txt  # Secure deletion
```

### Windows (CMD)
```cmd
# Create
type nul > file.txt
mkdir directory
copy source dest

# Read
type file.txt
more file.txt
dir
dir /s /b *.txt

# Update
notepad file.txt
attrib +h file.txt

# Delete
del file.txt
rmdir /s directory
```

### Windows (PowerShell)
```powershell
# Create
New-Item -ItemType File file.txt
New-Item -ItemType Directory folder
Copy-Item source dest

# Read
Get-Content file.txt
Get-Content file.txt -Tail 10
Get-ChildItem -Recurse *.txt

# Update
Set-Content file.txt "new content"
Add-Content file.txt "append"

# Delete
Remove-Item file.txt
Remove-Item -Recurse folder
```

## Security Considerations

### Secure File Operations
- **Secure deletion**: Overwrite data before deletion
- **File permissions**: Check before creating/modifying
- **Audit logging**: Track file operations
- **Data validation**: Verify file integrity
- **Backup before modification**: Prevent data loss

### Security Risks
- **Unintended deletion**: Accidental data loss
- **Permission issues**: Creating files with wrong permissions
- **Information disclosure**: Leaving sensitive data in temp files
- **File injection**: Malicious file creation
- **Path traversal**: Directory traversal attacks

### Forensics Considerations
- File operations leave traces
- Timestamps important for investigations
- Deleted files may be recoverable
- File metadata contains valuable information

## Related Topics

- [[Permission Structures]]
- [[Linux Operating System]]
- [[Windows Operating System]]
- [[MacOS Operating System]]
- [[Command Line Interface]]
- [[Digital Forensics Basics]]
- [[Incident Response Process]]

## Advanced Operations

### File Searching
```bash
# Linux
find /path -name "pattern"
grep -r "text" /path
locate filename

# Windows PowerShell
Get-ChildItem -Recurse -Filter "pattern"
Select-String -Path "*.txt" -Pattern "text"
```

### Bulk Operations
```bash
# Linux: Rename multiple files
for file in *.txt; do mv "$file" "${file%.txt}.bak"; done

# Windows: Batch rename
Get-ChildItem *.txt | Rename-Item -NewName {$_.Name -replace '.txt','.bak'}
```

### File Comparison
```bash
# Linux
diff file1.txt file2.txt
md5sum file.txt

# Windows
fc file1.txt file2.txt
Get-FileHash file.txt
```

## Best Practices

1. **Always backup**: Before modifying important files
2. **Verify paths**: Ensure correct location
3. **Check permissions**: Appropriate access controls
4. **Use absolute paths**: In scripts and automation
5. **Validate input**: Prevent injection attacks
6. **Log operations**: For audit trails
7. **Test in non-production**: Verify commands first

## Practical Applications

- System administration tasks
- Log file analysis
- Incident response file collection
- Malware analysis sample handling
- Automation and scripting
- Data recovery and forensics

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
