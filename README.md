# cellxgene_VIP for macOS Apple Silicon

**The easiest way to visualize single-cell data!**

---

## 📦 Software Versions

| Component | Version |
|-----------|---------|
| **cellxgene** | v1.3.0 |
| **Python** | 3.10 |
| **R** | 4.4 |

---

## 📥 Installation (Super Easy!)

### Step 1: Download

Go to: **https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac/releases/latest**

Click on **`cellxgene_VIP_portable_Mac_arm64.tar.gz`** (~835 MB) to download.

### Step 2: Extract

1. Find the downloaded file in your **Downloads** folder
2. **Double-click** on it to extract
3. A new folder `cellxgene_VIP_opencode_fixed` will appear

---

## 🚀 How to Use

### Step 1: Open Terminal in the Right Place

1. Open the `cellxgene_VIP_opencode_fixed` folder
2. **Right-click** on the **background** (empty space) of the folder
3. Select **"New Terminal at Folder"**

A Terminal window will open! The Terminal will be in the `cellxgene_VIP_opencode_fixed` folder.

### Step 2: Run cellxgene

In the Terminal window, **copy and paste** this command:

```
source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/YOUR_DATA_FILE.h5ad --port 5005
```

**Important:** Replace `YOUR_DATA_FILE.h5ad` with your actual file name!

For example, if your file is called `cells.h5ad`:
```
source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/cells.h5ad --port 5005
```

### Step 3: View Your Data

1. Press **Enter**
2. Wait a moment until you see "Launching! Please go to http://localhost:5005"
3. Open **Chrome** browser
4. Go to: **http://localhost:5005**

---

## 📝 Quick Reference

| Action | Command |
|--------|---------|
| Open Terminal | Right-click folder background → New Terminal at Folder |
| Activate environment | `source etc/profile.d/conda.sh && conda activate .` |
| Launch app | `cellxgene launch ~/Downloads/YOUR_FILE.h5ad --port 5005` |

---

## 🔧 Troubleshooting

### "This app is from an unidentified developer"
- Right-click on the .command file → "Open With" → "Terminal" → Click "Open"

### Browser shows white screen
- Use **Chrome** browser
- Press **Command + Shift + R** to refresh

### "Command not found"
- Make sure you right-clicked on the **folder background** (not inside a subfolder)
- Make sure you typed the command exactly

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