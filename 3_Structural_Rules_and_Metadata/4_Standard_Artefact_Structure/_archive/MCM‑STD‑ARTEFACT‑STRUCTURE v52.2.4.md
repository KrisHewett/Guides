
# ✅ **MCM‑STD‑ARTEFACT‑STRUCTURE v52.2.4 (Updated Standard)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 52.2.4
**Revision Date:** 2026‑01‑19
**Compliance Baseline:** MCM v52.2
**SSOT Path:** Guides\5_Governance\MCM_Directives\Standards\MCM‑STD‑ARTEFACT‑STRUCTURE_v52.2.4.md

---

## **1. Purpose**

This standard defines the mandatory structure, ordering, metadata, formatting, and compliance requirements for all artefacts governed under the Master Compliance Memory (MCM). Its purpose is to ensure consistency, auditability, clarity of interpretation, and strict adherence to SSOT governance.

---

## **2. Artefact Structure Requirements**

### **2.1 Mandatory Artefact Sections (Fixed Order)**

All artefacts under MCM governance must contain the following sections in this exact order:

1. **Header Metadata Block**
2. **Purpose**
3. **Primary Content Sections**
4. **References**
5. **Versioning Table**

### **2.2 Section Ordering Rules**

- Section order is **strictly mandatory**.
- No additional mandatory sections may be added unless formally ratified via a Major version change.
- Additional content may only appear within **Primary Content Sections**.
- All major sections must use `##`; subsections must use `###`.

---

### **2.3 Boundary Between Artefact Content and Copilot Commentary (Clarification Rule)**

This section formally defines the boundary between canonical artefact content and post‑delivery Copilot commentary.

#### **2.3.1 Artefact Content Rules**

- Only the sections defined in **2.1 Mandatory Artefact Sections** constitute the official artefact.
- No commentary, explanation, diagnostics, or validation text may appear inside an artefact unless explicitly part of its functional content.
- Artefacts must remain free of:
  - internal compliance summaries
  - Copilot validation lists
  - step‑by‑step reasoning
  - trace commentary

These belong outside the artefact.

#### **2.3.2 Copilot Commentary Rules**

- Copilot commentary is **not part of the artefact** and must be clearly separated.
- Commentary may include:
  - lint checks performed
  - structural validation
  - SSOT confirmation
  - naming or formatting enforcement notes
- Commentary must appear **after** the artefact, separated by:
  - a horizontal rule (`---`), and
  - a heading such as *“Post‑Delivery Commentary (Not Part of Artefact)”*
- Commentary must never:
  - use the same numbering scheme as artefact sections
  - appear in any SSOT‑stored artefact
  - be treated as mandatory output

#### **2.3.3 Governance Requirements**

- Commentary is ephemeral and must not be preserved in artefact files.
- It is prohibited to store an artefact containing commentary text.
- Reviewers must validate that no commentary appears within the canonical artefact before SSOT storage.

---

## **3. Metadata Requirements**

### **3.1 Mandatory Metadata Block**

Every artefact must begin with a metadata block containing the following fields in this exact order:

- **Developed by:** `<<name@org>>`
- **Version:** `Major.Minor.Patch`
- **Revision Date:** `YYYY‑MM‑DD`
- **Compliance Baseline:** `MCM vX.Y[.Z]`
- **Conforms To Directive:** `<DirectiveCode> vX.Y.Z`
- **SSOT Path:** Absolute file path or validated URL

### **3.2 Metadata Integrity Rules**

- No content may appear above the metadata block.
- The SSOT path must match the filename and version exactly.
- Placeholder values are prohibited.

---

## **4. Formatting Requirements**

### **4.1 Markdownlint Requirements**

All artefacts must comply with:

- **MD032** — blank lines around blocks
- **MD035** — horizontal rules must be `---`
- **MD040** — fenced code blocks must specify a language

### **4.2 Formatting Rules**

- Maximum line length: **120 characters**
- Indentation: **4 spaces**, no tabs
- British/Australian spelling required
- No code placed inside tables
- No placeholder text (`TBD`, `<insert>`, etc.)

---

## **5. Versioning Rules**

### **5.1 Versioning Scheme**

Versioning follows **Major.Minor.Patch**:

- **Major:** Structural or directive changes
- **Minor:** Content additions or modifications
- **Patch:** Formatting or non‑semantic corrections

### **5.2 Versioning Table Requirements**

All artefacts must include a version table:

| Version | Date       | Author | Changes |
|---------|------------|--------|---------|
| X.Y.Z   | YYYY‑MM‑DD | <Init> | <Summary> |

---

## **6. SSOT Requirements**

### **6.1 SSOT Path Requirements**

- SSOT path must appear in metadata.
- SSOT must correspond to a real, validated storage location.
- SSOT path must match filename and version exactly.

### **6.2 Optional SSOT Storage Guidance Table**

Included only when the artefact has additional storage validation needs.

| Absolute Path | Artefact (validated link) | Validation Status |
|---------------|---------------------------|-------------------|
| `<absolute path>` | `<same path>` | Validated ✅ |

---

## **7. References**

All artefacts must contain a reference section listing:

- Directive(s) used
- Standards applied
- Any foundational governing documents

---

## **8. Versioning (of this Standard)**

| Version | Date       | Author      | Changes |
|---------|------------|-------------|---------|
| 52.2.3  | 2026‑01‑15 | K. Hewett   | Previous version |
| **52.2.4** | **2026‑01‑19** | **K. Hewett** | Added Section 2.3 — Artefact/Commentary Boundary Clarification |
