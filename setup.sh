#!/bin/bash
# Setup script for cellxgene_VIP portable environment

echo "=========================================="
echo "cellxgene_VIP Portable Setup Script"
echo "=========================================="
echo ""

# Check if we're on macOS Apple Silicon
if [[ $(uname) != "Darwin" ]]; then
    echo "Error: This setup script is designed for macOS only."
    exit 1
fi

if [[ $(uname -m) != "arm64" ]]; then
    echo "Warning: This environment was built for Apple Silicon (arm64)."
    echo "You may encounter issues on Intel Macs."
fi

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ENV_DIR="$SCRIPT_DIR/cellxgene_env"

echo "Installation directory: $SCRIPT_DIR"
echo ""

# Check if already extracted
if [ -d "$ENV_DIR" ]; then
    echo "Environment already exists at $ENV_DIR"
    echo ""
else
    # Check for tar file
    TARBALL=$(ls "$SCRIPT_DIR"/*.tar.gz 2>/dev/null | head -1)
    if [ -z "$TARBALL" ]; then
        echo "Error: No tar.gz file found in $SCRIPT_DIR"
        echo "Please download the portable package first."
        exit 1
    fi

    echo "Extracting environment from $TARBALL..."
    tar -xzf "$TARBALL"
    echo "Extraction complete!"
    echo ""
fi

# Create activation script
echo "Creating activation script..."
cat > "$SCRIPT_DIR/activate.sh" << 'EOF'
#!/bin/bash
# Activate cellxgene_VIP environment

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$SCRIPT_DIR/cellxgene_env/etc/profile.d/conda.sh"
eval "$(echo 'conda activate'" $SCRIPT_DIR/cellxgene_env")"
EOF

chmod +x "$SCRIPT_DIR/activate.sh"

# Create launch script
echo "Creating launch script..."
cat > "$SCRIPT_DIR/launch.sh" << 'EOF'
#!/bin/bash
# Launch cellxgene_VIP

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$SCRIPT_DIR/activate.sh"

if [ -z "$1" ]; then
    echo "Usage: ./launch.sh <path_to_h5ad_file> [port]"
    echo "Example: ./launch.sh ~/Downloads/data.h5ad 5005"
    exit 1
fi

DATA_FILE="$1"
PORT="${2:-5005}"

echo "Starting cellxgene_VIP..."
echo "Data file: $DATA_FILE"
echo "Port: $PORT"
echo "URL: http://localhost:$PORT"
echo ""

cd "$SCRIPT_DIR"
cellxgene launch "$DATA_FILE" --port "$PORT" --host localhost
EOF

chmod +x "$SCRIPT_DIR/launch.sh"

echo ""
echo "=========================================="
echo "Setup Complete!"
echo "=========================================="
echo ""
echo "To activate the environment, run:"
echo "  source $SCRIPT_DIR/activate.sh"
echo ""
echo "To launch cellxgene_VIP, run:"
echo "  $SCRIPT_DIR/launch.sh <path_to_h5ad_file> [port]"
echo ""
echo "Example:"
echo "  $SCRIPT_DIR/launch.sh ~/Downloads/data.h5ad 5005"
echo ""
