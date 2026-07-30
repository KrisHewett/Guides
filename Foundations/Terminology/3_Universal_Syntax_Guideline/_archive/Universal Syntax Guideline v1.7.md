# **Universal Syntax Guideline**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>  
**Version:** 1.7  
**Revision Date:** 2026-05-01  

---

## **Purpose**

Defines standardised syntax, style, formatting, and **text normalisation rules** across multiple languages and documentation artefacts to ensure **consistency**, **readability**, **maintainability**, and **audit compliance**, while explicitly reversing common editor‑ and copy‑paste‑introduced artefacts.

---

## **Scope**

Applies to:

- Source code
- Logs and outputs
- Markdown documentation
- Prose within technical artefacts

Does **not** attempt to normalise language, meaning, grammar, spelling, or domain‑specific notation.

---

## **1. Indentation**

- Always use **4 spaces per level**; **never use tabs**.
- Enforce via linter configuration.

---

## **2. Naming Conventions**

- **PascalCase** → Classes, types, enums  
- **camelCase** → Functions, methods, properties, local variables  
- **UPPERCASE** → Constants  
- Avoid ambiguous abbreviations; prefer descriptive names.

---

## **3. Braces and Blocks**

- Always use `{}` for loops and conditionals.
- Opening brace on **same line**; closing brace on **its own line**.
- No single-line implicit blocks.



---

## **4. Whitespace and Line Structure**

- No extra spaces inside parentheses.
- Space after commas, colons, semicolons.
- No trailing whitespace.
- One blank line between logical sections.
- Remove copy‑pasted fake line breaks within prose paragraphs.
- Preserve true paragraph boundaries, headings, list items, and fenced code blocks.

---

## **5. Comments**

- Clear, concise comments for **purpose** and **complex logic**.
- Use `TODO` and `FIXME` tags consistently.
- Avoid redundant comments.

---

## **6. Strings and Text Normalisation**

### **6.1 Canonical Character Replacements**

- `’`, `‘` → `'`
- `“`, `”` → `"`
- `–`, `—` → `-`
- `…` → `...`
- Non‑breaking space → regular space

Replacements are one‑to‑one and must not collapse adjacent characters.

---

### **6.2 Structural Noise Removal**

Remove the following when present in prose:

- Zero‑width space  
- Zero‑width joiner  
- Zero‑width non‑joiner  
- Byte Order Mark (BOM)  
- Soft hyphen  

Not applied inside code blocks or literal data.

---

### **6.3 Explicit Exclusions**

- Accented characters  
- Non‑ASCII mathematical or symbolic notation  
- Domain‑specific symbols  

These must not be modified.

---

## **7. Error Handling**

- Always use `try/catch` or equivalent.
- Log stack traces.
- Never expose sensitive data in error messages.

---

## **8. Output**

- No emojis.
- Logs must include **timestamps**, **context**, and **severity level**.
- Format:  
  `[YYYY-MM-DD hh:mm:ss] [LEVEL] Message`

### **8.1 Notes on Special Characters in Documentation (Non‑Code)**

- Markdown tables may misalign when using certain Unicode characters.
- Characters such as ≤, ≥, ÷, and & may be auto‑escaped by editors.
- Browser-based editors may rewrite characters inside Markdown inputs.
- For documentation tables, ASCII equivalents (`<=`, `>=`, `/`, `and`) are recommended.

> Informational only — not enforced as coding rules.

### **Documentation Code Block Fencing Convention**

To prevent rendering breaks, fence collisions, and ambiguity between what is inside versus outside an artefact, the following code block fencing convention applies.

This convention exists to avoid confusion between authored content and presented content, and to ensure that literal fidelity is preserved.

#### **Authoring Rule**

- To avoid ambiguity about what is within versus what is outside an artefact, authoritative content **must be wrapped in triple backticks (` ``` `)**.
- Author‑written content may contain backticks freely.
- Internal backticks are part of the artefact and must remain unchanged.

#### **Presentation Rule (AI / Tooling)**

- When presenting authored content, artefacts, examples, or desired output:
  - Wrap the presentation using **triple tildes (` ~~~ `)**.
  - Treat the content as literal.
  - Do not modify, escape, reinterpret, or normalise any internal backticks.

#### **Role Separation**

- **User**: Wrap authoritative content blocks in **triple backticks**.
- **AI / Tooling**: Wrap presented artefacts in **triple tildes**.

This separation is intentional, mechanical, and not stylistic.

#### **Rationale**

- Prevents premature fence termination during rendering.
- Preserves character‑level fidelity of canonical artefacts.
- Removes ambiguity about content boundaries.
- Avoids hidden escaping, structural noise, or heuristic rewriting.

#### **Notes**

- Quad‑backtick fences may be used where tilde fences are unsupported.
- Escaping backticks inside artefacts is discouraged.
- This convention applies to documentation, specifications, and Markdown‑about‑Markdown scenarios.

---

## **9. Structure**

Order of sections:

1. **Header**  
2. **Prerequisites**  
3. **Configuration**  
4. **Main Logic**  
5. **Error Handling**  
6. **Output**

---

## **10. Style**

- Curly braces on same line.
- Prefer arrow functions where supported.
- Maximum line length: **120 characters**.
- No trailing commas unless language requires.

---

## **11. Lists and Bullets**

- All bullet symbols are normalised to `-`.
- Only one bullet glyph is permitted.
- Hierarchy and distinction expressed using:
  - indentation  
  - and/or blank lines between groups
- Symbol variation must not encode meaning.

---

## **12. Preferences**

- New line: `\n`
- Blank line marker: `[BLANK]`
- Group separator: `---`

---

## **13. Glob Pattern Syntax**

```text
/      = path separator
*      = zero or more chars
?      = one char
**     = any number of segments
```

---

## **14. DateTime Standards**

- TimeZone: `(UTC+09:30) Adelaide`
- Preferred format: `YYYY-MM-DDThh:mm`
- Use ISO 8601.

---

## **15. Number Formats**

- Number: `#,##0_ ;[Red]-#,##0`
- Currency: `$#,##0;[Red]-$#,##0`
- Percentage: `0%`, `0.00%`
- Fractions: `# ??/100`

---

## **References**

- **Style & Design Guidelines v1.1**  
  <https://github.com/KrisHewett/Guides/Style_and_Design/Style_and_Design_Guidelines_v1.1.md>
- **Linter & Formatter Configurations v1.1**  
  <https://github.com/KrisHewett/Guides/Linter_Formatter_Configs/Linter_Formatter_Configs_v1.1.md>
