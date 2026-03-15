# DT Activator

<p align="center">

```
 ████████╗ █████╗ ███╗   ██╗██╗  ██╗    ██████╗ ███████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
 ╚══██╔══╝██╔══██╗████╗  ██║██║ ██╔╝    ██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
    ██║   ███████║██╔██╗ ██║█████╔╝     ██████╔╝█████╗  ███████║   ██║   ██║██║   ██║██╔██╗ ██║
    ██║   ██╔══██║██║╚██╗██║██╔═██╗     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
    ██║   ██║  ██║██║ ╚████║██║  ██╗    ██║  ██║███████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                                 
        ██████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ █████╗ ██╗     ███████╗██████╗ ███████╗
       ██╔════╝██╔═══██╗████╗  ██║██║████╗  ██║██╔══██╗██║     ██╔════╝██╔══██╗██╔════╝
       ██║     ██║   ██║██╔██╗ ██║██║██╔██╗ ██║███████║██║     █████╗  ██████╔╝█████╗  
       ██║     ██║   ██║██║╚██╗██║██║██║╚██╗██║██╔══██║██║     ██╔══╝  ██╔══██╗██╔══╝  
       ╚██████╗╚██████╔╝██║ ╚████║██║██║ ╚████║██║  ██║███████╗███████╗██║  ██║███████╗
        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝
```

</p>

**DT Activator** is a powerful open-source Windows and Office activation tool that supports multiple activation methods including HWID, Ohook, TSforge, and Online KMS. Features both traditional batch scripts and modern PowerShell delivery with one-liner execution support.

## 🚀 Quick Start

### PowerShell One-Liner (Recommended)
```powershell
irm https://dtactivator.netlify.app | iex
```

### Alternative URLs
```powershell
# GitHub Pages
irm https://dtdeville.github.io/DT-Activator/index.ps1 | iex

# Raw GitHub (direct)
irm https://raw.githubusercontent.com/DT-Deville/DT-Activator/main/index.ps1 | iex
```

### With Specific Activation Mode
```powershell
irm https://dtactivator.netlify.app | iex -Mode HWID
irm https://dtactivator.netlify.app | iex -Mode Ohook
irm https://dtactivator.netlify.app | iex -Mode TSforge
irm https://dtactivator.netlify.app | iex -Mode KMS
```

### Silent Execution
```powershell
irm https://dtactivator.netlify.app | iex -Mode HWID -Silent
```

## 📋 Features

### Activation Methods
- **🖥️ HWID Activation**: Permanent Windows 10/11 digital license activation
- **📦 Ohook Activation**: Office activation without KMS requirements
- **⚡ TSforge Activation**: Universal activation for Windows/ESU/Office
- **🌐 KMS Activation**: Online KMS server activation for Windows & Office

### Management Tools
- **🔍 License Status Scan**: Comprehensive activation status checking
- **🔄 Windows Edition Switch**: Change Windows editions seamlessly
- **📊 Office Edition Switch**: Upgrade/downgrade Office versions
- **🔧 Repair Engine**: Fix common activation issues automatically

### Delivery Options
- **⚡ One-Liner Execution**: Run directly from internet
- **💻 PowerShell Script**: Modern PowerShell-based interface
- **📜 Batch Scripts**: Traditional batch file versions
- **🔧 Command Line**: Full CLI support with parameters

## 🎯 Supported Systems

### Windows Support
- ✅ **Windows 10** (All editions)
- ✅ **Windows 11** (All editions)
- ✅ **Windows Server 2016/2019/2022**
- ✅ **Architecture**: x64 and ARM64 support

### Office Support
- ✅ **Office 2013/2016/2019/2021** (Retail & Volume)
- ✅ **Office 365** (Subscription-based)
- ✅ **Click-to-Run** and **MSI** installations

### Special Features
- ✅ **ESU Support** (Extended Security Updates)
- ✅ **Cross-architecture** compatibility
- ✅ **Multi-language** support

## 🛠️ Installation & Usage

### 🌐 Online Execution (No Download Required)
Simply run the one-liner command in PowerShell as Administrator:
```powershell
irm https://dtactivator.netlify.app | iex
```

### 💻 Offline Usage
1. Download the required files:
   - `DT-Activator.ps1` (Main PowerShell script)
   - `DT-Activator-Batch/` (Batch script versions)
2. Run locally: `.\DT-Activator.ps1`
3. Or use traditional batch files from the `DT-Activator-Batch` folder

### ⚙️ Command Line Options
```powershell
# PowerShell Script Parameters
.\DT-Activator.ps1 -Mode HWID     # HWID activation
.\DT-Activator.ps1 -Mode Ohook    # Office activation
.\DT-Activator.ps1 -Mode TSforge  # Universal activation
.\DT-Activator.ps1 -Mode KMS      # KMS activation
.\DT-Activator.ps1 -Silent        # Silent mode
.\DT-Activator.ps1 -Help          # Show help
```

### 📱 Requirements
- **Windows 10/11** or **Windows Server 2016+**
- **PowerShell 5.1+** (built into Windows)
- **Administrator privileges** (required for activation)
- **Internet connection** (for one-liner execution)

## 🌐 Hosting & Deployment

### 🚀 Netlify Deployment (Recommended)
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/drop?repository=https://github.com/DT-Deville/DT-Activator)

