# PowerShell script to copy the layout file to VCM Scanner Layouts directory
$sourceFile = "C:\Users\Rcper\audi-vcm-layout\audi-k04-layout.Layout.xml"
$destinationFolder = "C:\Users\Rcper\Documents\HP Tuners\VCM Scanner\Layouts\"

Write-Host "Copying layout file to VCM Scanner Layouts directory..." -ForegroundColor Cyan

try {
    Copy-Item -Path $sourceFile -Destination $destinationFolder -Force
    Write-Host "Layout file successfully copied to $destinationFolder" -ForegroundColor Green
    Write-Host "You can now open VCM Scanner to test the layout." -ForegroundColor Green
} catch {
    Write-Host "Error copying file: $_" -ForegroundColor Red
}

Write-Host "Press any key to exit..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")