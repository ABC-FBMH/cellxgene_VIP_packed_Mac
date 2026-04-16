# cellxgene_VIP for macOS - Setup Guide

**For macOS with Apple Silicon (M1, M2, M3, M4 chips)**

---

## Step 1: Download the Software (5 minutes)

1. Click this link to go to the download page:
   👉 **https://github.com/ABC-FBMH/cellxgene_VIP_packed_Mac_apple_chip/releases/latest**

2. You will see a page with "Assets" section at the bottom

3. Click on the file named **`cellxgene_VIP_portable_Mac_arm64.tar.gz`** to download it
   - The file is about 835 MB, so it may take a few minutes to download

4. After downloading, find the file in your **Downloads** folder

---

## Step 2: Create a Folder and Extract the Software (2 minutes)

1. Open **Finder** (the face icon in your Dock)

2. In the menu bar at the top, click **File** → **New Folder**
   - Name the folder: `cellxgene_VIP`

3. Open your **Downloads** folder (click on it in Finder sidebar)

4. Drag the downloaded file `cellxgene_VIP_portable_Mac_arm64.tar.gz` into the new `cellxgene_VIP` folder

5. **Double-click** on `cellxgene_VIP_portable_Mac_arm64.tar.gz` to extract it
   - Wait for extraction to complete (this may take a minute)
   - You should now see a folder called `cellxgene_VIP_opencode_fixed` in your `cellxgene_VIP` folder

---

## Step 3: Set Up the Software (1 minute)

1. Open the **Terminal** app:
   - Press **Command + Spacebar** to open Spotlight Search
   - Type "Terminal" and press Enter

2. Copy and paste this command into Terminal and press Enter:

```bash
mkdir -p ~/cellxgene_VIP && cd ~/cellxgene_VIP && cp ~/Downloads/cellxgene_VIP_portable_Mac_arm64.tar.gz . && tar -xzf cellxgene_VIP_portable_Mac_arm64.tar.gz && echo "Setup complete!"
```

3. If you see "Setup complete!" - you're ready to go!

---

## Step 4: Launch the Application (Every Time You Want to Use It)

### Option A: Using the Launch Script (Recommended)

1. Open Terminal

2. Copy and paste this command and press Enter:

```bash
cd ~/cellxgene_VIP/cellxgene_VIP_opencode_fixed && source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/YOUR_DATA_FILE.h5ad --port 5005
```

**Important:** Replace `YOUR_DATA_FILE.h5ad` with the name of your data file!

For example, if your file is `my_cells.h5ad`, use:
```bash
cellxgene launch ~/Downloads/my_cells.h5ad --port 5005
```

3. Wait a few seconds until you see: **"Launching! Please go to http://localhost:5005 in your browser."**

4. Open **Chrome** browser and go to: **http://localhost:5005**

---

## Step 5: How to Use cellxgene_VIP

### Selecting Cells
- Click and drag on the main plot to select cells
- Use the category buttons on the left sidebar to filter cells

### Opening VIP Panel
- Look for the **"Visualization in Plugin"** panel on the left side of the screen
- Click the **expand button** (the small arrows) to open it

### Making Plots
1. In the VIP panel, select a plot type:
   - **Violin**: Gene expression violin plots
   - **Heatmap**: Heatmaps of gene expression
   - **Embedding**: Cell embedding plots (UMAP, t-SNE)
   - **DEG**: Differential expression analysis

2. Select genes and cell groups as prompted

3. Click the plot button to generate your visualization

---

## Troubleshooting

### "Command not found: cellxgene"
Make sure you ran the full activation command in Step 4.

### Browser shows white screen
- Try using **Chrome** browser
- Clear browser cache: Press **Command + Shift + R**
- Make sure port 5005 is not used by another app

### The software is running slowly
- Close other applications
- For very large datasets (millions of cells), you may need more RAM

---

## Quick Reference Card

**To Start:**
```bash
cd ~/cellxgene_VIP/cellxgene_VIP_opencode_fixed && source etc/profile.d/conda.sh && conda activate . && cellxgene launch ~/Downloads/YOUR_FILE.h5ad --port 5005
```

**To Open:** http://localhost:5005

**Browser:** Use Chrome for best results

---

## Need Help?

For technical issues, please contact the person who shared this with you.

For more information about cellxgene_VIP features, visit:
https://github.com/interactivereport/cellxgene_VIP
