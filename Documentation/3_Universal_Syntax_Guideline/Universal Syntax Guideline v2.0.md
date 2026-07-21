# **Universal Syntax Guideline**

- **Developed by:** <<Kristopher.Hewett@sa.gov.au>>  
- **Version:** 1.8
- **Revision Date:** 2026-05-01  

Defines standardised syntax, style, formatting, and **text normalisation rules** across multiple languages and documentation.

**Applies to:**
- Source code
- Logs and outputs
- Markdown documentation
- Prose within technical artefacts

> This guideline does **not** attempt to normalise language, meaning, grammar, spelling, or domain‑specific notation.

---

## **Indentation**

- Always use **4 spaces per level**.
- **Tabs are prohibited**.
- Enforce via linter or formatter configuration.

---

## **Naming Conventions**

- **PascalCase** → Classes, types, enums  
- **camelCase** → Functions, methods, properties, local variables  
- **UPPERCASE** → Constants  

Additional rules:

- Avoid ambiguous abbreviations.
- Prefer descriptive, intention‑revealing names.

---

## **Braces and Blocks**

- Always use `{}` for loops and conditionals.
- Opening brace on the **same line** as the statement.
- Closing brace on **its own line**.
- Single‑line implicit blocks are not permitted.

---

## **Whitespace and Line Structure**

- No extra spaces inside parentheses.
- Insert a space after commas, colons, and semicolons.
- No trailing whitespace.
- Exactly one blank line between logical sections.
- Remove copy‑pasted artificial line breaks within prose paragraphs.
- Preserve true structural boundaries:
  - Paragraphs
  - Headings
  - List items
  - Fenced code blocks

---

## **Comments**

- Use comments to explain **purpose** and **non‑obvious logic**.
- Apply `TODO` and `FIXME` tags consistently.
- Avoid redundant or self‑evident comments.

---

## **Strings and Text Normalisation**

### **Canonical Character Replacements**

Apply the following one‑to‑one replacements:

- `’`, `‘` → `'`
- `“`, `”` → `"`
- `–`, `—` → `-`
- `…` → `...`
- Non‑breaking space → regular space

Replacements must not collapse, reorder, or merge adjacent characters.

---

### **Structural Noise Removal**

Remove the following when present in prose:

- Zero‑width space  
- Zero‑width joiner  
- Zero‑width non‑joiner  
- Byte Order Mark (BOM)  
- Soft hyphen  

These rules do **not** apply inside code blocks or literal data.

---

### **Explicit Exclusions**

The following must **not** be modified:

- Accented characters  
- Non‑ASCII mathematical or symbolic notation  
- Domain‑specific symbols  

---

## **Error Handling**

- Always use `try/catch` or language‑equivalent mechanisms.
- Log stack traces where available.
- Never expose sensitive data in error messages.

---

## **Output**

- Emojis are not permitted.
- Logs must include:
  - **Timestamp**
  - **Context**
  - **Severity level**

Standard log format:

```
[YYYY-MM-DD hh:mm:ss] [LEVEL] Message
```

---

### **Notes on Special Characters in Documentation (Non‑Code)**

- Markdown tables may misalign when certain Unicode characters are used.
- Characters such as ≤, ≥, ÷, and `&` may be auto‑escaped by editors.
- Browser‑based editors may rewrite characters inside Markdown inputs.
- For documentation tables, ASCII equivalents (`<=`, `>=`, `/`, `and`) are recommended.

> Informational only — not enforced as coding rules.

---

## **Documentation Code Block Fencing Convention**

This convention exists to prevent rendering breaks, fence collisions, and ambiguity between authored content and presented content, while preserving literal fidelity.

### **Authoring Rule**

- Authoritative content **must be wrapped in triple backticks (` ``` `)**.
- Author‑written content may contain backticks freely.
- Internal backticks are part of the artefact and must remain unchanged.

---

### **Presentation Rule (AI / Tooling)**

When presenting authored content, artefacts, examples, or desired output:

- Wrap the presentation using **triple tildes (` ~~~ `)**.
- Treat all content as literal.
- Do not modify, escape, reinterpret, or normalise internal backticks.

---

### **Role Separation**

- **User**: Wrap authoritative content blocks in **triple backticks**.
- **AI / Tooling**: Wrap presented artefacts in **triple tildes**.

This separation is intentional, mechanical, and non‑stylistic.

---

### **Rationale**

- Prevents premature fence termination during rendering.
- Preserves character‑level fidelity.
- Removes ambiguity about content boundaries.
- Avoids hidden escaping, structural noise, or heuristic rewriting.

---

### **Notes**

- Quad‑backtick fences may be used where tilde fences are unsupported.
- Escaping backticks inside artefacts is discouraged.
- Applies to documentation, specifications, and Markdown‑about‑Markdown scenarios.

---

## **Structure**

Prescribed section order:

1. **Header**  
2. **Prerequisites**  
3. **Configuration**  
4. **Main Logic**  
5. **Error Handling**  
6. **Output**

---

## **Style**

- Curly braces on the same line.
- Prefer arrow functions where supported.
- Maximum line length: **120 characters**.
- No trailing commas unless required by the language.

---

## **Lists and Bullets**

- All bullet symbols are normalised to `-`.
- Only one bullet glyph is permitted.
- Hierarchy is expressed using:
  - indentation, and/or  
  - blank lines between groups
- Symbol variation must not encode meaning.

---

## **Preferences**

- New line: `\n`
- Blank line marker: `[BLANK]`
- Group separator: `---`

---

## **Glob Pattern Syntax**

```text
/      = path separator
*      = zero or more characters
?      = exactly one character
**     = any number of path segments
```

---

## **DateTime Standards**

- Time zone: `(UTC+09:30) Adelaide`
- Preferred format: `YYYY-MM-DDThh:mm`
- Use ISO 8601.

---

## **Number Formats**

- Number: `#,##0_ ;[Red]-#,##0`
- Currency: `$#,##0;[Red]-$#,##0`
- Percentage: `0%`, `0.00%`
- Fractions: `# ??/100`

---
