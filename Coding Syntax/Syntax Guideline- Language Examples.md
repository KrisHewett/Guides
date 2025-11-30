
# **Language-specific Examples**

***

## ✅ **Python Examples**

### **DateTime Formatting**

```python
from datetime import datetime

# Preferred combined format: YYYY-MM-DDTHH:MM
now = datetime.now()
formatted = now.strftime("%Y-%m-%dT%H:%M")
print(formatted)  # Example: 2025-11-21T15:01

# Compact format: YYYYMMDDTHHMM
compact = now.strftime("%Y%m%dT%H%M")
print(compact)  # Example: 20251121T1501
```

### **Number Formatting**

```python
# Number with thousands separator
num = 1234567.89
print(f"{num:,.0f}")      # 1,234,568
print(f"{num:,.2f}")      # 1,234,567.89

# Currency
print(f"${num:,.0f}")     # $1,234,568

# Percentage
pct = 0.1234
print(f"{pct:.0%}")       # 12%
print(f"{pct:.2%}")       # 12.34%

# Fractions (using Fraction module)
from fractions import Fraction
fraction = Fraction(7, 16)
print(f"{fraction.numerator}/{fraction.denominator}")  # 7/16
```

***

## ✅ **JavaScript Examples**

### **DateTime Formatting**

```javascript
const now = new Date();

// Preferred combined format: YYYY-MM-DDTHH:MM
const formatted = now.toISOString().slice(0,16);
console.log(formatted); // Example: 2025-11-21T15:01

// Compact format: YYYYMMDDTHHMM
const compact = `${now.getFullYear()}${String(now.getMonth()+1).padStart(2,'0')}${String(now.getDate()).padStart(2,'0')}T${String(now.getHours()).padStart(2,'0')}${String(now.getMinutes()).padStart(2,'0')}`;
console.log(compact); // Example: 20251121T1501
```

### **Number Formatting**

```javascript
const num = 1234567.89;

// Number with thousands separator
console.log(num.toLocaleString('en-US', {minimumFractionDigits: 0})); // 1,234,568
console.log(num.toLocaleString('en-US', {minimumFractionDigits: 2})); // 1,234,567.89

// Currency
console.log(num.toLocaleString('en-US', {style: 'currency', currency: 'USD'})); // $1,234,567.89

// Percentage
const pct = 0.1234;
console.log((pct * 100).toFixed(0) + '%');  // 12%
console.log((pct * 100).toFixed(2) + '%');  // 12.34%
```

***

## ✅ **PowerShell Examples**

### **DateTime Formatting**

```powershell
# Preferred combined format: YYYY-MM-DDTHH:MM
$now = Get-Date
$formatted = $now.ToString("yyyy-MM-ddTHH:mm")
Write-Host $formatted  # Example: 2025-11-21T15:01

# Compact format: YYYYMMDDTHHMM
$compact = $now.ToString("yyyyMMddTHHmm")
Write-Host $compact  # Example: 20251121T1501
```

### **Number Formatting**

```powershell
$num = 1234567.89

# Number with thousands separator
"{0:N0}" -f $num   # 1,234,568
"{0:N2}" -f $num   # 1,234,567.89

# Currency
"{0:C0}" -f $num   # $1,234,568

# Percentage
$pct = 0.1234
"{0:P0}" -f $pct   # 12%
"{0:P2}" -f $pct   # 12.34%
```

***

### **16. Linter/Formatter Configurations**

#### **PowerShell (VSCode Settings)**

```json
{
    "editor.insertSpaces": true,
    "editor.tabSize": 4,
    "powershell.codeFormatting.useCorrectCasing": true,
    "powershell.codeFormatting.preset": "Custom"
}
```

#### **Python**

* Black:

```bash
black --line-length 88 .
```

* Flake8:

```ini
[flake8]
indent-size = 4
max-line-length = 88
```

#### **JavaScript (ESLint)**

```json
{
    "rules": {
        "indent": ["error", 4],
        "quotes": ["error", "double"],
        "semi": ["error", "always"]
    }
}
```

***
