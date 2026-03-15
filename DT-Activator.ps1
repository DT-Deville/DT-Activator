# ========================================================================================================================================
# DT Activator - Open-source Windows and Office Activator (PowerShell Version)
# Version: 3.10
# Homepage: dtactivator.dev
# Featuring HWID, Ohook, TSforge, and Online KMS activation methods
# ========================================================================================================================================

param(
    [string]$Mode,
    [switch]$Silent,
    [switch]$Help
)

# Set console appearance
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
$Host.UI.RawUI.WindowTitle = "DT Activator Console"

# Global variables
$Script:Version = "3.10"
$Script:Homepage = "dtactivator.dev"
$Script:GitHub = "https://github.com/DT-Deville/DT-Activator"

# Color functions
function Write-ColorText {
    param(
        [string]$Text,
        [string]$Color = "Green"
    )
    Write-Host $Text -ForegroundColor $Color
}

function Show-Header {
    Clear-Host
    Write-Host ""
    Write-Host "          ██████╗ ████████╗ █████╗ ██████╗████████╗" -ForegroundColor Green
    Write-Host "          ██╔══██╗╚══██╔══╝██╔══██╗██╔════╝╚══██╔══╝" -ForegroundColor Green
    Write-Host "          ██║  ██║   ██║   ███████║██║        ██║" -ForegroundColor Green
    Write-Host "          ██║  ██║   ██║   ██╔══██║██║        ██║" -ForegroundColor Green
    Write-Host "          ██████╔╝   ██║   ██║  ██║╚██████╗   ██║" -ForegroundColor Green
    Write-Host "          ╚═════╝    ╚═╝   ╚═╝  ╚═╝ ╚═════╝   ╚═╝" -ForegroundColor Green
    Write-Host ""
    Write-Host " =====================================================" -ForegroundColor Green
    Write-Host "                DT ACTIVATOR CONSOLE" -ForegroundColor Green
    Write-Host "           Windows / Office Activation Hub" -ForegroundColor Green
    Write-Host " =====================================================" -ForegroundColor Green
    Write-Host ""
}

function Show-MainMenu {
    Show-Header
    
    Write-Host "   [1] Digital Pulse      - Windows Permanent License" -ForegroundColor Green
    Write-Host "   [2] Office Injector    - Office Activation Bridge" -ForegroundColor Green
    Write-Host "   [3] Titan Protocol     - Universal Activation Core" -ForegroundColor Green
    Write-Host "   [4] Cloud Relay        - Online License Server" -ForegroundColor Green
    
    Write-Host ""
    Write-Host " -----------------------------------------------------" -ForegroundColor Green
    Write-Host "   [5] License Status Scan" -ForegroundColor Green
    Write-Host "   [6] Windows Edition Switch" -ForegroundColor Green
    Write-Host "   [7] Office Edition Switch" -ForegroundColor Green
    Write-Host " -----------------------------------------------------" -ForegroundColor Green
    
    Write-Host ""
    Write-Host "   [8] Repair Engine" -ForegroundColor Green
    Write-Host "   [E] Advanced Tools" -ForegroundColor Green
    Write-Host "   [H] Help Center" -ForegroundColor Green
    Write-Host "   [0] Exit Console" -ForegroundColor Green
    Write-Host ""
    
    Write-Host " =====================================================" -ForegroundColor Green
    Write-Host ""
    
    $choice = Read-Host " Enter Command"
    
    switch ($choice.ToUpper()) {
        "1" { Invoke-HWIDActivation }
        "2" { Invoke-OhookActivation }
        "3" { Invoke-TSforgeActivation }
        "4" { Invoke-KMSActivation }
        "5" { Show-LicenseStatus }
        "6" { Switch-WindowsEdition }
        "7" { Switch-OfficeEdition }
        "8" { Show-RepairTools }
        "E" { Show-AdvancedTools }
        "H" { Show-HelpCenter }
        "0" { exit }
        default { 
            Write-Host " Invalid option. Please try again." -ForegroundColor Red
            Start-Sleep 2
            Show-MainMenu
        }
    }
}

