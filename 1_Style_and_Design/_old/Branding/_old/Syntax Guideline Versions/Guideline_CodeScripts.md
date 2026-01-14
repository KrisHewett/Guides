
### ✅ Your Instructions for Code Scripts

1. **Plain ASCII for Output Messages**
    * Use `Write-Host` messages in **plain ASCII text only** (no fancy Unicode or emojis).

2. **Proper Closure of Blocks**
    * Always **close loops** (`for`, `foreach`, `while`) and **try/catch blocks** properly.
    * Ensure scripts are syntactically complete and readable.

3. **Execution Policy**
    * Recommend running:

        ```powershell
        Set-ExecutionPolicy RemoteSigned
        ```

        if script execution requires it.

4. **Commenting Style**
    * Include **clear, concise comments** explaining:
        * Purpose of the script.
        * Each major section or logic block.
        * Any assumptions or prerequisites.
    * Avoid excessive or redundant comments—focus on clarity.

5. **Structure**
    * Organize scripts into **logical sections**:
        * **Header**: Purpose, author, date.
        * **Configuration/Variables**: Define constants and parameters.
        * **Main Logic**: Core functionality.
        * **Error Handling**: Use `try/catch` for robustness.
        * **Output/Logging**: Display results clearly.

6. **Readability**
    * Use **consistent indentation** and spacing.
    * Prefer **descriptive variable names** over short or cryptic ones.

### **Coding Standard Template**

#### **1. Script Header**

```powershell
# ============================================
# Script Name: <Descriptive Name>
# Author: <Your Name>
# Date: <YYYY-MM-DD>
# Purpose: <Brief description of what the script does>
# ============================================
```

***

#### **2. Prerequisites**

```powershell
# Ensure execution policy allows script execution:
# Run: Set-ExecutionPolicy RemoteSigned
```

***

#### **3. Configuration Section**

```powershell
# ============================================
# Configuration / Variables
# ============================================
$LogPath = "C:\Logs\script.log"   # Example variable
$DateStamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
```

***

#### **4. Main Logic**

```powershell
# ============================================
# Main Logic
# ============================================

try {
    # Example: Display start message
    Write-Host "Starting script execution..."

    # Your core functionality here
    foreach ($item in $Collection) {
        # Process each item
        Write-Host "Processing item: $item"
    }

} catch {
    # Handle errors gracefully
    Write-Host "An error occurred: $($_.Exception.Message)"
}
```

***

#### **5. Output & Logging**

```powershell
# ============================================
# Output / Logging
# ============================================
Write-Host "Script completed successfully."
```

***

#### **6. Commenting Guidelines**

* Use **plain ASCII text** for all `Write-Host` messages.
* Add comments for:
  * Script purpose (header).
  * Each major section.
  * Complex logic or assumptions.
* Avoid redundant comments.

***

#### **7. Structural Rules**

* Close all loops and `try/catch` blocks properly.
* Use **consistent indentation** (2 or 4 spaces).
* Prefer **descriptive variable names**.
* Organize into logical sections: Header → Config → Logic → Error Handling → Output.

***
