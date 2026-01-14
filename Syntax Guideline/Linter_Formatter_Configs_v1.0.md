
# **Linter-Formatter Configurations (Universal Syntax Guideline)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.0
**Revision Date:** 2026-01-14

---

> This separate document provides **configuration files and settings** for each language, matching the numbering used in the Language-specific Examples:
> **1. Python**, **2. JavaScript**, **3. PowerShell**, **4. C Languages (C/C++/C#)**, **5. DAX**, **6. Power Query (M)**, **7. SQL**.
> All configurations enforce **4-space indentation**, **maximum line length of 120 characters**, **LF (`\n`) line endings**, and **plain ASCII output** per Syntax Guidelines.

---

## **1. Python – Black, Flake8, isort**

### **Black**

```bash
black --line-length 120 --skip-string-normalization .
```

### **Flake8**

```ini
[flake8]
max-line-length = 120
indent-size = 4
extend-ignore = E203, W503
exclude = .git,__pycache__,.venv,build,dist
```

### **isort**

```ini
[settings]
profile = black
line_length = 120
indent = "    "
multi_line_output = 3
include_trailing_comma = true
force_grid_wrap = 0
use_parentheses = true
```

### **EditorConfig (Python baseline)**

```ini
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true

[*.py]
indent_style = space
indent_size = 4
max_line_length = 120
```

---

## **2. JavaScript / TypeScript – ESLint, Prettier**

### **ESLint**

```json
{
  "env": { "es2021": true, "node": true, "browser": true },
  "parserOptions": { "ecmaVersion": 12, "sourceType": "module" },
  "rules": {
    "indent": ["error", 4],
    "quotes": ["error", "double"],
    "semi": ["error", "always"],
    "max-len": ["error", { "code": 120, "ignoreUrls": true }],
    "no-trailing-spaces": ["error"],
    "eol-last": ["error", "always"]
  }
}
```

### **Prettier**

```json
{
  "printWidth": 120,
  "tabWidth": 4,
  "useTabs": false,
  "singleQuote": false,
  "semi": true,
  "endOfLine": "lf"
}
```

### **EditorConfig (JS/TS baseline)**

```ini
[*.{js,jsx,ts,tsx}]
indent_style = space
indent_size = 4
max_line_length = 120
end_of_line = lf
```

---

## **3. PowerShell – PSSA (ScriptAnalyzer), VS Code**

### **PSScriptAnalyzer (PowerShell)**
>
> Save as `PSScriptAnalyzerSettings.psd1`.

```powershell
@{
    ExcludeRules = @()
    IncludeRules = @(
        'PSPlaceOpenBrace', 'PSPlaceCloseBrace', 'PSUseConsistentIndentation',
        'PSAvoidUsingWriteHost', 'PSUseCorrectCasing', 'PSAvoidTrailingWhitespace'
    )
    Rules = @{
        PSUseConsistentIndentation = @{
            Enable         = $true
            IndentationSize = 4
            Kind            = 'space'
        }
    }
}
```

### **VS Code Settings (PowerShell)**

```json
{
  "editor.insertSpaces": true,
  "editor.tabSize": 4,
  "files.eol": "\n",
  "files.trimTrailingWhitespace": true,
  "powershell.codeFormatting.useCorrectCasing": true,
  "powershell.codeFormatting.preset": "Custom",
  "powershell.integratedConsole.showOnStartup": false
}
```

---

## **4. C Languages – clang-format (C/C++), .editorconfig & dotnet-format (C#)**

### **clang-format (C / C++)**

```yaml
BasedOnStyle: LLVM
IndentWidth: 4
TabWidth: 4
UseTab: Never
ColumnLimit: 120
BreakBeforeBraces: Attach
SpaceBeforeParens: ControlStatements
AllowShortIfStatementsOnASingleLine: false
AllowShortFunctionsOnASingleLine: None
```

### **EditorConfig (C#)**

```ini
[*.cs]
indent_style = space
indent_size = 4
max_line_length = 120
end_of_line = lf

# C# code-style and formatting
dotnet_style_qualification_for_field = false:suggestion
dotnet_style_qualification_for_property = false:suggestion
dotnet_style_qualification_for_method = false:suggestion
csharp_new_line_before_open_brace = all
csharp_prefer_braces = true:suggestion
csharp_indent_case_contents = true
```

### **dotnet-format (C#) – command**

```bash
dotnet format --severity info
```

---

## **5. DAX – Best Practice Analyzer (Tabular Editor) & Conventions**

> DAX lacks a universal linter; use **Tabular Editor Best Practice Analyzer** rules and consistent formatting conventions.

### **Best Practice Analyzer Rules (excerpt JSON)**

```json
{
  "rules": [
    {
      "id": "DAX-Name-PascalCase",
      "category": "Naming",
      "appliesTo": "Measure",
      "expression": "not(IsMatch(Name, '^[A-Z][A-Za-z0-9]*$'))",
      "severity": "Warning",
      "fix": "Rename to PascalCase"
    },
    {
      "id": "DAX-Format-Percentage",
      "category": "Formatting",
      "appliesTo": "Measure",
      "expression": "FormatString = null and Contains(DAXExpression, '%')",
      "severity": "Info",
      "fix": "Set FormatString to '0.00%'"
    }
  ]
}
```

### **DAX Formatting Guidance (README)**

```text
- Indentation: 4 spaces
- Place function arguments on new lines for complex measures
- Use UPPERCASE for built-ins (SUM, CALCULATE), PascalCase for measure names
- Keep lines ≤120 characters; break with line continuation where needed
```

---

## **6. Power Query (M) – VS Code Settings & Conventions**

### **VS Code Settings (Power Query M)**

```json
{
  "editor.insertSpaces": true,
  "editor.tabSize": 4,
  "files.eol": "\n",
  "files.trimTrailingWhitespace": true,
  "[powerquery]": {
    "editor.wordWrapColumn": 120,
    "editor.wordWrap": "bounded"
  }
}
```

### **Formatting Conventions (README)**

```text
- Indentation: 4 spaces
- One step per line; use descriptive names: #"Filtered Rows", #"Expanded Columns"
- Keep each let-binding ≤120 chars; split long expressions across lines
```

---

## **7. SQL – sqlfluff**

### **sqlfluff Configuration (ANSI/Postgres profile)**

```ini
[sqlfluff]
dialect = postgres
exclude_rules = L009
max_line_length = 120

[sqlfluff:rules]
indent_unit = space
tab_space_size = 4
```

### **EditorConfig (SQL)**

```ini
[*.sql]
indent_style = space
indent_size = 4
max_line_length = 120
end_of_line = lf
insert_final_newline = true
```

---

## **SSOT Storage Guidance (MCM v51)**

> Save these configuration files using **full absolute paths** per SSOT directives.

```text
\\Settings\\MCM\\v51\\configs\\python\\pyproject.toml
\\Settings\\MCM\\v51\\configs\\python\\setup.cfg
\\Settings\\MCM\\v51\\configs\\javascript\\.eslintrc.json
\\Settings\\MCM\\v51\\configs\\javascript\\.prettierrc
\\Settings\\MCM\\v51\\configs\\powershell\\PSScriptAnalyzerSettings.psd1
\\Settings\\MCM\\v51\\configs\\powershell\\vscode_settings.json
\\Settings\\MCM\\v51\\configs\\c_cpp\\clang-format.yaml
\\Settings\\MCM\\v51\\configs\\csharp\\.editorconfig
\\Settings\\MCM\\v51\\configs\\dax\\BestPracticeAnalyzer.rules.json
\\Settings\\MCM\\v51\\configs\\powerquery\\vscode_settings.json
\\Settings\\MCM\\v51\\configs\\sql\\.sqlfluff
\\Settings\\MCM\\v51\\configs\\shared\\.editorconfig
```

---

## **15. Versioning**

| Version | Date       | Author    | Changes                                           |
| ------- | ---------- | --------- | ------------------------------------------------- |
| 1.0     | 2026-01-14 | K. Hewett | Initial linter–formatter configurations document  |
| 1.1     | 2026-01-14 | K. Hewett | Refinements, added SSOT storage guidance          |

---
