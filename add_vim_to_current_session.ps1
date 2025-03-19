# Script to add Vim to the PATH for the current PowerShell session

$vimPath = "C:\Program Files\Vim\vim91"

# Check if the path exists
if (-not (Test-Path $vimPath)) {
    Write-Host "Vim installation not found at $vimPath" -ForegroundColor Red
    exit 1
}

# Add Vim to the current session's PATH
$env:PATH = "$env:PATH;$vimPath"

Write-Host "Vim has been added to the PATH for this PowerShell session." -ForegroundColor Green
Write-Host "You can now use 'vim' and 'gvim' commands in this terminal." -ForegroundColor Green

# Test if vim is accessible
try {
    $vimVersion = & "$vimPath\vim.exe" --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`nVim is now accessible. You can test it with:" -ForegroundColor Cyan
        Write-Host "vim --version" -ForegroundColor Yellow
        Write-Host "gvim --version" -ForegroundColor Yellow
    }
} catch {
    Write-Host "`nCouldn't verify Vim installation. You may need to restart your terminal." -ForegroundColor Yellow
}

# Create a function to add this to your PowerShell profile
$profilePath = $PROFILE
$profileContent = @"

# Add Vim to PATH
function Add-VimToPath {
    `$vimPath = "C:\Program Files\Vim\vim91"
    if (Test-Path `$vimPath) {
        `$env:PATH = "`$env:PATH;`$vimPath"
        Write-Host "Vim added to PATH for this session" -ForegroundColor Green
    } else {
        Write-Host "Vim installation not found at `$vimPath" -ForegroundColor Red
    }
}

# Run the function to add Vim to PATH
Add-VimToPath
"@

Write-Host "`nWould you like to add Vim to your PowerShell profile?" -ForegroundColor Cyan
Write-Host "This will automatically add Vim to your PATH every time you open PowerShell." -ForegroundColor Cyan
$addToProfile = Read-Host "Add to profile? (y/n)"

if ($addToProfile -eq "y" -or $addToProfile -eq "Y") {
    try {
        # Create the profile file if it doesn't exist
        if (-not (Test-Path $profilePath)) {
            New-Item -Path $profilePath -ItemType File -Force | Out-Null
            Write-Host "Created PowerShell profile at $profilePath" -ForegroundColor Green
        }
        
        # Add the Vim PATH configuration to the profile
        Add-Content -Path $profilePath -Value $profileContent
        Write-Host "Added Vim to PowerShell profile. It will be available in all new PowerShell sessions." -ForegroundColor Green
    } catch {
        Write-Host "Error adding to profile: $_" -ForegroundColor Red
    }
} else {
    Write-Host "Skipped adding to profile. Vim will only be available in this session." -ForegroundColor Yellow
}