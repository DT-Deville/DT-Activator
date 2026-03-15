# DT Activator - PowerShell Version

A modern PowerShell-based Windows and Office activation tool with one-liner delivery support.

## 🚀 Quick Start

### One-Liner Execution
```powershell
irm https://dtactivator.dev | iex
```

### With Specific Mode
```powershell
irm https://dtactivator.dev | iex -Mode HWID
irm https://dtactivator.dev | iex -Mode Ohook
irm https://dtactivator.dev | iex -Mode TSforge
irm https://dtactivator.dev | iex -Mode KMS
```

### Silent Execution
```powershell
irm https://dtactivator.dev | iex -Silent
```

## 📋 Features

- **HWID Activation**: Permanent Windows 10/11 activation
- **Ohook Activation**: Office activation without KMS
- **TSforge Activation**: Universal activation for Windows/ESU/Office
- **KMS Activation**: Online KMS server activation
- **License Status Scan**: Check activation status
- **Windows Edition Switch**: Change Windows editions
- **Office Edition Switch**: Change Office editions
- **Repair Engine**: Fix common activation issues

## 🎯 Supported Systems

- Windows 10/11 (All editions)
- Windows Server 2016/2019/2022
- Office 2013/2016/2019/2021/365
- Both x64 and ARM64 architectures

## 🛠️ Installation

No installation required! The script runs directly from the internet.

### For Offline Use
1. Download `DT-Activator.ps1`
2. Run locally: `.\DT-Activator.ps1`

## 🔧 Command Line Options

```powershell
.\DT-Activator.ps1 -Mode HWID     # Run HWID activation
.\DT-Activator.ps1 -Mode Ohook    # Run Ohook activation
.\DT-Activator.ps1 -Mode TSforge  # Run TSforge activation
.\DT-Activator.ps1 -Mode KMS      # Run KMS activation
.\DT-Activator.ps1 -Silent        # Run silently
.\DT-Activator.ps1 -Help          # Show help
```

## 🌐 Hosting Setup

### GitHub Pages (Recommended)
1. Enable GitHub Pages in repository settings
2. Set source to "Deploy from a branch"
3. Choose main branch and root folder
4. Access via: `https://username.github.io/repository-name`

### Alternative Hosting
The script works with any hosting that can serve plain text files:
- Vercel
- Netlify  
- Cloudflare Workers
- Any web server with raw file access

## 📁 Repository Structure

```
├── DT-Activator.ps1          # Main activation script
├── index.ps1                 # One-liner wrapper
├── README-PowerShell.md      # PowerShell version documentation
└── docs/
    ├── command-line.md       # Command line reference
    └── troubleshooting.md    # Troubleshooting guide
```

## 🔒 Security

- Scripts are digitally signed
- No personal data collected
- Open source for transparency
- Regular security audits

## 📞 Support

- **Homepage**: [dtactivator.dev](https://dtactivator.dev)
- **Issues**: [GitHub Issues](https://github.com/DT-Deville/DT-Activator/issues)
- **Troubleshooting**: [dtactivator.dev/troubleshoot](https://dtactivator.dev/troubleshoot)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## ⚠️ Disclaimer

This tool is for educational and testing purposes only. Users are responsible for complying with their local software licensing laws.
