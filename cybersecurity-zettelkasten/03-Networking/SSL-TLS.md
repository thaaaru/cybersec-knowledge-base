# SSL-TLS

**Created:** 2025-11-25
**Tags:** #networking #ssl #tls #encryption #certificates #security

## Description

SSL (Secure Sockets Layer) and TLS (Transport Layer Security) are cryptographic protocols providing secure communication over networks. TLS is the modern successor to SSL.

## Protocol Versions

### SSL (Deprecated)
- **SSL 2.0**: Deprecated, insecure
- **SSL 3.0**: Deprecated (POODLE vulnerability)
- **Status**: Should not be used

### TLS (Current)
- **TLS 1.0**: Deprecated (2020)
- **TLS 1.1**: Deprecated (2020)
- **TLS 1.2**: Widely supported, secure
- **TLS 1.3**: Latest, fastest, most secure (2018)

## TLS Handshake

1. **Client Hello**: Supported cipher suites, TLS version
2. **Server Hello**: Selected cipher suite, certificate
3. **Certificate Verification**: Client validates server certificate
4. **Key Exchange**: Establish session keys
5. **Finished**: Handshake complete, encrypted communication begins

## Certificates

### Components
- **Subject**: Who certificate is issued to
- **Issuer**: Certificate Authority (CA)
- **Valid period**: Not before/after dates
- **Public key**: Server's public key
- **Signature**: CA's digital signature
- **Subject Alternative Names (SAN)**: Additional domains

### Types
- **DV (Domain Validated)**: Basic validation
- **OV (Organization Validated)**: Company verification
- **EV (Extended Validation)**: Highest validation (green bar)
- **Wildcard**: *.example.com
- **Multi-domain**: Multiple specific domains

### Certificate Authorities (CAs)
- DigiCert
- Let's Encrypt (free)
- Sectigo
- GlobalSign
- GoDaddy

## Cipher Suites

Format: `TLS_KeyExchange_Authentication_Encryption_MAC`

Example: `TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384`
- **Key Exchange**: ECDHE (Ephemeral Elliptic Curve Diffie-Hellman)
- **Authentication**: RSA
- **Encryption**: AES-256-GCM
- **MAC**: SHA384

### Strong Cipher Suites
- ECDHE for perfect forward secrecy
- AES-256 or AES-128 for encryption
- GCM or ChaCha20-Poly1305 for AEAD
- SHA256 or SHA384 for hashing

## Security Features

### Perfect Forward Secrecy (PFS)
- Ephemeral key exchange (ECDHE, DHE)
- Compromise of private key doesn't expose past sessions
- Prevents retroactive decryption

### Certificate Pinning
- Mobile apps validate specific certificate
- Prevents man-in-the-middle with rogue certificates
- Adds extra security layer

### OCSP Stapling
- Server provides certificate revocation status
- Improves performance and privacy
- Alternative to CRL (Certificate Revocation List)

## Common Attacks

### SSL Stripping
- Downgrade HTTPS to HTTP
- **Defense**: HSTS

### POODLE
- Padding Oracle On Downgraded Legacy Encryption
- **Defense**: Disable SSL 3.0

### Heartbleed
- OpenSSL vulnerability (CVE-2014-0160)
- Memory disclosure
- **Defense**: Update OpenSSL

### BEAST, CRIME, BREACH
- Various TLS vulnerabilities
- **Defense**: Update to TLS 1.2+, disable compression

### Man-in-the-Middle
- Intercept and decrypt traffic
- **Defense**: Certificate validation, pinning

## Testing Tools

```bash
# OpenSSL
openssl s_client -connect example.com:443

# Test TLS versions
nmap --script ssl-enum-ciphers -p 443 example.com

# Online tools
# SSL Labs (ssllabs.com/ssltest/)
# testssl.sh
```

## Certificate Management

### Generate CSR
```bash
openssl req -new -newkey rsa:2048 -nodes \
  -keyout server.key -out server.csr
```

### View Certificate
```bash
openssl x509 -in cert.pem -text -noout
```

### Check Certificate
```bash
openssl s_client -connect example.com:443 -servername example.com
```

### Certificate Expiration
- Monitor expiration dates
- Automate renewal (Let's Encrypt)
- Typical validity: 90 days (Let's Encrypt) to 1 year

## Best Practices

1. **TLS 1.2+only**: Disable older versions
2. **Strong cipher suites**: No weak ciphers
3. **Valid certificates**: From trusted CA
4. **Certificate monitoring**: Track expiration
5. **HSTS**: Force HTTPS
6. **Perfect forward secrecy**: Use ECDHE
7. **Regular updates**: Patch SSL/TLS libraries
8. **Disable compression**: Prevent CRIME/BREACH
9. **Certificate transparency**: Monitor CT logs

## Common Implementations

- **Apache**: mod_ssl
- **Nginx**: Built-in SSL module
- **IIS**: Windows certificates
- **HAProxy**: SSL termination
- **CloudFlare**: SSL proxy

## Related Topics

- [[HTTP and HTTPS]]
- [[SSH]]
- [[VPN]]
- [[Certificate-Based Authentication]]
- [[OSI Model]]

---

**Back to:** [[00-MOC-Cybersecurity-Roadmap]]
