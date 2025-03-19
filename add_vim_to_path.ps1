# Script to add Vim to the system PATH
# This script needs to be run with administrator privileges

# Get the current PATH
$currentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")

# Check if Vim is already in the PATH
$vimPath = "C:\Program Files\Vim\vim91"
if ($currentPath -like "*$vimPath*") {
    Write-Host "Vim is already in your PATH." -ForegroundColor Green
} else {
    # Add Vim to the PATH
    $newPath = $currentPath + ";" + $vimPath
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
    Write-Host "Vim has been added to your system PATH." -ForegroundColor Green
    Write-Host "You may need to restart your terminal or computer for the changes to take effect." -ForegroundColor Yellow
}

Write-Host "`nVim is installed at: $vimPath" -ForegroundColor Cyan
Write-Host "You can run Vim using the 'vim' command or 'gvim' for the graphical version." -ForegroundColor Cyan
Write-Host "`nPress any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")