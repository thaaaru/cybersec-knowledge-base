# Cybersecurity Knowledge Base with Quartz + Google Authentication

This is a complete solution that combines:
- **Quartz** - Beautiful digital garden / knowledge base generator
- **Netlify Identity** - Google OAuth authentication
- **94 Cybersecurity Notes** - Comprehensive learning path

## 🎯 What You Get

### Features from Quartz
- 📊 **Interactive Graph View** - Visualize connections between topics
- 🔗 **Backlinks** - See all notes that reference the current note
- 🔍 **Full-Text Search** - Find content across all notes instantly
- 📱 **Responsive Design** - Works perfectly on mobile and desktop
- 🌙 **Dark Mode** - Beautiful dark theme by default
- ⚡ **Fast Loading** - Static site generation for optimal performance

### Authentication Features
- 🔐 **Google Login** - Secure authentication via Netlify Identity
- 🚪 **Protected Access** - Only authenticated users can view content
- 👤 **User Management** - Invite-only or open registration options
- 🔄 **Auto-Redirect** - Unauthenticated users redirected to login

## 📁 Project Structure

```
cybersecurity-hackandbuild/
├── quartz/                  # Quartz framework files
├── content/                 # Symlink to cybersec002
├── cybersec002/            # Your knowledge base content
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
├── auth-pages/             # Authentication pages
│   └── login.html          # Google login page
├── scripts/                # Build scripts
│   └── wrap-auth.mjs       # Injects auth into built site
├── public/                 # Built site (generated)
├── quartz.config.ts        # Quartz configuration
├── quartz.layout.ts        # Quartz layout configuration
├── netlify.toml           # Netlify deployment config
└── package.json           # Dependencies and scripts
```

## 🚀 Quick Start

### 1. Install Dependencies

```bash
npm install
```

This will install all Quartz dependencies and required packages.

### 2. Local Development

```bash
npm run dev
```

This starts the Quartz development server at `http://localhost:8080`.

**Note:** Authentication will NOT work in local development. To test authentication, deploy to Netlify.

### 3. Build for Production

```bash
npm run build
```

This builds the Quartz site and injects authentication.

### 4. Deploy to Netlify

#### Option A: Using Netlify CLI

```bash
# Install Netlify CLI (if not already installed)
npm install -g netlify-cli

# Login
netlify login

# Initialize site
netlify init

# Deploy
netlify deploy --prod
```

#### Option B: Connect to Git

1. Push your code to GitHub/GitLab/Bitbucket
2. Go to https://app.netlify.com/
3. Click "Add new site" > "Import an existing project"
4. Connect your repository
5. Netlify will auto-detect the build settings from `netlify.toml`

## 🔐 Setting Up Google Authentication

### Step 1: Enable Netlify Identity

1. Go to your Netlify site dashboard
2. Navigate to **Site settings** > **Identity**
3. Click **"Enable Identity"**
4. Under **Registration preferences**:
   - Choose "Open" or "Invite only"
   - I recommend "Open" for easier onboarding

### Step 2: Create Google OAuth Credentials

1. **Go to Google Cloud Console**: https://console.cloud.google.com/

2. **Create a new project**:
   - Click the project dropdown at the top
   - Click "NEW PROJECT"
   - Name: "Cybersec Knowledge Base"
   - Click "CREATE"

3. **Enable Google+ API**:
   - Go to "APIs & Services" > "Library"
   - Search for "Google+ API"
   - Click "ENABLE"

4. **Configure OAuth consent screen**:
   - Go to "APIs & Services" > "OAuth consent screen"
   - User Type: "External"
   - App name: "Cybersec Knowledge Base"
   - User support email: your email
   - Developer contact: your email
   - Click "SAVE AND CONTINUE"
   - Scopes: Skip (click "SAVE AND CONTINUE")
   - Test users: Add your email if using "Testing" mode
   - Click "SAVE AND CONTINUE"

