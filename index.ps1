# DT Activator One-Liner Wrapper
# Usage: irm https://dtactivator.netlify.app | iex

param(
    [string]$Mode,
    [switch]$Silent,
    [switch]$Help
)

# Configuration
$Script:MainScriptURL = "https://raw.githubusercontent.com/DT-Deville/DT-Activator/main/DT-Activator.ps1"
$Script:Version = "3.10"

function Test-AdminPrivileges {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Request-AdminElevation {
    if (-not (Test-AdminPrivileges)) {
        Write-Host "DT Activator requires administrator privileges." -ForegroundColor Yellow
        Write-Host "Elevating privileges..." -ForegroundColor Yellow
        
        $scriptArgs = @()
        if ($Mode) { $scriptArgs += "-Mode", $Mode }
        if ($Silent) { $scriptArgs += "-Silent" }
        if ($Help) { $scriptArgs += "-Help" }
        
        Start-Process PowerShell -ArgumentList "-ExecutionPolicy Bypass -Command `"irm https://dtactivator.netlify.app | iex`"" -Verb RunAs
        exit
    }
}

function Get-MainScript {
    try {
        Write-Host "Downloading DT Activator v$Script:Version..." -ForegroundColor Green
        $scriptContent = Invoke-RestMethod -Uri $Script:MainScriptURL -UseBasicParsing
        return $scriptContent
    }
    catch {
        Write-Host "Failed to download main script: $($_.Exception.Message)" -ForegroundColor Red
        Write-Host "Check your internet connection and try again." -ForegroundColor Red
        exit 1
    }
}

function Invoke-MainScript {
    param(
        [string]$ScriptContent,
        [string]$Mode,
        [switch]$Silent,
        [switch]$Help
    )
    
    # Create a temporary script file
    $tempScript = [System.IO.Path]::GetTempFileName() + ".ps1"
    $ScriptContent | Out-File -FilePath $tempScript -Encoding UTF8
    
    try {
        # Build arguments for the main script
        $argsList = @()
        if ($Mode) { $argsList += "-Mode", $Mode }
        if ($Silent) { $argsList += "-Silent" }
        if ($Help) { $argsList += "-Help" }
        
        # Execute the main script
        if ($argsList.Count -gt 0) {
            & $tempScript @argsList
        } else {
            & $tempScript
        }
    }
    finally {
        # Clean up temporary file
        if (Test-Path $tempScript) {
            Remove-Item $tempScript -Force
        }
    }
}

# Main execution
try {
    # Set execution policy for this session
    Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
    
    # Check for admin privileges (not needed for download, but will be checked by main script)
    if (-not (Test-AdminPrivileges)) {
        Write-Host "DT Activator Console" -ForegroundColor Green
        Write-Host "====================" -ForegroundColor Green
        Write-Host ""
        Write-Host "This script requires administrator privileges to function properly." -ForegroundColor Yellow
        Write-Host ""
        $continue = Read-Host "Continue anyway? (y/N)"
        if ($continue -notmatch '^[Yy]') {
            exit
        }
    }
    
    # Download and execute main script
    $mainScriptContent = Get-MainScript
    Invoke-MainScript -ScriptContent $mainScriptContent -Mode $Mode -Silent:$Silent -Help:$Help
}
catch {
    Write-Host "An error occurred: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