#### Quick Netlify Setup:
1. **Drag & Drop**: Drag this repository folder to [netlify.com/drop](https://app.netlify.com/drop)
2. **Automatic Deploy**: Netlify will automatically deploy your files
3. **Get URL**: Receive your instant deployment URL
4. **Custom Domain** (optional): Add your custom domain in Netlify dashboard

### 📁 Repository Structure
```
DT-Activator/
├── 📄 DT-Activator.ps1              # Main PowerShell script
├── 📄 index.ps1                     # One-liner wrapper
├── 📄 README.md                     # This file
├── 📁 docs/                         # Documentation
│   ├── 📄 command-line.md           # CLI reference
│   ├── 📄 github-pages-setup.md     # GitHub Pages guide
│   └── 📄 hosting-recommendations.md # Hosting comparison
└── 📁 DT-Activator-Batch/           # Batch script versions
    ├── 📁 DT-Activator-All-In-One/  # All-in-one batch
    └── 📁 DT-Activator-Separate/    # Separate batch files
```

### 🌍 Alternative Hosting Options
| Platform | Setup Time | Custom Domain | Cost | Performance |
|----------|------------|--------------|------|-------------|
| **Netlify** | ⚡ 2 minutes | ✅ Free | 🆓 Free | ⭐⭐⭐⭐⭐ |
| **Vercel** | ⚡ 3 minutes | ✅ Free | 🆓 Free | ⭐⭐⭐⭐⭐ |
| **GitHub Pages** | 🕐 5 minutes | ✅ Free | 🆓 Free | ⭐⭐⭐⭐ |
| **Cloudflare Workers** | 🕐 10 minutes | ✅ Free | 🆓 Free | ⭐⭐⭐⭐⭐ |

## 🔒 Security

- Scripts are digitally signed
- No personal data collected
- Open source for transparency
- Regular security audits

## 📞 Support & Community

### 🆘 Get Help
- 🐛 **Report Issues**: [GitHub Issues](https://github.com/DT-Deville/DT-Activator/issues)
- 📖 **Documentation**: [Full Docs](https://github.com/DT-Deville/DT-Activator/tree/main/docs)
- 💬 **Community**: Join our Discord community (coming soon)
- 🌐 **Official Site**: [dtactivator.dev](https://dtactivator.dev)

### 🔗 Quick Links
- 📥 **Download**: [Latest Release](https://github.com/DT-Deville/DT-Activator/releases)
- 📋 **Features**: [Feature Requests](https://github.com/DT-Deville/DT-Activator/issues/new?template=feature_request.md)
- 🐛 **Bug Report**: [Report Bug](https://github.com/DT-Deville/DT-Activator/issues/new?template=bug_report.md)
- 📧 **Contact**: [Email Support](mailto:support@dtactivator.dev)

## 📊 Project Stats

![GitHub stars](https://img.shields.io/github/stars/DT-Deville/DT-Activator?style=social)
![GitHub forks](https://img.shields.io/github/forks/DT-Deville/DT-Activator?style=social)
![GitHub issues](https://img.shields.io/github/issues/DT-Deville/DT-Activator)
![GitHub license](https://img.shields.io/github/license/DT-Deville/DT-Activator)
![GitHub release](https://img.shields.io/github/release/DT-Deville/DT-Activator)

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### 🐛 Reporting Issues
1. Use the [Bug Report template](https://github.com/DT-Deville/DT-Activator/issues/new?template=bug_report.md)
2. Provide detailed information about your system
3. Include error messages and screenshots

### 💡 Feature Requests
1. Use the [Feature Request template](https://github.com/DT-Deville/DT-Activator/issues/new?template=feature_request.md)
2. Describe the feature and use case
3. Explain why it would be valuable

### 🔧 Code Contributions
1. **Fork** this repository
2. **Create** a feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** your changes: `git commit -m 'Add amazing feature'`
4. **Push** to the branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

### 📝 Development Guidelines
- Follow existing code style
- Add comments for complex logic
- Test your changes thoroughly
- Update documentation if needed

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### 📜 License Summary
- ✅ **Commercial use** allowed
- ✅ **Modification** allowed
- ✅ **Distribution** allowed
- ✅ **Private use** allowed
- ❌ **Liability** not accepted
- ❌ **Warranty** not provided

## ⚠️ Important Disclaimer

**Educational & Testing Purpose Only**

This tool is intended for:
- 🎓 **Educational purposes** - Learning about activation mechanisms
- 🧪 **Testing environments** - Validating software deployment
- 🔧 **System administration** - Managing legitimate licenses
- 📋 **Compliance testing** - Ensuring proper licensing

**User Responsibility**
- ⚖️ Users must comply with local software licensing laws
- 🏢 Corporate users need proper volume licensing
- 🌍 Check your country's software regulations
- 👤 Personal use should respect Microsoft's terms of service

**No Warranty**
- 🚫 No guarantee of activation success
- 🚫 Not responsible for system issues
- 🚫 Use at your own risk
- 🚫 Backup your system before use

---

<div align="center">

**[⭐ Star this repo](https://github.com/DT-Deville/DT-Activator) if it helped you!**

Made with ❤️ by [DT Deville](https://github.com/DT-Deville)

</div>
