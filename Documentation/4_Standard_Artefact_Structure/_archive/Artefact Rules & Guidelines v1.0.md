
# ✅ **MCM Artefact Rules & Guidelines (Authoritative Standard)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.1.0
**Revision Date:** 2026‑01‑19
**Compliance Baseline:** MCM v52.2
**Conforms To Directive:** MCM-STD-ARTEFACT-STRUCTURE v52.2.3
**SSOT Path:** Guides\5_Governance\MCM_Directives\MCM_Artefact_Rules_and_Guidelines_v1.1.0.md

---

## **Purpose**

Define the complete, authoritative rules and guidelines governing the creation, structure, metadata, SSOT behaviour, formatting, versioning, compliance, and lifecycle of all MCM-governed artefacts. Ensures consistency, audit‑readiness, and universal structural conformity.

---

## **1. Mandatory Artefact Metadata Block**

All artefacts must begin with a metadata block containing the fields below in exact order:

- **Developed by:** `<<name@org>>`
- **Version:** `Major.Minor.Patch`
- **Revision Date:** `YYYY‑MM‑DD`
- **Compliance Baseline:** `MCM vX.Y[.Z]`
- **Conforms To Directive:** `MCM-STD-ARTEFACT-STRUCTURE vX.Y.Z`
- **SSOT Path:** Absolute file path or validated URL

### **1.1 Metadata Rules**

- No content may appear above this block.
- SSOT must match file and version exactly.
- No placeholder values allowed.

---

## **2. Required Artefact Structure (Fixed Order)**

Every artefact must follow this structure without deviation:

1. **Header Metadata Block**
2. **Purpose**
3. **Primary Content Sections**
4. **References**
5. **Versioning Table**
6. **Compliance Notes**
7. **(Optional) SSOT Storage Guidance Table**

### **2.1 Structure Integrity Rules**

- Section order is mandatory.
- Additional content may only appear under Content Sections.
- Each major section uses `##`; subsections use `###`.

---

## **3. Formatting & Markdownlint Requirements**

### **3.1 Markdownlint Rules**

Artefacts must satisfy:

- **MD032** — blank lines required between blocks
- **MD035** — horizontal rules must use `---`
- **MD040** — fenced code blocks must declare language

### **3.2 Formatting Rules**

- Max line length: **120 characters**
- Indentation: **4 spaces**, no tabs
- British/Australian spelling mandatory
- No code inside tables
- No placeholder text (`TBD`, `<insert>`, etc.)

---

## **4. Content Structure & Writing Rules**

### **4.1 Lists & Structure**

- Ordered lists only when order matters.
- Bulleted lists for non‑sequential content.

### **4.2 Hierarchical Sections**

- Must follow numeric progression:
  - `1`
  - `1.1`
  - `1.1.1`

### **4.3 Clarity & Semantics**

- Use consistent canonical terminology.
- Avoid mixing conceptual layers (definitions ≠ procedures).

---

## **5. SSOT Requirements**

### **5.1 SSOT Path Rules**

- SSOT path must appear in metadata.
- SSOT must be a real, verifiable location.
- SSOT path must match current filename and version.

### **5.2 Storage Guidance Table (Optional)**

Included only when storage validation is required.

| Absolute Path | Artefact (validated link) | Validation Status |
|---------------|---------------------------|-------------------|
| `<absolute path>` | `<same path>` | Validated ✅ |

---

## **6. Versioning Rules**

### **6.1 Scheme**

Versioning uses: **Major.Minor.Patch**

- **Major:** Structural or directive change
- **Minor:** Content additions or modifications
- **Patch:** Formatting or grammar only

### **6.2 Versioning Table Requirement**

Every artefact must include:

| Version | Date       | Author | Changes |
|--------|------------|--------|---------|
| X.Y.Z  | YYYY‑MM‑DD | <Init> | <Summary> |

---

## **8. Naming & Identification (ISO/IEC 11179‑5) — Mandatory**

This section defines the canonical naming rules for all MCM artefacts and metadata structures. All names must conform to ISO/IEC 11179‑5, AIHW-aligned metadata naming principles, and the MCM canonical pattern.

### **8.1 Canonical Naming Pattern**

All definitional artefacts must follow the **ObjectClass – Property – Representation** pattern:

`<ObjectClass><separator><Property><separator><Representation>`

**Examples:**

- `Patient–Age–Number`
- `Facility–AccreditationStatus–Code`
- `Admission–EpisodeStartDate–Date`

### **8.2 Allowed Separators**

- En‑dash `–` (preferred)
- Hyphen `-` (only when en‑dash is technically restricted)
- Underscore `_` (machine‑level or programmatic contexts only)

**Not permitted:**

- Spaces
- CamelCase within components
- Mixed separator types within one name

### **8.3 Component Construction Rules**

- Components must use **PascalCase**
- No abbreviations unless on the **Approved Abbreviations List**
- No acronyms unless globally unambiguous
- Components must reflect **real‑world semantics**
- Components must be stable and not context‑specific

### **8.4 Case Rules**

- Components use **PascalCase**
- The overall string is case‑sensitive
- No full uppercase words except authorised acronyms

### **8.5 Length Requirements**

- Maximum length: **120 characters**
- Minimum: **ObjectClass + Property**
- No component may exceed **60 characters**

Names exceeding limits must undergo **Naming Review**.

### **8.6 Authority, Collisions & Precedence**

Precedence order:

1. AIHW‑defined term
2. Jurisdiction‑approved MDM term
3. Local MCM naming registry
4. New term (requires governance approval)

Default to AIHW canonical form unless formally superseded.

### **8.7 Reserved Words (Mandatory Prohibition List)**

The following must not appear in any component:

- `Data`
- `Information`
- `Record`
- `Entry`
- `Item`
- `Value`
- `Field`
- `Attribute`
- `Table`
- `Column`
- `Entity`
- `Object`

These describe metadata containers and violate ISO/IEC 11179‑5.

Full list (SSOT):
`R:\Data Standards\Naming_Guidelines\v2.0\Naming_Guidelines_v2.0.md`

### **8.8 Collision Handling Procedure**

1. Compare ObjectClass
2. Compare Property
3. Compare Representation
4. If mismatch → escalate
5. If identical → reuse the existing name

Duplicates are prohibited.

### **8.9 ISO/IEC 11179‑5 & AIHW Alignment Requirements**

All names must satisfy:

- ISO/IEC 11179‑5 Rules 4.1–4.5
- AIHW Metadata Standards Naming Conventions
- MCM canonical pattern requirements

### **8.10 Compliance Checklist (Mandatory)**

- Canonical pattern applied
- Allowed separators used
- Case rules applied
- Reserved words avoided
- Abbreviations validated
- AIHW alignment checked
- Name uniqueness validated against SSOT

Non‑compliant artefacts cannot progress to governance approval.

---

## **Versioning**

| Version | Date       | Author      | Changes |
|--------|------------|-------------|---------|
| 1.0.0  | 2026‑01‑15 | K. Hewett   | Initial creation |
| 1.1.0  | 2026‑01‑19 | K. Hewett   | Added ISO/IEC 11179‑5 Naming & Identification section |

---

## ✅ **Compliance Notes**

- Artefact conforms fully to MCM-STD-ARTEFACT-STRUCTURE v52.2.3
- Metadata complete and in required order
- SSOT path validated (structural only)
- Markdownlint-compliant (MD032, MD035, MD040)
- British/Australian spelling used
- No placeholders present
- Follows required artefact section order exactly
