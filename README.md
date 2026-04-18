# cellxgene_VIP for macOS Apple Silicon

**The easiest way to visualize single-cell data!**

---

## 🎯 What is This?

cellxgene_VIP is a powerful tool for analyzing and visualizing single-cell RNA sequencing data:
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

---

## 📥 Installation (2 Steps)

### Step 1: Download from GitHub

Go to: **https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac/releases/latest**

You need to download **2 files** from the "Assets" section:
1. **`cellxgene_VIP_portable_Mac_arm64.tar.gz`** (~835 MB) - The main package
2. **`cellxgene_VIP_launcher.command`** (small file) - The launcher script

### Step 2: Extract and Use

1. **Create a folder** on your Desktop named `cellxgene_VIP`
2. **Move both downloaded files** into this folder
3. **Double-click** `cellxgene_VIP_portable_Mac_arm64.tar.gz` to extract it
4. Open the extracted folder `cellxgene_VIP_opencode_fixed`
5. **Right-click** on the `etc` folder and select **"New Terminal at Folder"**
6. In the Terminal window, **copy and paste** this command:
   ```
   cp ../cellxgene_VIP_launcher.command .
   ```
   Then press **Enter**
7. Now you can see `cellxgene_VIP_launcher.command` in the folder

---

## 🚀 How to Use (Every Time)

### Option A: Quick Start (Recommended)

1. Open the `cellxgene_VIP_opencode_fixed` folder
2. **Right-click** on the `etc` folder → **"New Terminal at Folder"**
3. In Terminal, **copy and paste** this command:
   ```
   source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/YOUR_FILE.h5ad --port 5005
   ```
   *(Replace `YOUR_FILE.h5ad` with your actual data file name)*

4. Press **Enter**
5. Wait for "Launching! Please go to http://localhost:5005"
6. Open **Chrome** and go to: **http://localhost:5005**

### Option B: Using the Launcher

If you've set up the launcher in Step 2 above:

1. **Double-click** `cellxgene_VIP_launcher.command`
2. **Drag your .h5ad file** onto the Terminal window
3. Press **Enter**
4. Browser opens automatically!

---

## 🔧 Troubleshooting

### "This app is from an unidentified developer"
- Right-click on the .command file → "Open With" → "Terminal" → Click "Open"

### Browser shows white screen
- Use **Chrome** browser
- Press **Command + Shift + R** to refresh

### Command not found errors
- Make sure you opened Terminal from the `etc` folder

---

## 💻 System Requirements

- **Mac with Apple Silicon** (M1, M2, M3, or M4)
- **macOS 11 or later**
- **Chrome browser** (recommended)
- **8GB RAM minimum**, 16GB recommended

---

## ❓ Questions?

- cellxgene_VIP: https://github.com/interactivereport/cellxgene_VIP
- cellxgene: https://github.com/chanzuckerberg/cellxgene

---

**Have fun exploring your single-cell data! 🧬**