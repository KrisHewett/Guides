
# **Language-specific Examples (Universal Syntax Guideline)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.1
**Revision Date:** 2026-01-14

---

## **1. Python Examples**

### **Python: DateTime Formatting**

```python
from datetime import datetime, timezone, timedelta

ADELAIDE_TZ = timezone(timedelta(hours=9, minutes=30))
now = datetime.now(ADELAIDE_TZ)

# Preferred combined format: YYYY-MM-DDTHH:MM
formatted = now.strftime("%Y-%m-%dT%H:%M")
print(formatted)  # Example: 2025-11-21T15:01

# Compact format: YYYYMMDDTHHMM
compact = now.strftime("%Y%m%dT%H%M")
print(compact)  # Example: 20251121T1501
```

### **Python: Number Formatting**

```python
num = 1234567.89
print(f"{num:,.0f}")       # 1,234,568
print(f"{num:,.2f}")       # 1,234,567.89
print(f"${num:,.0f}")      # $1,234,568

pct = 0.1234
print(f"{pct:.0%}")        # 12%
print(f"{pct:.2%}")        # 12.34%

from fractions import Fraction
fraction = Fraction(7, 16)
print(f"{fraction.numerator}/{fraction.denominator}")  # 7/16
```

---

## **2. JavaScript Examples**

### **JavaScript: DateTime Formatting**

```javascript
const now = new Date();
const formatted = now.toISOString().slice(0, 16);
console.log(formatted); // Example: 2025-11-21T15:01

const compact = `${now.getFullYear()}${String(now.getMonth() + 1).padStart(2, "0")}${String(now.getDate()).padStart(2, "0")}T${String(now.getHours()).padStart(2, "0")}${String(now.getMinutes()).padStart(2, "0")}`;
console.log(compact); // Example: 20251121T1501
```

### **JavaScript: Number Formatting**

```javascript
const num = 1234567.89;
console.log(num.toLocaleString("en-US", { minimumFractionDigits: 0 }));
console.log(num.toLocaleString("en-US", { minimumFractionDigits: 2 }));
console.log(num.toLocaleString("en-US", { style: "currency", currency: "USD" }));

const pct = 0.1234;
console.log((pct * 100).toFixed(0) + "%");
console.log((pct * 100).toFixed(2) + "%");
```

---

## **3. PowerShell Examples**

### **PowerShell: DateTime Formatting**

```powershell
$now = Get-Date
$formatted = $now.ToString("yyyy-MM-ddTHH:mm")
Write-Host $formatted
$compact = $now.ToString("yyyyMMddTHHmm")
Write-Host $compact
```

### **PowerShell: Number Formatting**

```powershell
$num = 1234567.89
"{0:N0}" -f $num
"{0:N2}" -f $num
"{0:C0}" -f $num

$pct = 0.1234
"{0:P0}" -f $pct
"{0:P2}" -f $pct
```

---

## **4. C Languages Examples**

### **C: DateTime Formatting**

```c
#include <stdio.h>
#include <time.h>
int main(void) {
    time_t t = time(NULL);
    struct tm local = *localtime(&t);
    char iso_short[17];
    strftime(iso_short, sizeof iso_short, "%Y-%m-%dT%H:%M", &local);
    printf("%s\n", iso_short);
    return 0;
}
```

### **C++: DateTime Formatting**

```cpp
#include <iostream>
#include <iomanip>
#include <ctime>
int main() {
    std::time_t t = std::time(nullptr);
    std::tm local = *std::localtime(&t);
    std::cout << std::put_time(&local, "%Y-%m-%dT%H:%M") << "\n";
}
```

### **C#: DateTime Formatting**

```csharp
Console.WriteLine(DateTime.Now.ToString("yyyy-MM-ddTHH:mm"));
Console.WriteLine(DateTime.Now.ToString("yyyyMMddTHHmm"));
```

---

## **5. DAX Examples**

```dax
Formatted DateTime := FORMAT(NOW(), "yyyy-mm-ddThh:mm")
Compact DateTime := FORMAT(NOW(), "yyyymmddThhmm")
Number := FORMAT(1234567.89, "#,##0.00")
Currency := FORMAT(1234567.89, "$#,##0")
Percent := FORMAT(0.1234, "0.00%")
```

---

## **6. Power Query (M) Examples**

```powerquery
let
    nowLocal = DateTime.LocalNow(),
    formatted = DateTime.ToText(nowLocal, "yyyy-MM-ddTHH:mm", "en-US"),
    compact = DateTime.ToText(nowLocal, "yyyyMMddTHHmm", "en-US")
in
    [Formatted = formatted, Compact = compact]
```

---

## **7. SQL Examples**

### **PostgreSQL**

```sql
SELECT TO_CHAR(NOW(), 'YYYY-MM-DD"T"HH24:MI') AS iso_short;
SELECT TO_CHAR(NOW(), 'YYYYMMDD"T"HH24MI') AS iso_compact;
```

### **SQL Server**

```sql
SELECT LEFT(CONVERT(VARCHAR(19), SYSDATETIME(), 126), 16) AS iso_short;
```

---

### **8. Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2025-11-21 | K. Hewett | Initial draft                        |
| 1.1     | 2026-01-14 | K. Hewett | Added C, DAX, PowerQuery, SQL        |

---
