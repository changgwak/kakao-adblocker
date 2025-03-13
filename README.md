# KakaoTalk Ads Blocker 🚫📢

A simple batch script to block advertisements on KakaoTalk by modifying the Windows `hosts` file.

## 🚀 Features
- Blocks KakaoTalk ads by redirecting ad domains to `127.0.0.1`
- Automatically modifies the `hosts` file (Admin privileges required)
- Flushes the DNS cache to apply changes immediately
- Works without installing additional software

---

## 📌 How to Use

### **Step 1: Download the Script**
1. Click on the **Code** button and select **Download ZIP**, or clone the repository using:
   ```sh
   git clone https://github.com/changgwak/kakaotalk-ads-blocker.git
   ```
2. Extract the ZIP file (if downloaded).

---

### **Step 2: Run the Script**
#### **Method 1: Using Command Prompt (Recommended)**
1. **Run with Administrator Privileges**
   - Open **Command Prompt (cmd)** as Administrator.
   - Navigate to the script folder:
     ```sh
     cd path\to\kakaotalk-ads-blocker
     ```
   - Run the script:
     ```sh
     block_kakao_ads.bat
     ```
   - If prompted, confirm execution.

#### **Method 2: Using a Mouse (Windows GUI)**
1. **Locate the `block_kakao_ads.bat` file** in the extracted folder.
2. **Right-click** on the file.
3. Select **"Run as administrator"** from the context menu.
4. If prompted by User Account Control (UAC), click **"Yes"** to allow execution.

🚨 **Running the script as an administrator is required** to modify the `hosts` file.

---

### **Step 3: Verify Ads Are Blocked**
- Restart KakaoTalk.
- Ads should no longer appear.
- If ads are still visible, try rebooting your PC.

---

## ⚠️ Notes
- The script modifies the `hosts` file located at:
  ```
  C:\Windows\System32\drivers\etc\hosts
  ```
- If you want to **undo** the changes, manually remove the following line from `hosts`:
  ```
  127.0.0.1 display.ad.daum.net
  ```
- You can check if the ads are blocked by running:
  ```sh
  ping display.ad.daum.net
  ```
  If it returns `127.0.0.1`, the block is successful.

---

## 🛠️ Troubleshooting
1. **Script does not work?**  
   - Make sure you are running it as **Administrator**.
   - Run `ipconfig /flushdns` manually in Command Prompt.
   
2. **Still seeing ads?**  
   - Check if KakaoTalk is using cached data.  
   - Try restarting your computer.

---

## 📜 License
This project is licensed under the **Apache License 2.0**.  
See the [LICENSE](LICENSE) file for details.

---

## ✨ Contributors
Maintained by [Chang Gwak](https://github.com/changgwak).
```
