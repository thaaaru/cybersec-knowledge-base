# 🚀 Quick Start - Quartz + Google Auth

Get your authenticated Quartz knowledge base live in 10 minutes!

## Prerequisites

- Node.js 18+ installed
- Netlify account (you have: tharaka-muem1y)
- Google Cloud account (for OAuth)

## Step 1: Install Dependencies

```bash
npm install
```

This installs all Quartz and build dependencies (~5 minutes).

## Step 2: Test Locally (Optional)

```bash
npm run dev
```

- Opens at http://localhost:8080
- **Note:** Authentication won't work locally
- Press Ctrl+C to stop

## Step 3: Deploy to Netlify

### Option A: Netlify CLI (Recommended)

```bash
# Install CLI
npm install -g netlify-cli

# Login
netlify login

# Initialize
netlify init
```

When prompted:
- Team: `tharaka-muem1y`
- Site name: Choose a unique name (e.g., `my-cybersec-kb`)
- Build command: (auto-detected from netlify.toml)
- Publish directory: (auto-detected as `public`)

```bash
# Deploy
netlify deploy --prod
```

Wait for build to complete (~3-5 minutes).

Your site URL will be displayed: `https://YOUR-SITE.netlify.app`

### Option B: GitHub + Netlify

1. Push code to GitHub:
   ```bash
   git add .
   git commit -m "Setup Quartz knowledge base"
   git push origin main
   ```

2. Go to https://app.netlify.com/teams/tharaka-muem1y/sites
3. "Add new site" > "Import an existing project"
4. Connect your repository
5. Build settings are auto-detected
6. Click "Deploy site"

## Step 4: Enable Google Authentication

### 4.1 Enable Netlify Identity

1. Open your Netlify site dashboard
2. Site settings > Identity
3. Click "Enable Identity"
4. Registration: Choose "Open" (recommended for testing)

### 4.2 Set Up Google OAuth

#### In Google Cloud Console

1. **Create project**: https://console.cloud.google.com/
   - Name: "Cybersec KB"
   - Click "CREATE"

2. **Enable Google+ API**:
   - APIs & Services > Library
   - Search "Google+ API"
   - Click "ENABLE"

3. **Configure OAuth consent**:
   - APIs & Services > OAuth consent screen
   - User Type: "External"
   - App name: "Cybersec Knowledge Base"
   - Support email: your email
   - Save and Continue (accept defaults)

4. **Create credentials**:
   - APIs & Services > Credentials
   - CREATE CREDENTIALS > OAuth client ID
   - Type: Web application
   - Name: "Cybersec KB - Netlify"

   **Authorized JavaScript origins:**
   ```
   https://YOUR-SITE.netlify.app
   ```

   **Authorized redirect URIs:**
   ```
   https://YOUR-SITE.netlify.app/.netlify/identity/callback
   ```

   Replace `YOUR-SITE` with your actual Netlify site name!

5. **Copy credentials**:
   - Client ID: `xxxxx.apps.googleusercontent.com`
   - Client Secret: `xxxxxxxxx`

#### In Netlify

1. Site settings > Identity > External providers
2. Find "Google"
3. Click "Enable"
4. Enter:
   - Client ID: (from Google)
   - Client Secret: (from Google)
5. Click "Save"

## Step 5: Test Your Site! 🎉

1. Visit: `https://YOUR-SITE.netlify.app`
2. You should see the login page
3. Click "Sign in with Google"
4. Authenticate with your Google account
5. You should be redirected to the knowledge base!

**Expected Features:**
- ✅ Beautiful Quartz interface
- ✅ Interactive graph view
- ✅ Full-text search
- ✅ Backlinks on each page
- ✅ Dark mode theme
- ✅ Mobile responsive

## 🎨 Next Steps

### Customize Your Site

Edit `quartz.config.ts`:
```typescript
pageTitle: "Your Custom Title"
baseUrl: "your-site.netlify.app"  // Update this!
```

Then rebuild and deploy:
```bash
npm run netlify-build
netlify deploy --prod
```

### Add Custom Domain (Optional)

1. Netlify dashboard > Domain settings
2. Add custom domain
3. Follow DNS setup instructions

### Invite Users

1. Netlify dashboard > Identity
2. Click "Invite users"
3. Enter email addresses

### Add Your Own Content

1. Create `.md` files in `cybersec002/`
2. Use `[[Note Name]]` to link between notes
3. Add frontmatter:
   ```markdown
   ---
   title: My Topic
   tags:
     - security
     - tools
   ---
   ```
4. Rebuild: `npm run netlify-build`
5. Deploy: `netlify deploy --prod`

## 📁 Project Structure Overview

```
cybersecurity-hackandbuild/
├── cybersec002/           # Your markdown content
├── quartz/                # Quartz framework
├── auth-pages/            # Login page template
├── scripts/               # Build scripts
├── public/                # Built site (generated)
├── quartz.config.ts       # Quartz settings
└── package.json           # Dependencies
```

## 🔧 Common Commands

```bash
# Development
npm run dev              # Local preview (no auth)

# Building
npm run build            # Build Quartz site
npm run netlify-build    # Build + inject auth

# Deployment
netlify deploy --prod    # Deploy to production
netlify open:site        # Open live site
netlify open             # Open dashboard
```

## ⚠️ Troubleshooting

### "Authentication not working"
- Check Google OAuth redirect URIs match exactly
- Verify Client ID/Secret in Netlify
- Clear browser cache

### "Content not showing"
- Verify `cybersec002/` folder has markdown files
- Check `content` symlink: `ls -la content`
- Rebuild: `npm run netlify-build`

### "Build failing"
- Check Node version: `node -v` (need 18+)
- Delete `node_modules/`: `rm -rf node_modules package-lock.json`
- Reinstall: `npm install`

## 📚 Documentation

- **Full setup guide**: See [QUARTZ-SETUP.md](./QUARTZ-SETUP.md)
- **Quartz docs**: https://quartz.jzhao.xyz/
- **Netlify Identity**: https://docs.netlify.com/visitor-access/identity/

## 🎉 You're Done!

Your knowledge base is now live with:
- ✅ Professional Quartz interface
- ✅ Secure Google authentication
- ✅ 94 interconnected cybersecurity notes
- ✅ Graph visualization
- ✅ Powerful search
- ✅ Mobile-friendly design

**Enjoy exploring your knowledge base!**
