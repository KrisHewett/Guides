
# **Universal Syntax Guideline (Revised for MCM Compliance)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.5
**Revision Date:** 2026-01-14

---

## **Purpose**

Defines standardized syntax, style, and formatting rules for coding across multiple languages to ensure **consistency**, **readability**, **maintainability**, and **audit compliance**.

---

### **1. Indentation**

* Always use **4 spaces per level**; **never use tabs**.
* Enforce via linter configuration.

---

### **2. Naming Conventions**

* **PascalCase** → Classes, types, enums
* **camelCase** → Functions, methods, properties, local variables
* **UPPERCASE** → Constants
* Avoid ambiguous abbreviations; prefer descriptive names.

---

### **3. Braces and Blocks**

* Always use `{}` for loops and conditionals.
* Opening brace on **same line**; closing brace on **its own line**.
* No single-line implicit blocks.

---

### **4. Whitespace**

* No extra spaces inside parentheses.
* Space after commas, colons, semicolons.
* No trailing whitespace.
* One blank line between logical sections.

---

### **5. Comments**

* Clear, concise comments for **purpose** and **complex logic**.
* Use `TODO` and `FIXME` tags consistently.
* Avoid redundant comments (e.g., repeating obvious code).

---

### **6. Strings**

* `"Double quotes"` → User-facing text
* `'Single quotes'` → Internal strings
* Escape special characters explicitly.

---

### **7. Error Handling**

* Always use `try/catch` or equivalent.
* Log stack traces; user messages in **plain ASCII only**.
* Never expose sensitive data in error messages.

---

### **8. Output**

* Plain ASCII only; **no emojis**.
* Logs must include **timestamps**, **context**, and **severity level**.
* Format: `[YYYY-MM-DD hh:mm:ss] [LEVEL] Message`.

---

### **9. Structure**

Order of sections:

1. **Header**
2. **Prerequisites**
3. **Configuration**
4. **Main Logic**
5. **Error Handling**
6. **Output**

---

### **10. Style**

* Curly braces on same line.
* Prefer arrow functions where supported.
* Maximum line length: **120 characters**.
* No trailing commas in arrays/objects unless language requires.

---

### **11. Preferences**

* New line: `\n`
* Blank line marker: `[BLANK]`
* Group separator: `---`

---

### **12. Glob Pattern Syntax**

```text
/      = path separator
*      = zero or more chars
?      = one char
**     = any number of segments
```

---

### **13. DateTime Standards**

* TimeZone: `(UTC+09:30) Adelaide`
* Preferred format: `YYYY-MM-DDThh:mm` (e.g., `2025-11-21T15:01`)
* Always use ISO 8601 for interoperability.

---

### **14. Number Formats**

* Number: `#,##0_ ;[Red]-#,##0`
* Currency: `$#,##0;[Red]-$#,##0`
* Percentage: `0%`, `0.00%`
* Fractions: `# ??/100`

---

### **15. Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2025-11-21 | K. Hewett | Initial draft                        |
| 1.1     | 2025-11-21 | K. Hewett | Added error handling clarification   |
| 1.2     | 2025-11-22 | K. Hewett | Added DateTime standards             |
| 1.3     | 2025-11-22 | K. Hewett | Added Number Formats                 |
| 1.4     | 2026-01-13 | K. Hewett | Added Linter/Formatter Configs       |
| 1.5     | 2026-01-14 | K. Hewett | Formatting and Consistency updates   |

---
