
# ✅ **Coding Syntax Guideline**

**Developed by:**
<Kristopher.Hewett@sa.gov.au>
2025

***

## **1. Indentation**

* Use **4 spaces per level**, never tabs.
* Consistent indentation improves readability and prevents parsing errors.

***

## **2. Naming Conventions**

* **PascalCase**: Classes, types, enums.
* **camelCase**: Functions, methods, properties, local variables.
* **UPPERCASE**: Constants.
* Use **whole words** whenever possible (avoid abbreviations).

***

## **3. Braces and Blocks**

* Always surround loop and conditional bodies with curly braces `{}`.
* Opening brace on the **same line** as the statement.
* Closing brace on its own line.

Example:

    if (condition) {
        doSomething();
    }

***

## **4. Whitespace**

* No extra spaces inside parentheses.
* One space after commas, colons, and semicolons.
* Blank lines between logical sections.

***

## **5. Comments**

* Use **clear, concise comments** for:
  * Script purpose.
  * Major sections.
  * Complex logic.
* Prefer **JSDoc-style** or equivalent for functions and classes.

Example:

    /**
     * Function: calculateSum
     * Purpose: Adds two numbers and returns the result.
     */

***

## **6. Strings**

* `"Double quotes"` for user-facing text (externalized/localized).
* `'Single quotes'` for internal strings.

***

## **7. Error Handling**

* Always use structured error handling:
  * `try/catch` (PowerShell, JavaScript).
  * `try/except` (Python).
* Provide meaningful error messages in **plain ASCII**.

***

## **8. Output**

* Use **plain ASCII text only** for output messages.
* Avoid emojis or special Unicode characters.

***

## **9. Structure**

Organize code into:

1. **Header**: Purpose, author, date.
2. **Prerequisites**: Dependencies, environment setup.
3. **Configuration**: Variables/constants.
4. **Main Logic**: Core functionality.
5. **Error Handling**: Robust try/catch or equivalent.
6. **Output/Logging**: Clear messages.

***

## **10. Preferences**

* New line: `\n`
* Blank line: `[BLANK]`
* Group separator: `***`
* Item separator: `---`

***

## **11. Language-Specific Examples**

### **PowerShell**

```powershell
# ============================================
# Script Name: ExampleScript
# Author: Kristopher Hewett
# Date: 2025-11-21
# Purpose: Demonstrates coding standards
# ============================================

# Prerequisites
# Run: Set-ExecutionPolicy RemoteSigned

# Configuration
$LogPath = "C:\Logs\script.log"
$DateStamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Main Logic
try {
    Write-Host "Starting script execution..."
    foreach ($item in $Collection) {
        Write-Host "Processing item: $item"
    }
} catch {
    Write-Host "An error occurred: $($_.Exception.Message)"
}

# Output
Write-Host "Script completed successfully."
```

***

### **Python**

```python
"""
============================================
Script Name: example_script.py
Author: Kristopher Hewett
Date: 2025-11-21
Purpose: Demonstrates coding standards
============================================
"""

# Prerequisites
# pip install requests

# Configuration
log_path = "/var/log/script.log"
date_stamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

# Main Logic
try:
    print("Starting script execution...")
    for item in collection:
        print(f"Processing item: {item}")
except Exception as e:
    print(f"An error occurred: {e}")

# Output
print("Script completed successfully.")
```

***

### **JavaScript**

```javascript
/**
 * ============================================
 * Script Name: exampleScript.js
 * Author: Kristopher Hewett
 * Date: 2025-11-21
 * Purpose: Demonstrates coding standards
 * ============================================
 */

const logPath = "/var/log/script.log";
const dateStamp = new Date().toISOString();

try {
    console.log("Starting script execution...");
    collection.forEach(item => {
        console.log(`Processing item: ${item}`);
    });
} catch (e) {
    console.log(`An error occurred: ${e.message}`);
}

console.log("Script completed successfully.");
```

***
