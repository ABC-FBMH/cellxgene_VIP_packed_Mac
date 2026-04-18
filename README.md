# cellxgene_VIP for macOS Apple Silicon

**The easiest way to visualize single-cell data!**

---

## 🎯 What is This?

cellxgene_VIP is a powerful tool for analyzing and visualizing single-cell RNA sequencing data. It lets you:
- 📊 View gene expression (violin plots, heatmaps)
- 🔬 Find differences between cell groups (DEG analysis)
- 🗺️ Explore cell relationships (UMAP, t-SNE plots)
- 🔥 Create volcano plots

---

## 📦 Software Versions

| Component | Version |
|-----------|---------|
| **cellxgene** | v1.3.0 |
| **Python** | 3.10 |
| **R** | 4.4 |

All required packages are pre-installed - no additional installation needed!

---

## 📥 Installation

### Option A: Quick Install (2 files to download)

You need to download **2 files** from the Releases page:
1. **`cellxgene_VIP_portable_Mac_arm64.tar.gz`** (the main package - ~835MB)
2. **`cellxgene_VIP_launcher.command`** (the launcher script - small file)

**Go to:** https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac/releases/latest

Scroll down to "Assets" and download both files.

### Step 1: Create Folder
1. Create a new folder on your Desktop called `cellxgene_VIP`
2. Move both downloaded files into this folder

### Step 2: Extract the Package
1. **Double-click** `cellxgene_VIP_portable_Mac_arm64.tar.gz`
2. Wait for extraction to complete
3. You should now see a folder called `cellxgene_VIP_opencode_fixed`

### Step 3: Make Launcher Work
1. Open the `cellxgene_VIP_opencode_fixed` folder
2. Right-click on `etc` folder → select "New Terminal at Folder"
3. In Terminal, type this and press Enter:
   ```bash
   cp ../cellxgene_VIP_launcher.command .
   ```
4. You should now see `cellxgene_VIP_launcher.command` in the folder

---

## 🚀 How to Use

### Every Time You Want to Use It:

1. Open the `cellxgene_VIP_opencode_fixed` folder
2. Right-click on `etc` folder → select "New Terminal at Folder"
3. In Terminal, type:
   ```bash
   source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/YOUR_FILE.h5ad --port 5005
   ```
   *(Replace `YOUR_FILE.h5ad` with your actual file name)*

4. Press **Enter** and wait for "Launching!"
5. Open Chrome and go to: **http://localhost:5005**

---

## 📝 Alternative: Using the Launcher Script

If you've set up the launcher script, you can simply:

1. **Double-click** `cellxgene_VIP_launcher.command`
2. **Drag your .h5ad file** onto the Terminal window
3. Press **Enter**

The browser will open automatically!

---

## 🔧 Troubleshooting

### "This app is from an unidentified developer"
1. Right-click on the .command file
2. Select "Open With" → "Terminal"
3. Click "Open" when prompted

### Browser shows white screen
- Use **Chrome** browser
- Try pressing **Command + Shift + R**

---

## 💻 System Requirements

- **Mac with Apple Silicon** (M1, M2, M3, or M4)
- **macOS 11 or later**
- **Chrome browser** (recommended)
- **8GB RAM minimum**, 16GB recommended

---

## ❓ Questions?

Contact the person who shared this with you, or visit:
- cellxgene_VIP: https://github.com/interactivereport/cellxgene_VIP
- cellxgene: https://github.com/chanzuckerberg/cellxgene

---

**Have fun exploring your single-cell data! 🧬**