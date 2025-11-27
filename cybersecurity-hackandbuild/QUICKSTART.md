# Quick Start Guide

## 🚀 Get Your Site Live in 5 Minutes

### Step 1: Install Netlify CLI

```bash
npm install -g netlify-cli
```

Or if you prefer yarn:
```bash
yarn global add netlify-cli
```

### Step 2: Login to Netlify

```bash
netlify login
```

This will open your browser for authentication.

**Or** use your existing token:
```bash
export NETLIFY_AUTH_TOKEN=nfp_eFphh9N97T61nxbFiLuec4eurFrj7EgA0202
```

### Step 3: Deploy Your Site

From the project root directory:

```bash
netlify init
```

Follow the prompts:
- Choose "Create & configure a new site"
- Team: `tharaka-muem1y`
- Site name: Pick a unique name (e.g., `my-cybersec-kb`)
- Build command: (press Enter to skip)
- Publish directory: `public`

Then deploy:

```bash
netlify deploy --prod
```

**Your site is now live!** 🎉

The URL will be shown in the terminal (e.g., `https://my-cybersec-kb.netlify.app`)

### Step 4: Enable Google Authentication

#### 4.1 Enable Netlify Identity

1. Open your site's dashboard:
   ```bash
   netlify open
   ```

2. Go to **Site settings** > **Identity**
3. Click **"Enable Identity"**
4. Set registration to **"Open"**

#### 4.2 Set Up Google OAuth

1. **Google Cloud Console**: https://console.cloud.google.com/
   - Create new project: "Cybersec KB"
   - Enable "Google+ API"
   - Create OAuth 2.0 credentials:
     - Type: Web application
     - Name: "Cybersec KB"
     - Authorized origins: `https://YOUR-SITE.netlify.app`
     - Redirect URI: `https://YOUR-SITE.netlify.app/.netlify/identity/callback`

2. **Copy Client ID and Client Secret**

3. **Back in Netlify**:
   - Site settings > Identity > External providers
   - Click "Google"
   - Paste Client ID and Client Secret
   - Save

### Step 5: Test It!

1. Visit your site: `https://YOUR-SITE.netlify.app`
2. Click "Sign in with Google"
3. Authenticate
4. Explore your knowledge base!

## 📝 Important URLs to Replace

When setting up Google OAuth, replace `YOUR-SITE` with your actual Netlify site name:

- Authorized JavaScript origins:
  ```
  https://YOUR-ACTUAL-SITE.netlify.app
  ```

- Authorized redirect URIs:
  ```
  https://YOUR-ACTUAL-SITE.netlify.app/.netlify/identity/callback
  ```

## 🔧 Useful Commands

```bash
# Open Netlify dashboard in browser
netlify open

# Open your live site
netlify open:site

# View site status
netlify status

# Watch logs in real-time
netlify watch

# Run local development server
netlify dev
```

## ⚠️ Common Issues

### "Authentication failed"
- Check that Google OAuth credentials are correctly entered in Netlify
- Verify redirect URIs match exactly (no trailing slash!)

### "Can't access dashboard"
- Check browser console for errors
- Clear cache and cookies
- Verify you're logged in (check navbar for email)

### "Files not loading"
- Check that `cybersec002` folder exists in the project root
- Verify file paths in `dashboard.js`

## 🎯 What You Built

- ✅ Secure authentication with Google
- ✅ Beautiful, responsive knowledge base
- ✅ 94 cybersecurity topics ready to explore
- ✅ Dark theme optimized for reading
- ✅ Search functionality
- ✅ Mobile-friendly design

## 🚀 Next Steps

1. **Invite team members**: Site settings > Identity > Invite users
2. **Custom domain**: Site settings > Domain management
3. **Analytics**: Site settings > Analytics
4. **Customize design**: Edit `public/styles.css`

Need more help? See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed instructions.
