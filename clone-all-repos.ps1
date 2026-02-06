# Mazadak Repository Clone Script (Windows PowerShell)
# Clones all Mazadak repositories into the current directory

Write-Host "Cloning all Mazadak repositories..." -ForegroundColor Cyan
Write-Host ""

# Array of repository URLs
$repos = @(
    "https://github.com/Mazaadak/mazadak-orders",
    "https://github.com/Mazaadak/mazadak-infrastructure",
    "https://github.com/Mazaadak/mazadak-configs",
    "https://github.com/Mazaadak/mazadak-ui",
    "https://github.com/Mazaadak/mazadak-gateway",
    "https://github.com/Mazaadak/eureka-server",
    "https://github.com/Mazaadak/config-server",
    "https://github.com/Mazaadak/payment-service",
    "https://github.com/Mazaadak/product-catalog",
    "https://github.com/Mazaadak/user-service",
    "https://github.com/Mazaadak/mazadak-notifications",
    "https://github.com/Mazaadak/mazadak-inventory-service",
    "https://github.com/Mazaadak/mazadak-cart-service",
    "https://github.com/Mazaadak/mazadak-auctions",
    "https://github.com/Mazaadak/mazadak-common-module"
)

# Clone each repository
foreach ($repo in $repos) {
    Write-Host "Cloning $repo..." -ForegroundColor Yellow
    git clone $repo
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Successfully cloned $repo" -ForegroundColor Green
    } else {
        Write-Host "✗ Failed to clone $repo" -ForegroundColor Red
    }
    Write-Host ""
}

Write-Host "Done! All repositories have been cloned." -ForegroundColor Cyan
