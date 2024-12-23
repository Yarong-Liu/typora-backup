
# Protocol: GitHub Synchronization and File Management

## Overview
This document provides a step-by-step guide for managing your local folder and ensuring it syncs with GitHub. It includes instructions for renaming folders, updating scripts, and troubleshooting common issues.

---

## Steps for Renaming Folder and Updating Sync Script

### 1. Rename the Folder
- **In Finder**: Right-click the folder (e.g., `Aria`) and select **Rename**. Change the name to your desired name (e.g., `Typora-Github`).
- **In Terminal**:
  ```bash
  mv ~/Desktop/Aria ~/Desktop/Typora-Github
  ```

### 2. Update the Sync Script
1. Open the sync script:
   ```bash
   nano ~/Desktop/Typora-Github/sync.sh
   ```
2. Locate and update the following line:
   ```bash
   cd ~/Desktop/Aria
   ```
   Change it to:
   ```bash
   cd ~/Desktop/Typora-Github
   ```
3. Save and exit:
   - Press **Ctrl + O** to save.
   - Press **Enter** to confirm.
   - Press **Ctrl + X** to exit.

### 3. Update `crontab` for Scheduled Sync
1. Open `crontab`:
   ```bash
   crontab -e
   ```
2. Locate the sync script path:
   ```bash
   */30 * * * * ~/Desktop/Aria/sync.sh
   ```
   Change it to:
   ```bash
   */30 * * * * ~/Desktop/Typora-Github/sync.sh
   ```
3. Save and exit:
   - For **Nano**:
     - Press **Ctrl + O** to save.
     - Press **Enter** to confirm.
     - Press **Ctrl + X** to exit.
   - For **Vim**:
     - Press **Esc**.
     - Type `:wq`, then press **Enter**.

---

## Common Errors and Solutions

### 1. **Error: Vim Editor Not Responding**
- **Cause**: Pressing `i` in Vim while in **Chinese Input Method** prevents the editor from entering insert mode.
- **Solution**: Always switch to **English Input Method** before pressing `i` in Vim.

### 2. **Error: Sync Script Not Working After Renaming Folder**
- **Cause**: The folder path in the script or `crontab` is outdated.
- **Solution**:
  - Update the path in `sync.sh` and `crontab` to the new folder location.
  - Test the script manually:
    ```bash
    ~/Desktop/Typora-Github/sync.sh
    ```

### 3. **Error: Files Not Syncing**
- **Cause**: Script or `crontab` misconfiguration.
- **Solution**:
  - Check the sync script:
    ```bash
    nano ~/Desktop/Typora-Github/sync.sh
    ```
  - Verify the scheduled task:
    ```bash
    crontab -l
    ```

---

## Verification Steps

### 1. Test the Sync Script
Manually run the script to ensure it works:
```bash
~/Desktop/Typora-Github/sync.sh
```

### 2. Check GitHub Repository
- Open your GitHub repository.
- Verify that the files have been successfully updated.

### 3. Monitor Logs (Optional)
Add logging to your script to track sync operations:
```bash
echo "Sync completed at $(date)" >> ~/Desktop/Typora-Github/sync.log
```
View the logs:
```bash
cat ~/Desktop/Typora-Github/sync.log
```

---

## Notes
- Always switch to **English Input Method** when using Vim.
- Verify all paths after renaming folders or moving scripts.
- If in doubt, manually run the sync script to test functionality.

---

**Author**: 天才少女Aria  
**Last Updated**: 2024-12-23
