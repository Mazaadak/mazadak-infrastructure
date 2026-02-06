#!/bin/bash

# Mazadak Repository Clone Script
# Clones all Mazadak repositories into the current directory

echo "Cloning all Mazadak repositories..."
echo ""

# Array of repository URLs
repos=(
    "https://github.com/Mazaadak/mazadak-orders"
    "https://github.com/Mazaadak/mazadak-infrastructure"
    "https://github.com/Mazaadak/mazadak-configs"
    "https://github.com/Mazaadak/mazadak-ui"
    "https://github.com/Mazaadak/mazadak-gateway"
    "https://github.com/Mazaadak/eureka-server"
    "https://github.com/Mazaadak/config-server"
    "https://github.com/Mazaadak/payment-service"
    "https://github.com/Mazaadak/product-catalog"
    "https://github.com/Mazaadak/user-service"
    "https://github.com/Mazaadak/mazadak-notifications"
    "https://github.com/Mazaadak/mazadak-inventory-service"
    "https://github.com/Mazaadak/mazadak-cart-service"
    "https://github.com/Mazaadak/mazadak-auctions"
    "https://github.com/Mazaadak/mazadak-common-module"
)

# Clone each repository
for repo in "${repos[@]}"; do
    echo "Cloning $repo..."
    git clone "$repo"
    if [ $? -eq 0 ]; then
        echo "✓ Successfully cloned $repo"
    else
        echo "✗ Failed to clone $repo"
    fi
    echo ""
done

echo "Done! All repositories have been cloned."
