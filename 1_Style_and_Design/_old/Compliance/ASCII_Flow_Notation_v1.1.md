
# ✅ **ASCII Flow Notation (Revised for MCM Compliance)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.1
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** R:\Data Analysis and Reporting\_Resources\SQU_Workspace\Guides\Notation\ASCII_Flow_Notation_v1.1.md

---

## **Core Principles**

* **Readable at a glance** — diagrams must be interpretable without scrolling or zooming.
* **Minimal symbols** — avoid unnecessary ASCII art complexity.
* **Consistent structure** — same notation across all workflows.
* **Quick to type in plain text** — no reliance on special editors.
* **Accessibility** — text-based diagrams only; provide descriptive captions for screen readers.

---

### **1. Elements**

* **Action/Process:** `[Action Name]`
* **Decision:** `[Question?]`
* **Start/End:** `[START]` and `[END]` (recommended for clarity and audit traceability).
* **Annotations:** Use `#` for inline comments or compliance notes.

---

### **2. Flow Direction**

* **Horizontal:** `→` for sequential steps.
* **Vertical:** `↓` for downward progression.
* **Branching:** Conditions (`YES`, `NO`, etc.) **before the arrow** for clarity.
* **Bidirectional:** Use `<→>` only when absolutely necessary (e.g., retry loops).

---

### **3. Branching Rules**

* Conditions **always uppercase** for visibility.
* Align conditions vertically for clarity.
* Indent nested decisions by **3 spaces** for readability.
* Avoid diagonal arrows — maintain strict horizontal/vertical alignment for audit readability.

---

### **4. Optional Enhancements**

* **Numbered Steps:** Add `(1)`, `(2)` for reference in documentation and cylindrical review checklists.
* **Grouping:** Use `---` to separate major sections or swimlanes.
* **Compliance Tags:** Add `[COMPLIANT]` or `[REQUIRES REVIEW]` inline for audit notes.

---

### ✅ **Final Example (Enhanced)**

```text
[START] → [User Request] → [Risk Assessment]
          ↓
[Is Current Task Sensitive?]
          ↓
    NO  → [Allow Action + Inform User]
    YES → [Can Risk Be Reduced?]
           ↓
       YES → [Offer Redirection or Partial Action]
       NO  → [Block + Explain Why]
[END]
```

---

### ✅ **Quick Rules Summary**

* `[ ]` for steps/questions.
* `→` for horizontal flow, `↓` for vertical.
* Conditions before arrows: `YES → [Next Step]`.
* Indent nested branches by 3 spaces.
* Optional: `[START]` / `[END]`, numbering, comments, compliance tags.

---

### ✅ **Why This Works**

* **Fast to learn** — only 5 core rules.
* **Readable in plain text** — no special rendering required.
* **Easy to convert** — compatible with Mermaid, PlantUML, or graphical flowcharts.
* **Scales well** — supports small processes and complex workflows.
* **Audit-ready** — explicit compliance tags and SSOT references possible.

---

### **Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2025-11-21 | K. Hewett | Initial draft                        |
| 1.1     | 2026-01-14 | K. Hewett | Formatting, compliance tags, and accessibility notes added |

---

### **References**

- **Universal Syntax Guideline v1.5:**
  R:\Data Analysis and Reporting\_Resources\SQU_Workspace\Guides\Syntax Guideline\Universal_Syntax_Guideline_v1.5.md
* **Style & Design Guidelines v1.1:**
  R:\Data Analysis and Reporting\_Resources\SQU_Workspace\Guides\Style and Design\Style_and_Design_Guidelines_v1.1.md

---

✅ **Compliance Notes**
* SSOT path included and cross-linked.
* Accessibility enforced (text-based diagrams only).
* Markdownlint MD035 horizontal rules applied.
* No detail removed unless duplicated elsewhere (justified).
