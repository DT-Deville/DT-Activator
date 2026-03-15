# Command Line Reference

## DT Activator PowerShell Command Line Options

### Basic Usage

```powershell
# Run interactive menu
.\DT-Activator.ps1

# One-liner from web
irm https://dtactivator.dev | iex
```

### Activation Modes

#### HWID Activation (Windows 10/11)
```powershell
# Interactive
.\DT-Activator.ps1 -Mode HWID

# One-liner
irm https://dtactivator.dev | iex -Mode HWID

# Silent
.\DT-Activator.ps1 -Mode HWID -Silent
```

#### Ohook Activation (Office)
```powershell
# Interactive
.\DT-Activator.ps1 -Mode Ohook

# One-liner
irm https://dtactivator.dev | iex -Mode Ohook

# Silent
.\DT-Activator.ps1 -Mode Ohook -Silent
```

#### TSforge Activation (Universal)
```powershell
# Interactive
.\DT-Activator.ps1 -Mode TSforge

# One-liner
irm https://dtactivator.dev | iex -Mode TSforge

# Silent
.\DT-Activator.ps1 -Mode TSforge -Silent
```

#### KMS Activation (Online)
```powershell
# Interactive
.\DT-Activator.ps1 -Mode KMS

# One-liner
irm https://dtactivator.dev | iex -Mode KMS

# Silent
.\DT-Activator.ps1 -Mode KMS -Silent
```

### Additional Options

#### Help
```powershell
.\DT-Activator.ps1 -Help
```

#### Silent Mode
```powershell
# Silent execution with default settings
.\DT-Activator.ps1 -Silent

# Silent specific activation
.\DT-Activator.ps1 -Mode HWID -Silent
```

### Parameter Combinations

| Parameter | Description | Example |
|-----------|-------------|---------|
| `-Mode HWID` | Windows HWID activation | `.\DT-Activator.ps1 -Mode HWID` |
| `-Mode Ohook` | Office Ohook activation | `.\DT-Activator.ps1 -Mode Ohook` |
| `-Mode TSforge` | Universal activation | `.\DT-Activator.ps1 -Mode TSforge` |
| `-Mode KMS` | KMS activation | `.\DT-Activator.ps1 -Mode KMS` |
| `-Silent` | Silent execution | `.\DT-Activator.ps1 -Mode HWID -Silent` |
| `-Help` | Show help | `.\DT-Activator.ps1 -Help` |

### One-Liner Examples

```powershell
# Quick HWID activation
irm https://dtactivator.dev | iex -Mode HWID

# Silent Office activation
irm https://dtactivator.dev | iex -Mode Ohook -Silent

# Universal activation
irm https://dtactivator.dev | iex -Mode TSforge

# KMS activation
irm https://dtactivator.dev | iex -Mode KMS
```

### Return Codes

| Code | Meaning |
|------|---------|
| 0 | Success |
| 1 | General error |
| 2 | Insufficient privileges |
| 3 | Network error |
| 4 | Unsupported system |

### Environment Variables

The script respects the following environment variables:

- `DT_ACTIVATOR_LOG` - Enable logging (set to `1`)
- `DT_ACTIVATOR_DEBUG` - Enable debug mode (set to `1`)
- `DT_ACTIVATOR_NO_ELEVATION` - Skip admin elevation (set to `1`)

### Examples with Environment Variables

```powershell
# Enable logging
$env:DT_ACTIVATOR_LOG = "1"
.\DT-Activator.ps1 -Mode HWID

# Debug mode
$env:DT_ACTIVATOR_DEBUG = "1"
irm https://dtactivator.dev | iex -Mode TSforge
```
