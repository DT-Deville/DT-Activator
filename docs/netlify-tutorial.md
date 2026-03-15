# 🚀 Netlify Deployment Tutorial for DT Activator

## 📋 Prerequisites
- GitHub account
- DT Activator repository (already created)
- Netlify account (free)

## 🌐 Method 1: Drag & Drop (Easiest - 2 Minutes)

### Step 1: Download Your Repository
1. Go to your GitHub repository: https://github.com/DT-Deville/DT-Activator
2. Click the green "Code" button
3. Select "Download ZIP"
4. Extract the ZIP file to a folder

### Step 2: Deploy to Netlify
1. Visit: https://app.netlify.com/drop
2. **Drag and drop** the extracted folder onto the drop zone
3. Wait for deployment (30 seconds)
4. Get your instant URL: `https://random-name-123456.netlify.app`

### Step 3: Test Your One-Liner
```powershell
irm https://your-site.netlify.app/index.ps1 | iex
```

## 🛠️ Method 2: Git Integration (Recommended - 5 Minutes)

### Step 1: Sign Up for Netlify
1. Go to: https://app.netlify.com
2. Click "Sign up" → "Sign up with GitHub"
3. Authorize Netlify to access your GitHub
4. Choose your plan (Free is fine)

### Step 2: Create New Site
1. Click "Add new site" → "Import an existing project"
2. Select "GitHub"
3. Find and select `DT-Deville/DT-Activator`
4. Click "Deploy site"

### Step 3: Configure Build Settings
Since this is a static site, no build is needed:

```yaml
# Netlify configuration (optional)
[build]
  publish = "."
  command = ""

[[headers]]
  for = "/*.ps1"
  [headers.values]
    Content-Type = "text/plain"
```

### Step 4: Deploy
1. Click "Deploy site"
2. Wait for deployment to complete
3. Get your URL: `https://dt-activator.netlify.app`

## 🔧 Method 3: Custom Domain Setup

### Step 1: Add Custom Domain
1. In Netlify dashboard, go to "Domain settings"
2. Click "Add custom domain"
3. Enter: `dtactivator.dev` (or your preferred domain)
4. Click "Verify"

### Step 2: Configure DNS
Add these DNS records at your domain registrar:

```
Type: A
Name: @
Value: 75.2.60.5

Type: A
Name: @
Value: 52.2.172.231

Type: CNAME
Name: www
Value: dt-activator.netlify.app
```

### Step 3: SSL Certificate
- Netlify automatically provides free SSL
- HTTPS will be enabled automatically

## 📁 File Structure for Netlify

```
DT-Activator/
├── index.ps1                    # Main wrapper script
├── DT-Activator.ps1            # Main activation script
├── README.md                   # Documentation
├── docs/                      # Documentation folder
│   ├── command-line.md
│   ├── github-pages-setup.md
│   └── hosting-recommendations.md
└── DT-Activator-Batch/        # Batch scripts
    ├── DT-Activator-All-In-One/
    └── DT-Activator-Separate/
```

## 🔗 One-Liner URLs After Deployment

### Netlify Subdomain
```powershell
irm https://your-site.netlify.app/index.ps1 | iex
```

### Custom Domain
```powershell
irm https://dtactivator.dev/index.ps1 | iex
```

### With Parameters
```powershell
irm https://dtactivator.dev/index.ps1 | iex -Mode HWID
irm https://dtactivator.dev/index.ps1 | iex -Mode Ohook -Silent
```

## ⚙️ Advanced Configuration

### netlify.toml File (Optional)
Create `netlify.toml` in your repository root:

```toml
[build]
  publish = "."
  command = ""

# Ensure PowerShell files are served as plain text
[[headers]]
  for = "/*.ps1"
  [headers.values]
    Content-Type = "text/plain"
    Cache-Control = "no-cache"

# Redirect root to wrapper script
[[redirects]]
  from = "/"
  to = "/index.ps1"
  status = 302

# Security headers
[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"
```

### Environment Variables (Optional)
1. Go to Site settings → Environment variables
2. Add variables if needed:
   - `NODE_ENV = production`
   - `API_URL = https://api.dtactivator.dev`

