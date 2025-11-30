
# **Universal Syntax Guideline**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Year:** 2025

***

## **Purpose**

Defines standardized syntax, style, and formatting rules for coding across multiple languages to ensure consistency, readability, and maintainability.

***

### **1. Indentation**

* Use **4 spaces per level**, never tabs.

***

### **2. Naming Conventions**

* **PascalCase**: Classes, types, enums
* **camelCase**: Functions, methods, properties, local variables
* **UPPERCASE**: Constants

***

### **3. Braces and Blocks**

* Always use `{}` for loops and conditionals.
* Opening brace on same line; closing brace on its own line.

***

### **4. Whitespace**

* No extra spaces inside parentheses.
* Space after commas, colons, semicolons.
* No trailing whitespace.

***

### **5. Comments**

* Clear, concise comments for purpose and complex logic.
* Use `TODO` and `FIXME` tags.

***

### **6. Strings**

* `"Double quotes"` for user-facing text.
* `'Single quotes'` for internal strings.

***

### **7. Error Handling**

* Use `try/catch` or equivalent.
* Log stack traces; user messages in plain ASCII.

***

### **8. Output**

* Plain ASCII only; no emojis.
* Logs include timestamps and context.

***

### **9. Structure**

Header → Prerequisites → Config → Main Logic → Error Handling → Output.

***

### **10. Style**

* Curly braces on same line.
* Prefer arrow functions where supported.

***

### **11. Preferences**

* New line: `\n`
* Blank line: `[BLANK]`
* Group separator: `***`

***

### **12. Glob Pattern Syntax**

    /      = path separator
    *      = zero or more chars
    ?      = one char
    **     = any number of segments

***

### **13. DateTime Standards**

* TimeZone: `(UTC+09:30) Adelaide`
* Preferred: `YYYY-MM-DDThh:mm` (e.g., `2025-11-21T15:01`)

***

### **14. Number Formats**

* Number: `#,##0_ ;[Red]-#,##0`
* Currency: `$#,##0;[Red]-$#,##0`
* Percentage: `0%`, `0.00%`
* Fractions: `# ??/100`

***

### **15. Versioning**

| Version | Date       | Author    | Changes                        |
| ------- | ---------- | --------- | ------------------------------ |
| 1.0     | 2025-11-21 | K. Hewett | Initial draft                  |
| 1.3     | YYYY-MM-DD | Name      | Added Number Formats           |
| 1.4     | YYYY-MM-DD | Name      | Added Linter/Formatter Configs |

    Version | Date       | Author       | Changes
    1.0     | 2025-11-21 | K. Hewett    | Initial draft
    1.1     | YYYY-MM-DD | Name         | Added error handling clarification
    1.2     | YYYY-MM-DD | Name         | Added DateTime standards
    1.3     | YYYY-MM-DD | Name         | Added Number Formats

***
