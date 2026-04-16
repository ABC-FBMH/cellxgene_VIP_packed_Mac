# cellxgene_VIP Packed for macOS Apple Silicon

This is a portable, pre-packaged version of [cellxgene_VIP](https://github.com/interactivereport/cellxgene_VIP) for macOS Apple Silicon (M1/M2/M3 chips).

## Download

**Download the portable package from the Releases section:**
👉 https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac_apple_chip/releases/latest

The release contains `cellxgene_VIP_portable_Mac_arm64.tar.gz` (~835MB) which includes everything needed.

## What is cellxgene_VIP?

cellxgene VIP (Visualization In Plugin) is an extension for [cellxgene](https://github.com/chanzuckerberg/cellxgene) that provides enhanced visualization capabilities including:
- Differential Expression Analysis (DEG)
- Violin plots
- Heatmaps (Seaborn and ComplexHeatmap)
- Embedding plots
- Volcano plots
- And much more!

## What's Included

This package includes:
- Python 3.10
- R 4.4
- cellxgene v1.3.0
- All required Python packages (scanpy, matplotlib, seaborn, plotly, etc.)
- All required R packages (ComplexHeatmap, Cairo, ggpubr, tidyverse, etc.)
- Pre-configured VIP interface files

## Installation Instructions

### Prerequisites
- macOS with Apple Silicon (M1, M2, M3, etc.)
- Minimum 16GB RAM recommended for large datasets

### Step 1: Download and Extract

```bash
# Create a directory for the installation
mkdir -p ~/cellxgene_VIP

# Navigate to the directory
cd ~/cellxgene_VIP

# Download the portable package (or download from GitHub releases)
# curl -L -o cellxgene_VIP_portable_Mac_arm64.tar.gz \
#   "https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac_apple_chip/releases/latest/download/cellxgene_VIP_portable_Mac_arm64.tar.gz"

# Extract the packed environment
tar -xzf cellxgene_VIP_portable_Mac_arm64.tar.gz

# Rename the extracted folder
mv ./cellxgene_VIP_opencode_fixed cellxgene_env
```

### Step 2: Activate the Environment

```bash
# Source the conda activate script
source ~/cellxgene_VIP/cellxgene_env/etc/profile.d/conda.sh

# Activate the environment
conda activate ~/cellxgene_VIP/cellxgene_env
```

### Step 3: Run cellxgene VIP

```bash
# Navigate to the cellxgene_VIP directory
cd ~/cellxgene_VIP

# Launch cellxgene with your data file
cellxgene launch /path/to/your/data.h5ad --port 5005 --host localhost
```

Then open your browser and go to: **http://localhost:5005**

## Quick Start Example

```bash
# After extracting and activating the environment:
cd ~/cellxgene_VIP
cellxgene launch ~/Downloads/output.h5ad --port 5005 --host localhost
```

## Using the Setup Script

After extraction, you can use the helper scripts:

```bash
cd ~/cellxgene_VIP

# Make scripts executable
chmod +x setup.sh activate.sh launch.sh

# Activate environment
./activate.sh

# Launch with a data file
./launch.sh ~/Downloads/data.h5ad 5005
```

## Troubleshooting

### "Command not found: cellxgene"
Make sure you've activated the conda environment:
```bash
source ~/cellxgene_VIP/cellxgene_env/etc/profile.d/conda.sh
conda activate ~/cellxgene_VIP/cellxgene_env
```

### R packages not found
The environment includes R packages installed in the system R library. Make sure you're using the correct R path as configured in `vip.env`.

### White screen on load
Clear your browser cache or try a different browser. Chrome is recommended.

## Package Contents

```
cellxgene_VIP_portable_Mac_arm64.tar.gz (~835MB)
├── cellxgene_VIP_opencode_fixed/    # The conda environment
│   ├── bin/                         # Executables
│   ├── lib/                         # Python and R libraries
│   ├── etc/                         # Conda configuration
│   └── ...
├── README.md                        # This file
└── setup.sh                        # Setup helper script
```

## System Requirements

- **OS**: macOS 11+ (Big Sur or later)
- **Architecture**: Apple Silicon (arm64)
- **RAM**: 8GB minimum, 16GB recommended
- **Disk Space**: ~3GB for the packed environment

## Version Information

- **cellxgene**: v1.3.0
- **Python**: 3.10
- **R**: 4.4
- **Platform**: macOS Apple Silicon

## Features Tested

- [x] Violin plots
- [x] Heatmaps (Seaborn)
- [x] Heatmaps (ComplexHeatmap/R)
- [x] Embedding plots
- [x] DEG (Differential Expression Analysis)
- [x] Volcano plots

## Credits

This is a pre-packaged version of [cellxgene_VIP](https://github.com/interactivereport/cellxgene_VIP) by Interactive Report.

Original cellxgene_VIP: https://github.com/interactivereport/cellxgene_VIP

## License

This portable package follows the same license as the original [cellxgene](https://github.com/chanzuckerberg/cellxgene) and [cellxgene_VIP](https://github.com/interactivereport/cellxgene_VIP) projects.

## Support

For issues with the original VIP functionality, please refer to the [cellxgene_VIP GitHub repository](https://github.com/interactivereport/cellxgene_VIP).

For issues with cellxgene itself, please refer to the [cellxgene GitHub repository](https://github.com/chanzuckerberg/cellxgene).
