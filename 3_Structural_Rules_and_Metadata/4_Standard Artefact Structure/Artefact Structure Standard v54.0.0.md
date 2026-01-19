
# MCM Artefact Structure Standard v54.0.0

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: v54.0.0
Revision Date: 2026‑01‑19
Compliance Baseline: MCM v54.0.0
Conforms To Directive: MCM Directives v54.0.0
SSOT Path: \\MCM\Standards\MCM_Artefact_Structure_Standard_v54.0.0.md

---

## 1. Purpose

Define the mandatory structure, ordering, metadata rules, formatting requirements, and governance boundaries for all
artefacts under the Master Compliance Memory (MCM). Ensure structural consistency, auditability, SSOT integrity, and
behavioural correctness across all artefact types.

---

## 2. Artefact Structure Requirements

### 2.1 Mandatory Artefact Sections (Fixed Order)

All MCM-governed artefacts must include the following sections in this exact order:

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
- New mandatory sections require a Major version change to this standard.

### 2.3 Artefact–Conversation Boundary

#### 2.3.1 Artefact Content Rules

- Only sections defined in Section 2.1 constitute official artefact content.
- Artefacts must not contain:
  - commentary
  - reasoning or diagnostics
  - validation output
  - lint results
  - placeholders

#### 2.3.2 Commentary Location Rules

- Commentary is excluded from artefacts.
- Commentary must not reuse artefact numbering.
- Commentary must not be stored in SSOT artefact files.

#### 2.3.3 Governance Rules

- Reviewers must confirm artefact purity before SSOT storage.
- Commentary is ephemeral and must not be included in stored artefacts.

---

## 3. Metadata Requirements

### 3.1 Mandatory Metadata Block

The metadata block must follow the H1 title and include:

- Developed by: `<<name@domain>>`
- Version: `Major.Minor.Patch`
- Revision Date: `YYYY‑MM‑DD`
- Compliance Baseline: `MCM vX.Y.Z`
- Conforms To Directive: `<DirectiveCode> vX.Y.Z`
- SSOT Path: Absolute path or validated URL

### 3.2 Metadata Integrity Rules

- No content may appear above the H1 title.
- Only a blank line may appear between the H1 and metadata block.
- SSOT path must match filename and version exactly.
- Placeholder content is prohibited.

---

## 4. Formatting Requirements

### 4.1 Markdownlint Rules

Artefacts must comply with:

- MD025 — single H1
- MD032 — blank lines around blocks
- MD035 — horizontal rules must use `---`
- MD040 — code blocks must specify a language
- MD033 — inline HTML forbidden
- MD060 — table columns must be aligned

### 4.2 Formatting Rules

- Maximum line length: 120 characters
- 4-space indentation, no tabs
- British/Australian spelling
- No executable code inside tables
- No placeholder text

---

## 5. Versioning Rules

### 5.1 Versioning Scheme

Semantic versioning:

- Major — structural or behavioural logic changes
- Minor — content additions or updates
- Patch — formatting-only corrections

### 5.2 Versioning Table Requirements

| Version | Date       | Author    | Changes                                      |
|---------|------------|-----------|----------------------------------------------|
| X.Y.Z   | YYYY‑MM‑DD | <<Init>>  | Summary of changes                           |

---

## 6. SSOT Requirements

### 6.1 SSOT Path Requirements

- SSOT path must appear in metadata.
- SSOT path must correspond to a validated location.
- Filename, version, and path must match exactly.

### 6.2 Optional SSOT Storage Guidance Table

This table may be included only when explicitly allowed by the artefact structure *and* explicitly requested.

Example:

| Absolute Path Example          | Artefact Name Example | Validation Status Example |
|--------------------------------|------------------------|----------------------------|
| C:\Path\To\Artefact.md         | Artefact.md            | Validated                  |

---

## 7. References

Artefacts must list:

- Directives applied
- Standards followed
- Relevant governance documents

---

## 8. Versioning Table

| Version | Date       | Author    | Changes                                                              |
|---------|------------|-----------|----------------------------------------------------------------------|
| 54.0.0  | 2026‑01‑19 | K. Hewett | Harmonised to MCM v54.0.0; updated naming and structural alignment   |
| 53.0.0  | 2026‑01‑19 | K. Hewett | Previous standard revision under v53                                 |
