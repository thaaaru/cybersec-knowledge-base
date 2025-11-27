# Deployment Guide - Cybersecurity Knowledge Base

This guide will walk you through deploying your Cybersecurity Knowledge Base to Netlify with Google Authentication.

## Prerequisites

- Netlify account (you have: tharaka-muem1y)
- Netlify API token: `nfp_eFphh9N97T61nxbFiLuec4eurFrj7EgA0202`
- Google Cloud account (for OAuth)
- Git repository initialized

## Step 1: Deploy to Netlify

### Option A: Using Netlify CLI (Recommended)

1. **Install Netlify CLI** (if not already installed):
   ```bash
   npm install -g netlify-cli
   ```

2. **Login to Netlify**:
   ```bash
   netlify login
   ```
   Or use your token:
   ```bash
   export NETLIFY_AUTH_TOKEN=nfp_eFphh9N97T61nxbFiLuec4eurFrj7EgA0202
   ```

3. **Initialize and deploy**:
   ```bash
   netlify init
   ```
   - Choose "Create & configure a new site"
   - Select your team: "tharaka-muem1y"
   - Site name: Choose a unique name (e.g., `cybersec-knowledge-base`)
   - Build command: (leave empty or press Enter)
   - Publish directory: `public`

4. **Deploy**:
   ```bash
   netlify deploy --prod
   ```

### Option B: Using Netlify Dashboard

1. Go to https://app.netlify.com/teams/tharaka-muem1y/sites
2. Click "Add new site" > "Import an existing project"
3. Connect your Git repository
4. Configure build settings:
   - Build command: (leave empty)
   - Publish directory: `public`
5. Click "Deploy site"

## Step 2: Enable Netlify Identity

1. **Go to your site's dashboard** on Netlify
2. Navigate to **Site settings** > **Identity**
3. Click **"Enable Identity"**
4. Under **Registration preferences**:
   - Set to "Invite only" or "Open" (your choice)
   - I recommend "Open" for easier testing
