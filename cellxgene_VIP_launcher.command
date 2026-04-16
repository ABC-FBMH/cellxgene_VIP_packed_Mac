#!/bin/bash
# cellxgene_VIP Launcher for macOS
# Double-click this file to launch cellxgene_VIP

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Change to the cellxgene_VIP directory
cd "$SCRIPT_DIR"

# Activate the conda environment
source etc/profile.d/conda.sh
eval "$(conda activate .)"

# Check if a data file was provided
if [ -z "$1" ]; then
    echo ""
    echo "=========================================="
    echo "  cellxgene_VIP Launcher"
    echo "=========================================="
    echo ""
    echo "Drag and drop your .h5ad file onto this Terminal window,"
    echo "then press Enter."
    echo ""
    echo "Or type the path to your file:"
    echo "  Example: ~/Downloads/my_data.h5ad"
    echo ""
    read -p "File path: " DATA_FILE
else
    DATA_FILE="$1"
fi

# Expand ~ if present
DATA_FILE="${DATA_FILE/#\~/$HOME}"

# Check if file exists
if [ ! -f "$DATA_FILE" ]; then
    echo ""
    echo "Error: File not found: $DATA_FILE"
    echo "Please check the file path and try again."
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

# Get just the filename
FILENAME=$(basename "$DATA_FILE")

echo ""
echo "=========================================="
echo "  Starting cellxgene_VIP"
echo "=========================================="
echo ""
echo "Data file: $FILENAME"
echo "URL: http://localhost:5005"
echo ""
echo "Opening Chrome browser..."
echo ""

# Open Chrome
open -a "Google Chrome" "http://localhost:5005"

# Launch cellxgene
cellxgene launch "$DATA_FILE" --port 5005 --host localhost