5. **Create OAuth 2.0 credentials**:
   - Go to "APIs & Services" > "Credentials"
   - Click "CREATE CREDENTIALS" > "OAuth client ID"
   - Application type: "Web application"
   - Name: "Cybersec KB - Netlify"
   - **Authorized JavaScript origins**:
     ```
     https://YOUR-SITE-NAME.netlify.app
     ```
   - **Authorized redirect URIs**:
     ```
     https://YOUR-SITE-NAME.netlify.app/.netlify/identity/callback
     ```
   - Click "CREATE"
   - **Copy your Client ID and Client Secret** (you'll need these next)

### Step 3: Configure Google Provider in Netlify

1. Back in Netlify:
   - Site settings > Identity > External providers
   - Find **Google** section
   - Click "Enable"

2. Enter your credentials:
   - **Client ID**: Paste from Google Cloud Console
   - **Client Secret**: Paste from Google Cloud Console
   - Click **"Save"**

### Step 4: Update Google OAuth Settings

After you know your final Netlify URL:

1. Go back to Google Cloud Console > Credentials
2. Edit your OAuth 2.0 Client
3. Update the URIs with your actual Netlify URL:
   - Authorized JavaScript origins: `https://your-actual-site.netlify.app`
   - Authorized redirect URIs: `https://your-actual-site.netlify.app/.netlify/identity/callback`
4. Save

## 🎨 Customizing Your Site

### Change Site Title and Theme

Edit `quartz.config.ts`:

```typescript
const config: QuartzConfig = {
  configuration: {
    pageTitle: "Your Custom Title",
    // ... other settings
    theme: {
      colors: {
        darkMode: {
          // Customize colors here
        }
      }
    }
  }
}
```

### Modify Layout

Edit `quartz.layout.ts` to change the layout components.

### Add Your Own Content

Add markdown files to `cybersec002/` or create new folders. Quartz will automatically:
- Generate pages
- Create backlinks
- Update the graph view
- Index for search

## 📝 NPM Scripts Reference

```bash
# Development
npm run dev              # Start dev server (no auth)
npm run serve            # Build and serve locally

# Building
npm run build            # Build Quartz site
npm run wrap-auth        # Inject authentication into built site
npm run netlify-build    # Complete build (Quartz + auth)

# Deployment
npm run deploy           # Deploy to Netlify (requires CLI)
```

## 🔧 How Authentication Works

1. **Build Process**:
   - Quartz builds the static site to `public/`
   - `wrap-auth.mjs` script runs after build
   - Script injects Netlify Identity widget into all HTML files
   - Script adds auth check that redirects unauthenticated users
   - Login page is copied to `public/login.html`

2. **User Flow**:
   - User visits site → Redirected to `/login.html`
   - User clicks "Sign in with Google"
   - Google OAuth flow → Netlify Identity creates session
   - User redirected to homepage with access granted

3. **Protected Pages**:
   - Every page checks for authenticated user
   - If not authenticated → redirect to login
   - If authenticated → full access to knowledge base

## 🎯 Content Organization

Your knowledge base is organized in a Zettelkasten-style structure:

- **00-MOC**: Map of Content (main navigation hub)
- **01-10 folders**: Organized by topic domain
- **Bidirectional links**: Use `[[Note Name]]` syntax
- **Tags**: Add frontmatter tags for organization

### Adding New Content

1. Create a markdown file in the appropriate folder
2. Add frontmatter:
   ```markdown
   ---
   title: Your Topic Name
   tags:
     - security
     - networking
   ---
   ```
3. Link to other notes using `[[Other Note]]`
4. Rebuild: `npm run build`

## 🐛 Troubleshooting

### Authentication not working?

1. Check browser console for errors
2. Verify Google OAuth credentials in Netlify
3. Ensure redirect URIs match exactly (no trailing slash!)
4. Clear browser cache and cookies

### Content not showing up?

1. Check that markdown files are in `cybersec002/` or linked folders
2. Verify `content` symlink: `ls -la content`
3. Rebuild: `npm run netlify-build`
4. Check build logs for errors

### Build failing?

1. Check Node.js version: `node --version` (should be ≥18)
2. Delete `node_modules` and `package-lock.json`
3. Run `npm install` again
4. Check for TypeScript errors: `npm run check`

### Graph view not working?

- Graph view requires JavaScript enabled
- Some content might need to be interlinked more
- Check browser console for JavaScript errors

## 📚 Resources

- **Quartz Documentation**: https://quartz.jzhao.xyz/
- **Netlify Identity Docs**: https://docs.netlify.com/visitor-access/identity/
- **Google OAuth Guide**: https://developers.google.com/identity/protocols/oauth2
- **Zettelkasten Method**: https://zettelkasten.de/

## 🎉 What's Next?

1. **Invite users**: Site settings > Identity > Invite users
2. **Custom domain**: Site settings > Domain management
3. **Analytics**: Add Netlify Analytics or Plausible
4. **Customize theme**: Edit `quartz.config.ts`
5. **Add more content**: Expand your knowledge base!

## 💡 Tips

- Use consistent naming for your markdown files
- Link liberally between related topics
- Add descriptive tags to all notes
- Use the graph view to find gaps in your knowledge
- Regularly review and update content
- Leverage Quartz's search to find information quickly

---

Built with ❤️ using Quartz + Netlify Identity
