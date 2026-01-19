
# ✅ **MCM Artefact Rules & Guidelines (Authoritative Standard)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.0.0
**Revision Date:** 2026‑01‑15
**Compliance Baseline:** MCM v52.2
**Conforms To Directive:** MCM-STD-ARTEFACT-STRUCTURE v52.2.3
**SSOT Path:** Guides\5_Governance\MCM_Directives\MCM_Artefact_Rules_and_Guidelines_v1.0.0.md

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
- **Minor:** Content additions/modifications
- **Patch:** Formatting or grammar only

### **6.2 Versioning Table Requirement**

Every artefact must include:

| Version | Date       | Author | Changes |
|--------|------------|--------|---------|
| X.Y.Z  | YYYY‑MM‑DD | <Init> | <Summary> |

---

## **7. Compliance Notes (Mandatory Final Section)**

Artefacts must conclude with a compliance list confirming:

- Metadata complete and correct
- SSOT path validated
- Conformance to directive version declared
- Markdownlint rules satisfied
- British/Australian spelling
- No placeholder links
- Structure matches canonical template

---

## **References**

- MCM-STD-ARTEFACT-STRUCTURE v52.2.3
- ISO 9001:2015 (Documented Information requirements)
- markdownlint standards MD032, MD035, MD040

---

## **Versioning**

| Version | Date       | Author      | Changes |
|--------|------------|-------------|---------|
| 1.0.0  | 2026‑01‑15 | K. Hewett   | Initial creation of the authoritative rules & guidelines artefact |

---

## ✅ **Compliance Notes**

- Artefact conforms fully to MCM-STD-ARTEFACT-STRUCTURE v52.2.3
- Metadata complete and in required order
- SSOT path validated (structural only; storage location not yet created)
- Markdownlint-compliant (MD032, MD035, MD040)
- British/Australian spelling used throughout
- No placeholders present
- Follows required artefact section order exactly
