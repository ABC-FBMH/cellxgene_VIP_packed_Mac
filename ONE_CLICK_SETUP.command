#!/bin/bash
# ONE-CLICK SETUP for cellxgene_VIP
# Run this once to set everything up

echo "=========================================="
echo "  cellxgene_VIP Setup"
echo "=========================================="
echo ""
echo "This will set up cellxgene_VIP for you."
echo ""

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Check if already set up
if [ -d "$SCRIPT_DIR/cellxgene_VIP_opencode_fixed" ]; then
    echo "cellxgene_VIP is already set up!"
    echo ""
    echo "To start cellxgene_VIP:"
    echo "  1. Double-click 'cellxgene_VIP_launcher.command'"
    echo "  2. Drag your .h5ad file onto the window"
    echo "  3. Press Enter"
    echo ""
    read -p "Press Enter to open the folder..."
    open "$SCRIPT_DIR"
    exit 0
fi

# Look for tar.gz file
TAR_FILE=""
for f in "$SCRIPT_DIR"/*.tar.gz; do
    if [ -f "$f" ]; then
        TAR_FILE="$f"
        break
    fi
done

if [ -z "$TAR_FILE" ]; then
    echo "Error: Could not find .tar.gz file"
    echo "Please download 'cellxgene_VIP_portable_Mac_arm64.tar.gz' from GitHub"
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

echo "Found: $(basename "$TAR_FILE")"
echo ""
echo "Extracting... (this may take a minute)"
echo ""

# Extract
tar -xzf "$TAR_FILE"

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "  Setup Complete!"
    echo "=========================================="
    echo ""
    echo "To start cellxgene_VIP:"
    echo "  1. Double-click 'cellxgene_VIP_launcher.command'"
    echo "  2. Drag your .h5ad file onto the window"
    echo "  3. Press Enter"
    echo ""
    read -p "Press Enter to open the folder..."
    open "$SCRIPT_DIR"
else
    echo ""
    echo "Error during extraction. Please try again."
    read -p "Press Enter to exit..."
fi
