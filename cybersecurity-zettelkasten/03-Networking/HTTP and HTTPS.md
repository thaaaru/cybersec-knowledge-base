# HTTP and HTTPS

**Created:** 2025-11-25
**Tags:** #networking #http #https #web #protocols #security

## Description

HTTP (Hypertext Transfer Protocol) is the foundation of web communication. HTTPS is the secure version using SSL/TLS encryption.

## HTTP (Insecure)

### Characteristics
- Port: 80
- Unencrypted communication
- Stateless protocol
- Request-response model

### HTTP Methods
- **GET**: Retrieve data
- **POST**: Submit data
- **PUT**: Update resource
- **DELETE**: Remove resource
- **HEAD**: Get headers only
- **OPTIONS**: Get supported methods
- **PATCH**: Partial update

### Security Issues
- No encryption
- No authentication
- No integrity verification
- Vulnerable to:
  - Eavesdropping
  - Man-in-the-middle
  - Session hijacking
  - Data tampering

## HTTPS (Secure)

### Characteristics
- Port: 443
- Encrypted with SSL/TLS
- Server authentication via certificates
- Data integrity protection

### Benefits
- **Confidentiality**: Encrypted data
- **Authentication**: Verify server identity
- **Integrity**: Detect tampering
- **SEO benefit**: Search engines prefer HTTPS
- **Browser indicators**: Padlock icon, "Secure" label

### TLS Handshake
1. Client hello
2. Server hello + certificate
3. Key exchange
4. Encrypted communication begins

## HTTP Status Codes

### 2xx Success
- 200 OK
- 201 Created
- 204 No Content

### 3xx Redirection
- 301 Moved Permanently
- 302 Found (temporary)
- 304 Not Modified

### 4xx Client Errors
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found

### 5xx Server Errors
- 500 Internal Server Error
- 502 Bad Gateway
- 503 Service Unavailable

## Security Headers

```
Strict-Transport-Security: max-age=31536000
Content-Security-Policy: default-src 'self'
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
X-XSS-Protection: 1; mode=block
```

## Best Practices

1. **Always use HTTPS**: Especially for sensitive data
2. **HSTS**: Force HTTPS
3. **Valid certificates**: From trusted CA
4. **Strong TLS versions**: TLS 1.2+ only
5. **Secure cookies**: HttpOnly, Secure flags
6. **Security headers**: Implement protection headers
7. **Certificate pinning**: For mobile apps

## Common Attacks

- Man-in-the-middle
- SSL stripping
- Session hijacking
- Cookie theft
- Cross-site scripting (XSS)
- Cross-site request forgery (CSRF)

## Related Topics

- [[SSL-TLS]]
- [[OSI Model]]
- [[TCP-IP Protocol Suite]]
- [[DMZ]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
