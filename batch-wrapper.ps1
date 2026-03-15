# ========================================================================================================================================
# DT Activator PowerShell Wrapper - Downloads and Executes Batch Script
# Version: 1.0
# Purpose: One-liner execution of existing DT_AIO.cmd batch script
# ========================================================================================================================================

param(
    [string]$Mode,
    [switch]$Silent,
    [switch]$Help
)

# Configuration
$Script:Version = "1.0"
$Script:BatchURL = "https://raw.githubusercontent.com/DT-Deville/DT-Activator/main/DT-Activator-Batch/DT-Activator-All-In-One/DT_AIO.cmd"
$Script:TempDir = Join-Path $env:TEMP "DT-Activator-$(Get-Random -Minimum 1000 -Maximum 9999)"

# Check for admin privileges and self-elevate if needed
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
        
        # Rebuild one-liner command with parameters
        $oneLiner = "irm https://dtactivator.netlify.app/batch-wrapper.ps1 | iex"
        if ($scriptArgs.Count -gt 0) {
            $oneLiner += " " + ($scriptArgs -join " ")
        }
        
        Start-Process PowerShell -ArgumentList "-ExecutionPolicy Bypass -Command `"$oneLiner`"" -Verb RunAs
        exit
    }
}

# Download file with proper encoding
function Get-BatchScript {
    param([string]$URL, [string]$OutputPath)
    
    try {
        Write-Host "Downloading DT Activator batch script..." -ForegroundColor Green
        $webClient = New-Object System.Net.WebClient
        $webClient.Encoding = [System.Text.Encoding]::GetEncoding(1252)  # Windows-1252 encoding
        $webClient.DownloadFile($URL, $OutputPath)
        Write-Host "Downloaded to: $OutputPath" -ForegroundColor Green
        return $true
    }
    catch {
        Write-Host "Failed to download batch script: $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }
}

# Execute batch script in new CMD window
function Invoke-BatchScript {
    param([string]$BatchPath)
    
    try {
        Write-Host "Starting DT Activator..." -ForegroundColor Green
        Write-Host "Batch script: $BatchPath" -ForegroundColor Cyan
        
        # Execute in new CMD window to ensure proper batch environment
        Start-Process cmd.exe -ArgumentList "/c", "`"$BatchPath`"" -NoNewWindow
        
        # Wait a moment for batch to start
        Start-Sleep -Seconds 2
        
        Write-Host "DT Activator started in new window." -ForegroundColor Green
        Write-Host "You can close this PowerShell window." -ForegroundColor Yellow
    }
    catch {
        Write-Host "Failed to execute batch script: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Clean up temporary files
function Remove-TempFiles {
    if (Test-Path $Script:TempDir) {
        try {
            Remove-Item -Path $Script:TempDir -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Cleaned up temporary files." -ForegroundColor Green
        }
        catch {
            Write-Host "Warning: Could not clean up temp files: $($_.Exception.Message)" -ForegroundColor Yellow
        }
    }
}

# Show help information
function Show-Help {
    Write-Host ""
    Write-Host "DT Activator PowerShell Wrapper v$Script:Version" -ForegroundColor Green
    Write-Host "=====================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "This wrapper downloads and executes the DT_AIO.cmd batch script." -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Usage:" -ForegroundColor Yellow
    Write-Host "  irm https://dtactivator.netlify.app/batch-wrapper.ps1 | iex" -ForegroundColor White
    Write-Host ""
    Write-Host "Parameters:" -ForegroundColor Yellow
    Write-Host "  -Mode HWID      Run with HWID activation pre-selected" -ForegroundColor White
    Write-Host "  -Mode Ohook     Run with Office activation pre-selected" -ForegroundColor White
    Write-Host "  -Mode TSforge   Run with universal activation pre-selected" -ForegroundColor White
    Write-Host "  -Mode KMS       Run with KMS activation pre-selected" -ForegroundColor White
    Write-Host "  -Silent         Run in silent mode" -ForegroundColor White
    Write-Host "  -Help            Show this help message" -ForegroundColor White
    Write-Host ""
    Write-Host "The actual activation logic is handled by the batch script." -ForegroundColor Cyan
    Write-Host "This wrapper only downloads and executes it." -ForegroundColor Cyan
    Write-Host ""
}

# Main execution logic
function Main {
    # Handle help parameter
    if ($Help) {
        Show-Help
        return
    }
    
    # Check admin privileges
    Request-AdminElevation
    
    # Create temp directory
    if (-not (Test-Path $Script:TempDir)) {
        New-Item -Path $Script:TempDir -ItemType Directory -Force | Out-Null
    }
    
    # Download batch script
    $batchFileName = "DT_AIO-$(Get-Random -Minimum 1000 -Maximum 9999).cmd"
    $batchPath = Join-Path $Script:TempDir $batchFileName
    
    Write-Host "DT Activator PowerShell Wrapper v$Script:Version" -ForegroundColor Green
    Write-Host "=====================================" -ForegroundColor Green
    Write-Host ""
    
    if (-not (Get-BatchScript -URL $Script:BatchURL -OutputPath $batchPath)) {
        Write-Host "Failed to download batch script. Please check your internet connection." -ForegroundColor Red
        Write-Host "Direct URL: $Script:BatchURL" -ForegroundColor Yellow
        Read-Host "Press Enter to exit"
        return
    }
    
    # Execute batch script
    Invoke-BatchScript -BatchPath $batchPath
    
    # Set up cleanup on exit
    $cleanupScript = {
        Remove-TempFiles
        Write-Host "Temp files cleaned up on exit." -ForegroundColor Green
    }
    
    # Register cleanup for when PowerShell exits
    Register-EngineEvent -SourceObject $Host.Name -EventName PowerShell.Exiting -Action $cleanupScript | Out-Null
    
    Write-Host ""
    Write-Host "Wrapper completed. Check the new CMD window for DT Activator." -ForegroundColor Green
    Write-Host "This PowerShell window can be closed safely." -ForegroundColor Yellow
}

# Execute main function
Main
