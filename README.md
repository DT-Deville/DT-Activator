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

**DT Activator** is a powerful open-source Windows and Office activation tool that provides permanent digital licensing solutions. Supports multiple activation methods including HWID, Ohook, TSforge, and Online KMS activation for various Windows and Office versions.

## 🎯 Purpose & Features

### What DT Activator Does:
- 🪟 **Windows Activation**: Permanent digital license activation for Windows 10/11
- 📦 **Office Activation**: Complete Office suite activation without KMS requirements
- ⚡ **Universal Activation**: TSforge protocol for Windows/ESU/Office activation
- 🌐 **KMS Activation**: Online KMS server activation for enterprise environments
- 🔧 **System Management**: License checking, edition switching, and repair tools

### Who Uses DT Activator:
- 🏢 **System Administrators**: Managing bulk Windows/Office deployments
- 🎓 **IT Professionals**: Testing and validating software licenses
- 👥 **Power Users**: Personal system activation and management
- 🔬 **Researchers**: Studying activation mechanisms

## 🚀 Quick Start

### PowerShell One-Liner (Recommended)
```powershell
irm https://dtactivator.netlify.app/index.ps1 | iex
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
irm https://dtactivator.netlify.app/index.ps1 | iex -Mode HWID
irm https://dtactivator.netlify.app/index.ps1 | iex -Mode Ohook
irm https://dtactivator.netlify.app/index.ps1 | iex -Mode TSforge
irm https://dtactivator.netlify.app/index.ps1 | iex -Mode KMS
```

### Silent Execution
```powershell
irm https://dtactivator.netlify.app/index.ps1 | iex -Mode HWID -Silent
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
irm https://dtactivator.netlify.app/index.ps1 | iex
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

## 🌐 Deployment

### Netlify Deployment (Recommended)
1. **Drag & Drop**: Go to [netlify.com/drop](https://app.netlify.com/drop) and drag this repository folder
2. **Automatic Deploy**: Netlify will automatically deploy your files
3. **Get URL**: Receive your instant deployment URL like `https://dtactivator.netlify.app`
4. **Test**: Run `irm https://your-site.netlify.app/index.ps1 | iex`

## 📁 Repository Structure
```
DT-Activator/
├── 📄 DT-Activator.ps1              # Main PowerShell script
├── 📄 index.ps1                     # One-liner wrapper
├── 📄 README.md                     # This file
├── 📁 docs/                         # Documentation
└──  DT-Activator-Batch/           # Batch script versions
    ├── 📁 DT-Activator-All-In-One/  # All-in-one batch
    └── 📁 DT-Activator-Separate/    # Separate batch files
```

## � Support

- 🐛 **Report Issues**: [GitHub Issues](https://github.com/DT-Deville/DT-Activator/issues)
- 📖 **Documentation**: [Full Docs](https://github.com/DT-Deville/DT-Activator/tree/main/docs)

## 📄 License

This project is licensed under the **MIT License**.

## ⚠️ Disclaimer

**Educational & Testing Purpose Only**

This tool is intended for educational purposes, testing environments, and system administration. Users must comply with local software licensing laws and use responsibly.

---

<div align="center">

**[⭐ Star this repo](https://github.com/DT-Deville/DT-Activator) if it helped you!**

Made with ❤️ by [DT Deville](https://github.com/DT-Deville)

</div>