5. Under **External providers**:
   - Scroll down to find **Google**
   - Click **"Enable"** (we'll configure it next)

## Step 3: Set Up Google OAuth

### 3.1 Create Google OAuth Credentials

1. **Go to Google Cloud Console**:
   https://console.cloud.google.com/

2. **Create a new project** (or select existing):
   - Click on the project dropdown at the top
   - Click "NEW PROJECT"
   - Name: "Cybersec Knowledge Base"
   - Click "CREATE"

3. **Enable Google+ API**:
   - Go to "APIs & Services" > "Library"
   - Search for "Google+ API"
   - Click on it and click "ENABLE"

4. **Create OAuth 2.0 credentials**:
   - Go to "APIs & Services" > "Credentials"
   - Click "CREATE CREDENTIALS" > "OAuth client ID"
   - If prompted, configure the OAuth consent screen:
     - User Type: "External"
     - App name: "Cybersec Knowledge Base"
     - User support email: your email
     - Developer contact: your email
     - Click "SAVE AND CONTINUE"
     - Scopes: Click "SAVE AND CONTINUE" (no changes needed)
     - Test users: Add your email if using "Testing" mode
     - Click "SAVE AND CONTINUE"
   - Back to "Create OAuth client ID":
     - Application type: "Web application"
     - Name: "Cybersec KB - Netlify"
     - Authorized JavaScript origins:
       - `https://YOUR-SITE-NAME.netlify.app` (replace with your actual site URL)
     - Authorized redirect URIs:
       - `https://YOUR-SITE-NAME.netlify.app/.netlify/identity/callback`
     - Click "CREATE"

5. **Copy your credentials**:
   - You'll see a popup with:
     - **Client ID**: (looks like `xxxxx.apps.googleusercontent.com`)
     - **Client Secret**: (random string)
   - Keep these safe!

### 3.2 Configure Google Provider in Netlify

1. **Go back to Netlify**:
   - Site settings > Identity > External providers
   - Find **Google** and click on it

2. **Enter Google OAuth credentials**:
   - **Client ID**: Paste the Client ID from Google
   - **Client Secret**: Paste the Client Secret from Google
   - Click **"Save"**

## Step 4: Configure Identity Settings (Optional but Recommended)

1. **Under Identity settings**, configure:
   - **Registration**: Choose "Open" or "Invite only"
   - **Confirmation template**: Customize email if needed
   - **JWT expiration**: Default is fine (1 hour)

2. **Enable Identity on your site**:
   - Your site is already configured to use Netlify Identity
   - The widget is loaded in the HTML files

## Step 5: Test Your Site

1. **Visit your site**:
   - Go to `https://YOUR-SITE-NAME.netlify.app`

2. **Test authentication**:
   - Click "Sign in with Google"
   - Authenticate with your Google account
   - You should be redirected to the dashboard
   - Verify you can see the knowledge base content

3. **Test logout**:
   - Click "Logout"
   - Verify you're redirected to the home page
   - Try accessing `/dashboard.html` directly - you should be redirected to home

## Step 6: Update Google OAuth Settings (After Testing)

Once you know your final Netlify URL:

1. **Go back to Google Cloud Console** > Credentials
2. **Edit your OAuth 2.0 Client**
3. **Update the URIs** with your actual site URL:
   - Authorized JavaScript origins: `https://your-actual-site.netlify.app`
   - Authorized redirect URIs: `https://your-actual-site.netlify.app/.netlify/identity/callback`
4. **Save**

## Troubleshooting

### Authentication not working?

1. **Check browser console** for errors
2. **Verify Google OAuth credentials** are correctly entered in Netlify
3. **Check redirect URIs** match exactly (including `https://` and no trailing slash)
4. **Clear browser cache** and try again
5. **Check Netlify Identity is enabled** in site settings

### Can't see content on dashboard?

1. **Check browser console** for 404 errors
2. **Verify file paths** in `dashboard.js` match your actual file structure
3. **Check Network tab** to see if markdown files are being requested correctly

### Google OAuth consent screen issues?

1. **Verify app is not in testing mode** (or add yourself as a test user)
2. **Check OAuth consent screen** is fully configured
3. **Ensure Google+ API** is enabled for your project

## Project Structure

```
cybersecurity-hackandbuild/
├── public/
│   ├── index.html          # Landing page with login
│   ├── dashboard.html      # Protected dashboard
│   ├── styles.css          # Styling
│   ├── auth.js            # Authentication logic
│   ├── dashboard.js       # Dashboard functionality
│   └── _redirects         # Netlify redirect rules
├── cybersec002/           # Your knowledge base content
│   ├── 00-MOC-Cybersecurity-Roadmap.md
│   ├── 01-Fundamentals/
│   ├── 02-Operating-Systems/
│   └── ... (all other folders)
├── netlify.toml           # Netlify configuration
├── .gitignore            # Git ignore rules
└── DEPLOYMENT.md         # This file
```

## Next Steps

1. **Customize the design**: Edit `public/styles.css`
2. **Add more features**: Consider adding bookmarks, progress tracking, etc.
3. **Custom domain**: Configure a custom domain in Netlify
4. **Analytics**: Add Netlify Analytics or Google Analytics
5. **Invite users**: Use Netlify Identity to invite team members

## Support

- Netlify Docs: https://docs.netlify.com/
- Netlify Identity Docs: https://docs.netlify.com/visitor-access/identity/
- Google OAuth Docs: https://developers.google.com/identity/protocols/oauth2

## Quick Command Reference

```bash
# Login to Netlify
netlify login

# Deploy to production
netlify deploy --prod

# Open Netlify dashboard
netlify open

# Open site in browser
netlify open:site

# View deployment logs
netlify deploy --prod --open
```

Good luck with your deployment!