## 🔄 Automatic Deploys

### Enable Automatic Updates
1. In Netlify dashboard → Build & deploy
2. Click "Edit settings"
3. Enable "Deploy on every push to main branch"
4. Save changes

### Webhook for GitHub Actions
1. Go to Build & deploy → Continuous Deployment
2. Click "Edit settings"
3. Copy the webhook URL
4. Add to your GitHub repository settings → Webhooks

## 📊 Monitoring & Analytics

### Netlify Analytics
1. Go to Analytics → Overview
2. Monitor page views, bandwidth, and visitors
3. Track your one-liner usage

### Custom Analytics (Optional)
Add Google Analytics to your site:

1. Create `analytics.html`:
```html
<!DOCTYPE html>
<html>
<head>
    <title>DT Activator</title>
    <script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'GA_TRACKING_ID');
    </script>
</head>
<body>
    <h1>DT Activator</h1>
    <p>Use: irm <script>document.write(window.location.origin)</script>/index.ps1 | iex</p>
</body>
</html>
```

## 🔒 Security Considerations

### Netlify Security Features
- ✅ Automatic HTTPS
- ✅ DDoS protection
- ✅ Content Security Policy
- ✅ Access control

### Additional Security
1. **Rate Limiting**: Add in Netlify settings
2. **Password Protection**: For development sites
3. **IP Whitelisting**: Restrict access if needed
4. **Audit Logs**: Monitor access in Netlify dashboard

## 🚨 Troubleshooting

### Common Issues

**404 Errors**
- Check file names and paths
- Verify deployment completed successfully
- Check Netlify deploy logs

**CORS Issues**
- Netlify handles CORS automatically
- For custom APIs, configure headers in netlify.toml

**PowerShell Execution Issues**
- Verify execution policy: `Set-ExecutionPolicy RemoteSigned`
- Run as Administrator
- Check internet connection

**Deployment Failures**
- Check repository size (Netlify free tier: 100MB)
- Verify file permissions
- Check build logs in Netlify dashboard

### Debug Mode
Add debug parameter to your one-liner:
```powershell
$DebugPreference = "Continue"; irm https://your-site.netlify.app/index.ps1 | iex
```

## 📈 Performance Optimization

### Caching
```toml
[[headers]]
  for = "/*.ps1"
  [headers.values]
    Cache-Control = "public, max-age=3600"
```

### CDN Optimization
- Netlify provides global CDN automatically
- Files are cached at edge locations worldwide
- Automatic compression enabled

## 💰 Cost Analysis

### Netlify Free Tier (Perfect for DT Activator)
- ✅ **100GB bandwidth/month** (plenty for script downloads)
- ✅ **300 minutes build time** (not needed for static files)
- ✅ **Unlimited sites**
- ✅ **Custom domains**
- ✅ **HTTPS certificates**
- ✅ **Rollback history**

### When to Upgrade
- >100GB monthly bandwidth
- Need team collaboration
- Advanced analytics required
- Custom build requirements

## 🎯 Best Practices

1. **Test Locally First**
   ```powershell
   .\index.ps1
   ```

2. **Use Version Tags**
   - Create releases in GitHub
   - Deploy specific versions to different Netlify sites

3. **Monitor Usage**
   - Check Netlify analytics regularly
   - Monitor bandwidth usage

4. **Backup Strategy**
   - Keep GitHub repository as source of truth
   - Use Netlify rollback if needed

5. **Update Process**
   - Update files in GitHub
   - Netlify auto-deploys changes
   - Test new deployment

## 📞 Support

### Netlify Support
- Documentation: https://docs.netlify.com
- Community: https://community.netlify.com
- Status: https://www.netlifystatus.com

### DT Activator Support
- GitHub Issues: https://github.com/DT-Deville/DT-Activator/issues
- Documentation: Check `/docs` folder

---

**🎉 Congratulations! Your DT Activator is now live on Netlify!**

Users can now run: `irm https://your-site.netlify.app/index.ps1 | iex`
