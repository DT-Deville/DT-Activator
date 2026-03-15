# GitHub Pages Setup Guide

## Setting Up DT Activator on GitHub Pages

### Prerequisites
- GitHub account
- Repository with DT Activator files

### Step 1: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Build and deployment**, set **Source** to **Deploy from a branch**
5. Select **main** branch
6. Select **/(root)** folder
7. Click **Save**

### Step 2: Configure Custom Domain (Optional)

1. In Pages settings, click **Custom domain**
2. Enter your domain (e.g., `dtactivator.dev`)
3. Configure DNS records:
   ```
   A record: 185.199.108.153
   A record: 185.199.109.153
   A record: 185.199.110.153
   A record: 185.199.111.153
   CNAME: www.dtactivator.dev -> dtactivator.dev
   ```

### Step 3: Verify Setup

1. Wait a few minutes for deployment
2. Visit `https://username.github.io/repository-name`
3. You should see the raw script content

### Step 4: Test One-Liner

```powershell
irm https://username.github.io/repository-name/index.ps1 | iex
```

## File Structure for GitHub Pages

```
repository/
├── index.ps1              # Main wrapper script
├── DT-Activator.ps1       # Main activation script
├── README.md              # Documentation
├── _config.yml           # Jekyll config (optional)
└── docs/                 # Documentation folder
    ├── command-line.md
    └── troubleshooting.md
```

### Important Notes

- GitHub Pages serves files with proper MIME types
- No server-side processing required
- Raw files are accessible via direct URLs
- Automatic HTTPS provided
- Global CDN distribution

## Alternative Hosting Options

### Vercel
1. Connect GitHub repository
2. Set build command to empty (no build needed)
3. Deploy automatically
4. Access via `https://your-project.vercel.app`

### Netlify
1. Connect GitHub repository
2. Set build command to empty
3. Publish directory to root
4. Deploy automatically

### Cloudflare Workers
1. Create worker script
2. Serve raw content from GitHub
3. Custom domain support
4. Edge caching

## URL Structure

### GitHub Pages
```
https://username.github.io/repo/index.ps1
```

### Custom Domain
```
https://dtactivator.dev/index.ps1
```

### Raw GitHub (Alternative)
```
https://raw.githubusercontent.com/username/repo/main/index.ps1
```

## Security Considerations

- Enable HTTPS (automatic on GitHub Pages)
- Consider rate limiting for high traffic
- Monitor for abuse
- Keep scripts updated
- Use content security headers if needed

## Troubleshooting

### Common Issues

**404 Errors**
- Check file names and paths
- Verify GitHub Pages is enabled
- Wait for deployment to complete

**CORS Issues**
- GitHub Pages handles CORS automatically
- For custom domains, ensure proper headers

**Rate Limiting**
- GitHub has rate limits on raw content
- Consider CDN for high traffic

**Script Not Executing**
- Check PowerShell execution policy
- Verify admin privileges
- Check for network connectivity