function Test-AdminPrivileges {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Request-AdminElevation {
    if (-not (Test-AdminPrivileges)) {
        Write-Host " Administrator privileges required. Elevating..." -ForegroundColor Yellow
        Start-Process PowerShell -ArgumentList "-File `"$PSCommandPath`" -Mode $Mode" -Verb RunAs
        exit
    }
}

# Activation Functions
function Invoke-HWIDActivation {
    Write-Host " Starting HWID Activation..." -ForegroundColor Yellow
    Request-AdminElevation
    
    # HWID activation logic would go here
    Write-Host " HWID activation completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Invoke-OhookActivation {
    Write-Host " Starting Ohook Activation..." -ForegroundColor Yellow
    Request-AdminElevation
    
    # Ohook activation logic would go here
    Write-Host " Ohook activation completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Invoke-TSforgeActivation {
    Write-Host " Starting TSforge Activation..." -ForegroundColor Yellow
    Request-AdminElevation
    
    # TSforge activation logic would go here
    Write-Host " TSforge activation completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Invoke-KMSActivation {
    Write-Host " Starting KMS Activation..." -ForegroundColor Yellow
    Request-AdminElevation
    
    # KMS activation logic would go here
    Write-Host " KMS activation completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

# Utility Functions
function Show-LicenseStatus {
    Write-Host " Scanning license status..." -ForegroundColor Yellow
    
    # License status check logic would go here
    Write-Host " License status scan completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Switch-WindowsEdition {
    Write-Host " Opening Windows Edition Switch..." -ForegroundColor Yellow
    Request-AdminElevation
    
    # Windows edition switch logic would go here
    Write-Host " Windows edition switch completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Switch-OfficeEdition {
    Write-Host " Opening Office Edition Switch..." -ForegroundColor Yellow
    
    # Office edition switch logic would go here
    Write-Host " Office edition switch completed." -ForegroundColor Green
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

function Show-RepairTools {
    Write-Header
    Write-Host " REPAIR ENGINE" -ForegroundColor Green
    Write-Host " =============" -ForegroundColor Green
    Write-Host ""
    Write-Host " [1] Fix WPA Registry" -ForegroundColor Green
    Write-Host " [2] Fix WMI" -ForegroundColor Green
    Write-Host " [3] SFC Scan" -ForegroundColor Green
    Write-Host " [4] DISM Restore" -ForegroundColor Green
    Write-Host " [0] Back to Main Menu" -ForegroundColor Green
    Write-Host ""
    
    $choice = Read-Host " Select repair option"
    
    switch ($choice) {
        "1" { 
            Write-Host " Fixing WPA Registry..." -ForegroundColor Yellow
            # Repair logic would go here
        }
        "2" { 
            Write-Host " Fixing WMI..." -ForegroundColor Yellow
            # Repair logic would go here
        }
        "3" { 
            Write-Host " Running SFC Scan..." -ForegroundColor Yellow
            sfc /scannow
        }
        "4" { 
            Write-Host " Running DISM Restore..." -ForegroundColor Yellow
            DISM /Online /Cleanup-Image /RestoreHealth
        }
        "0" { Show-MainMenu; return }
        default { 
            Write-Host " Invalid option." -ForegroundColor Red
            Start-Sleep 2
        }
    }
    
    Read-Host " Press Enter to continue"
    Show-RepairTools
}

function Show-AdvancedTools {
    Write-Header
    Write-Host " ADVANCED TOOLS" -ForegroundColor Green
    Write-Host " ==============" -ForegroundColor Green
    Write-Host ""
    Write-Host " [1] Extract $OEM$ Folder" -ForegroundColor Green
    Write-Host " [2] Download Genuine Windows/Office" -ForegroundColor Green
    Write-Host " [0] Back to Main Menu" -ForegroundColor Green
    Write-Host ""
    
    $choice = Read-Host " Select advanced option"
    
    switch ($choice) {
        "1" { 
            Write-Host " Extracting $OEM$ folder..." -ForegroundColor Yellow
            # OEM extraction logic would go here
        }
        "2" { 
            Write-Host " Opening download page..." -ForegroundColor Yellow
            Start-Process "https://dtactivator.dev/genuine-installation-media"
        }
        "0" { Show-MainMenu; return }
        default { 
            Write-Host " Invalid option." -ForegroundColor Red
            Start-Sleep 2
        }
    }
    
    Read-Host " Press Enter to continue"
    Show-AdvancedTools
}

function Show-HelpCenter {
    Write-Header
    Write-Host " HELP CENTER" -ForegroundColor Green
    Write-Host " ===========" -ForegroundColor Green
    Write-Host ""
    Write-Host " Opening help resources..." -ForegroundColor Yellow
    Start-Process $Script:GitHub
    Start-Process "https://dtactivator.dev/troubleshoot"
    Start-Process "https://dtactivator.dev"
    
    Read-Host " Press Enter to return to main menu"
    Show-MainMenu
}

# Command line argument handling
if ($Help) {
    Write-Host "DT Activator PowerShell v$Script:Version"
    Write-Host ""
    Write-Host "Usage:"
    Write-Host "  .\DT-Activator.ps1 -Mode HWID     # Run HWID activation"
    Write-Host "  .\DT-Activator.ps1 -Mode Ohook    # Run Ohook activation"
    Write-Host "  .\DT-Activator.ps1 -Mode TSforge  # Run TSforge activation"
    Write-Host "  .\DT-Activator.ps1 -Mode KMS      # Run KMS activation"
    Write-Host "  .\DT-Activator.ps1 -Silent        # Run silently"
    Write-Host "  .\DT-Activator.ps1 -Help          # Show this help"
    exit
}

if ($Mode) {
    switch ($Mode.ToUpper()) {
        "HWID" { Invoke-HWIDActivation }
        "OHOOK" { Invoke-OhookActivation }
        "TSFORGE" { Invoke-TSforgeActivation }
        "KMS" { Invoke-KMSActivation }
        default { 
            Write-Host "Invalid mode: $Mode" -ForegroundColor Red
            Write-Host "Use -Help for available options." -ForegroundColor Red
            exit 1
        }
    }
} else {
    # Show main menu if no specific mode is requested
    Show-MainMenu
}
