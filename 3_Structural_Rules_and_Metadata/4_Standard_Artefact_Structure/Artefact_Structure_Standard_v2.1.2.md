# Artefact Structure Standard

Sponsor: <Kristopher.Hewett@sa.gov.au>

Version: v2.1.2

Revision Date: 2026‑02‑27

Compliance Baseline: MCM v56.1.0

Conforms To Directive: MCM Artefact Structure Standard v2.1.2

SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\4_Standard_Artefact_Structure\Artefact_Structure_Standard_v2.1.2.md

---

## 1. Purpose

Define the mandatory structure, ordering, metadata rules, formatting requirements, and governance boundaries for all
artefacts under the Master Compliance Memory (MCM). Version 2.1.2 applies formatting corrections including aligned,
left‑aligned table structures.

---

## 2. Artefact Structure Requirements

### 2.1 Mandatory Artefact Sections (Fixed Order)

1. Header Metadata Block
2. Purpose
3. Primary Content Sections
4. References
5. Versioning Table

### 2.2 Section and Heading Rules

- Exactly one H1 title is permitted.
- Major sections use `##`; subsections use `###`.
- Section order is mandatory and may not be altered.
- Additional content appears only within Primary Content Sections.
- New mandatory sections require a Major version change.

### 2.3 Artefact–Conversation Boundary

#### 2.3.1 Artefact Content Rules

- Only sections defined in Section 2.1 constitute artefact content.
- Artefacts must not contain commentary, reasoning, diagnostics, validation output, lint results, or placeholders.

#### 2.3.2 Commentary Placement Rules

- Commentary must not appear inside artefacts.
- Commentary must not reuse artefact numbering.
- Commentary must not be stored in SSOT artefact files.

#### 2.3.3 Governance Rules

- Reviewers must confirm artefact purity before SSOT storage.
- Commentary is ephemeral and must not be included in stored artefacts.

---

## 3. Metadata Requirements

### 3.1 Mandatory Metadata Block

The metadata block must follow the H1 and use Blank‑Line Metadata formatting.

Mandatory fields:

- Sponsor: `<email>`
- Version: `Major.Minor.Patch`
- Revision Date: `YYYY‑MM‑DD`
- Compliance Baseline: `MCM vX.Y.Z`
- Conforms To Directive: `<DirectiveName> vX.Y.Z`
- SSOT Path: absolute path or validated URL

### 3.2 Metadata Integrity and Termination Rules

- No content may appear above the H1 title.
- Exactly one blank line must appear between metadata fields.
- Metadata fields must not use list markers.
- `<email>` or `<<email>>` formats permitted.
- SSOT path must match filename and version.
- Metadata must end with a blank line followed by a horizontal rule.
- A blank line is mandatory before the horizontal rule.
- Fenced code blocks are prohibited; use 4‑space indented code.
- Placeholder content prohibited.

---

## 4. Formatting Requirements

### 4.1 Markdownlint Rules

- MD025, MD032, MD035, MD040, MD033, MD060

### 4.2 Formatting Standards

- Maximum line length: 120 characters
- 4‑space indentation; no tabs
- Australian spelling
- No executable code inside tables

---

## 5. Versioning Rules

### 5.1 Versioning Scheme

- Major: structural or behavioural logic changes
- Minor: content additions
- Patch: formatting‑only corrections

### 5.2 Versioning Table Requirements

| Version | Date       | Author                    | Changes                     |
|---------|------------|---------------------------|------------------------------|
| X.Y.Z   | YYYY‑MM‑DD | <Name or Email>           | Summary of changes           |

---

## 6. SSOT Requirements

### 6.1 SSOT Path Requirements

- SSOT path must appear in metadata.
- SSOT path must correspond to a validated location.
- Filename, version, and path must match exactly.

### 6.2 Optional SSOT Storage Guidance Table

| Absolute Path Example                                 | Artefact Name Example | Validation Status Example |
|-------------------------------------------------------|-----------------------|---------------------------|
| C:\Path\To\File.md                                    | ArtifactName.md       | Validated                 |

---

## 7. References

- MCM Directives v56.1.0
- MCM SSOT Register
- ISO 9001:2015 — Documented Information
- Markdownlint Ruleset

---

## Versioning Table

| Version | Date       | Author                         | Changes                                  |
|---------|------------|--------------------------------|-------------------------------------------|
| 2.1.2   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au>  | Aligned all tables; left-aligned columns. |
| 2.1.1   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au>  | Prohibited fenced code blocks.            |
