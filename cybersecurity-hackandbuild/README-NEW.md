# 🔐 Cybersecurity Knowledge Base

> A beautiful, authenticated digital garden powered by Quartz and secured with Google OAuth

![Quartz](https://img.shields.io/badge/Powered%20by-Quartz-blue)
![Netlify](https://img.shields.io/badge/Deployed%20on-Netlify-00C7B7)
![Auth](https://img.shields.io/badge/Auth-Google%20OAuth-4285F4)

## ✨ Features

### 🎨 Beautiful Interface (Quartz)
- **Interactive Graph View** - Visualize connections between 94 cybersecurity topics
- **Backlinks** - See all notes that reference the current topic
- **Full-Text Search** - Find content instantly across all notes
- **Dark Theme** - Easy on the eyes, perfect for long study sessions
- **Mobile Responsive** - Works perfectly on all devices
- **Fast & Efficient** - Static site generation for optimal performance

### 🔐 Secure Access
- **Google Authentication** - Secure login via Netlify Identity
- **Protected Content** - Only authenticated users can access the knowledge base
- **User Management** - Invite team members or allow open registration
- **Session Persistence** - Stay logged in across visits

### 📚 Comprehensive Content
- **94 Notes** covering the complete cybersecurity roadmap
- **10 Categories** from fundamentals to advanced topics
- **Hundreds of Links** connecting related concepts
- **Learning Paths** for beginner, intermediate, and advanced learners
- **Certification Guides** for CompTIA, OSCP, CISSP, and more

## 🚀 Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Deploy to Netlify
```bash
npm install -g netlify-cli
netlify login
netlify init
netlify deploy --prod
```

### 3. Set Up Authentication
1. Enable Netlify Identity in your site dashboard
2. Create Google OAuth credentials in Google Cloud Console
3. Configure Google provider in Netlify

**📖 Full Instructions:** See [QUICKSTART-QUARTZ.md](./QUICKSTART-QUARTZ.md)

## 📁 Project Structure

```
cybersecurity-hackandbuild/
│
├── 📂 cybersec002/              # Your knowledge base content
│   ├── 00-MOC-Cybersecurity-Roadmap.md
│   ├── 01-Fundamentals/
│   ├── 02-Operating-Systems/
│   ├── 03-Networking/
│   ├── 04-Security-Concepts/
│   ├── 05-Authentication-Access-Control/
│   ├── 06-Security-Tools/
│   ├── 07-Incident-Response/
│   ├── 08-Governance-Risk-Compliance/
│   ├── 09-Practice-Platforms/
│   └── 10-Certifications/
│
├── 📂 quartz/                   # Quartz framework
├── 📂 auth-pages/               # Authentication templates
├── 📂 scripts/                  # Build automation
│
├── 📄 quartz.config.ts          # Quartz configuration
├── 📄 netlify.toml              # Netlify deployment config
├── 📄 package.json              # Dependencies & scripts
│
└── 📚 Documentation/
    ├── QUICKSTART-QUARTZ.md     # 10-minute setup guide
    ├── QUARTZ-SETUP.md          # Comprehensive documentation
    └── README.md                # This file
```

## 🎯 What's Included

### Learning Paths

#### 🟢 **Beginner Path**
- Computer Hardware & Fundamentals
- Operating Systems (Linux, Windows, macOS)
- Networking Basics (OSI Model, TCP/IP)
- Core Security Concepts
- Practice: TryHackMe, picoCTF
- Goal: CompTIA Security+

#### 🟡 **Intermediate Path**
- Advanced Networking (VLANs, VPN, Segmentation)
- Authentication & Access Control
- Security Tools (nmap, Wireshark)
- Zero Trust Architecture
- Practice: HackTheBox, VulnHub
- Goals: CEH, CCNA

#### 🔴 **Advanced Path**
- Penetration Testing
- Threat Hunting
- Incident Response & Forensics
- Governance, Risk & Compliance
- Practice: HackTheBox Pro Labs
- Goals: OSCP, CISSP

### Topics Covered

| Domain | Notes | Key Topics |
|--------|-------|------------|
| **Fundamentals** | 6 | Hardware, Cloud Services, Troubleshooting |
| **Operating Systems** | 8 | Linux, Windows, macOS, CLI, Permissions |
| **Networking** | 21 | OSI Model, TCP/IP, DNS, VPN, SSH |
| **Security Concepts** | 12 | Defense in Depth, Zero Trust, Pen Testing |
| **Authentication** | 8 | MFA, Kerberos, LDAP, SSO |
| **Security Tools** | 12 | nmap, Wireshark, tcpdump, Virtualization |
| **Incident Response** | 4 | IR Process, Forensics, Evidence |
| **GRC** | 5 | Risk Assessment, Compliance, Frameworks |
| **Practice Platforms** | 5 | HackTheBox, TryHackMe, VulnHub |
| **Certifications** | 12 | Security+, OSCP, CISSP, CEH |

## 🛠️ Commands

```bash
# Development
npm run dev              # Preview locally (no auth)
npm run serve            # Build and serve

# Building
npm run build            # Build Quartz site
npm run wrap-auth        # Inject authentication
npm run netlify-build    # Complete build (Quartz + auth)

# Deployment
netlify deploy --prod    # Deploy to production
netlify open:site        # Open live site
netlify open             # Open dashboard
```

## 🎨 Customization

### Change Site Title
Edit `quartz.config.ts`:
```typescript
configuration: {
  pageTitle: "Your Custom Title",
  baseUrl: "your-site.netlify.app",
}
```

### Modify Theme Colors
Edit `quartz.config.ts`:
```typescript
theme: {
  colors: {
    darkMode: {
      light: "#161618",
      secondary: "#7b97aa",
      // ... customize colors
    }
  }
}
```

### Add Your Content
1. Create `.md` files in `cybersec002/`
2. Link notes with `[[Note Name]]`
3. Add frontmatter for metadata
4. Rebuild and deploy

## 📚 Documentation

| Document | Purpose |
|----------|---------|
| [QUICKSTART-QUARTZ.md](./QUICKSTART-QUARTZ.md) | Get started in 10 minutes |
| [QUARTZ-SETUP.md](./QUARTZ-SETUP.md) | Complete setup guide |
| [Quartz Docs](https://quartz.jzhao.xyz/) | Official Quartz documentation |
| [Netlify Identity](https://docs.netlify.com/visitor-access/identity/) | Authentication documentation |

## 🔒 Authentication Flow

```
User visits site
    ↓
Check if authenticated?
    ↓ No
Redirect to /login.html
    ↓
Sign in with Google
    ↓
Netlify Identity + Google OAuth
    ↓
Session created
    ↓
Redirect to knowledge base
    ↓
✅ Full access granted
```

## 🧩 Tech Stack

- **Quartz** - Static site generator for digital gardens
- **Netlify** - Hosting and deployment
- **Netlify Identity** - Authentication service
- **Google OAuth** - Identity provider
- **Markdown** - Content format
- **TypeScript** - Configuration and plugins
- **Node.js** - Build tooling

## 📊 Stats

- **94 Notes** covering complete cybersecurity roadmap
- **10 Categories** organized by domain
- **Hundreds of Internal Links** for easy navigation
- **3 Learning Paths** for all skill levels
- **12 Certification Guides** for career development

## 🎯 Use Cases

### 📖 Personal Learning
- Study cybersecurity systematically
- Follow structured learning paths
- Track progress through topics
- Build your own notes alongside

### 👥 Team Knowledge Base
- Share security knowledge across team
- Onboard new security team members
- Maintain internal documentation
- Collaborate on security topics

### 🎓 Educational
- Teach cybersecurity courses
- Provide student resources
- Create interactive curricula
- Support certification prep

### 🏢 Professional Development
- Prepare for certifications
- Reference security concepts
- Stay current with best practices
- Build career roadmap

## 🤝 Contributing

Want to expand the knowledge base?

1. Fork the repository
2. Add or update markdown files in `cybersec002/`
3. Follow the Zettelkasten principle (one concept per note)
4. Use bidirectional links `[[Note Name]]`
5. Add relevant tags in frontmatter
6. Submit a pull request

## ⚠️ Troubleshooting

### Authentication Issues
- Verify Google OAuth redirect URIs match exactly
- Check Client ID/Secret in Netlify settings
- Clear browser cache and cookies
- Ensure Netlify Identity is enabled

### Build Failures
- Check Node.js version (≥18 required)
- Delete `node_modules` and reinstall
- Review build logs in Netlify dashboard
- Check for TypeScript errors

### Content Not Displaying
- Verify markdown files are in `cybersec002/`
- Check `content` symlink exists
- Rebuild with `npm run netlify-build`
- Check browser console for errors

## 📝 License

MIT License - feel free to use for your own knowledge bases!

## 🙏 Acknowledgments

- **Quartz** by [jackyzha0](https://github.com/jackyzha0/quartz)
- **Content based on** [roadmap.sh Cybersecurity Roadmap](https://roadmap.sh/cyber-security)
- **Powered by** [Netlify](https://www.netlify.com/)

## 🚀 Get Started

Ready to deploy your own authenticated knowledge base?

1. **Clone this repository**
2. **Follow [QUICKSTART-QUARTZ.md](./QUICKSTART-QUARTZ.md)**
3. **Deploy in 10 minutes!**

---

Built with ❤️ for the cybersecurity community

**Questions?** See the [documentation](./QUARTZ-SETUP.md) or [open an issue](https://github.com/your-repo/issues)
