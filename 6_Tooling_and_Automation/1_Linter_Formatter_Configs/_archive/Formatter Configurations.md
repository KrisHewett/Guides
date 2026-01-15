
# ✅ **Linter/Formatter Configurations**

### **PowerShell (VSCode Settings)**

```json
{
    "editor.insertSpaces": true,
    "editor.tabSize": 4,
    "powershell.codeFormatting.useCorrectCasing": true,
    "powershell.codeFormatting.preset": "Custom"
}
```

***

### **Python (PEP 8 via Black or Flake8)**

* **Black** auto-formats to 4 spaces:

```bash
black --line-length 88 .
```

* **Flake8** config:

```ini
[flake8]
indent-size = 4
max-line-length = 88
```

***

### **JavaScript (ESLint)**

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
