# MCM Artefact Structure Standard

Sponsor: <Kristopher.Hewett@sa.gov.au>

Version: v2.2.0

Revision Date: 2026-02-27

Compliance Baseline: MCM v56.2.0

Conforms To Directive: MCM Artefact Structure Standard v2.2.0

SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\4_Standard_Artefact_Structure\Artefact_Structure_Standard_v2.2.0.md

---

## 1. Purpose

Define the mandatory structure, ordering, metadata rules, formatting requirements, and governance boundaries for all
artefacts under the Master Compliance Memory (MCM). Version 2.2.0 expands formatting controls to require full
Markdownlint MD001-MD060 compliance, codifies the MD060 table alignment standard, hardens SSOT path rules, prohibits
fenced code blocks, and formalises the Zoom-out → Zoom-in discipline and ambiguity hard-stop rule.

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
- Additional sections may not be added except by Major version change.
- All headings must comply with Markdownlint heading rules (MD001-MD005, MD022).

### 2.3 Artefact-Conversation Boundary

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

The metadata block must follow the H1 and use Blank-Line Metadata formatting, where each metadata field is separated
from the next by exactly one blank line.

Mandatory fields:

- Sponsor: `<email>`
- Version: `Major.Minor.Patch`
- Revision Date: `YYYY-MM-DD`
- Compliance Baseline: `MCM vX.Y.Z`
- Conforms To Directive: `<DirectiveName> vX.Y.Z`
- SSOT Path: absolute UNC path

### 3.2 Metadata Integrity and Termination Rules

- No content may appear above the H1 title.
- Metadata fields must not use list markers.
- `<email>` or `<<email>>` formats are permitted.
- SSOT path must match filename and version exactly.
- Metadata must end with a blank line followed by a horizontal rule.
- A blank line is mandatory before the horizontal rule.
- Fenced code blocks are prohibited; examples must use 4-space indented code.
- Placeholder content is prohibited.

---

## 4. Formatting Requirements

### 4.1 Markdownlint Rules (MD001-MD060)

- Artefacts must comply with all markdownlint rules MD001 through MD060 inclusive.
- Headings must have a blank line before and after (MD022).
- Lists must have a blank line before and after (MD032).
- Horizontal rules must use `---` and must be surrounded by blank lines (MD035, MD032).
- Inline HTML must not be used except for email addressing (MD033).
- Maximum line length is 120 characters except within tables.
- No fenced code blocks may appear inside artefacts (MD040, MD046).

### 4.2 MD060 Table Standard

- A single table methodology must be used across all artefacts.
- Columns must be aligned.
- All columns and all cells must be left-aligned.
- No colons may appear in separator rows.
- Pipes must align vertically across header, separator, and body rows.
- Separator row segments must equal or exceed the width of the widest cell in each column.
- Multiline rows must maintain alignment for continuation lines.

### 4.3 Formatting Standards

- 4-space indentation must be used; tabs are prohibited.
- Australian spelling is required.
- No executable code may appear inside tables.

---

## 5. Versioning Rules

### 5.1 Versioning Scheme

- Major: structural or behavioural logic changes
- Minor: content additions or updates
- Patch: formatting-only corrections

### 5.2 Versioning Table Requirements

The versioning table must follow the MD060 table standard and appear at the end of the artefact.

| Version | Date       | Author                    | Changes                   |
|---------|------------|---------------------------|---------------------------|
| X.Y.Z   | YYYY-MM-DD | <Name or Email>           | Summary of changes        |

---

## 6. SSOT Requirements

### 6.1 SSOT Path Requirements

- SSOT path must appear in metadata.
- SSOT path must be an absolute UNC path beginning with `\\`.
- SSOT paths must contain no spaces.
- Only ASCII characters may be used in SSOT paths.
- Filename, version, and path must match exactly.

### 6.2 Optional SSOT Storage Guidance Table

| Absolute Path Example                                 | Artefact Name Example | Validation Status Example |
|-------------------------------------------------------|-----------------------|---------------------------|
| C:\Path\To\File.md                                    | ArtifactName.md       | Validated                 |

---

## 7. References

- MCM Directives v56.2.0
- MCM SSOT Register
- ISO 9001:2015 - Documented Information
- Markdownlint Ruleset (MD001-MD060)

---

## Versioning Table

| Version | Date       | Author                        | Changes                                                                                 |
|---------|------------|-------------------------------|-----------------------------------------------------------------------------------------|
| 2.2.0   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Minor: Added MD001-MD060 requirement; codified MD060 table standard; SSOT hardening;    |
|         |            |                               | prohibited fenced code; Zoom-out → Zoom-in; ambiguity hard-stop rule.                   |
| 2.1.2   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Aligned tables; left-aligned columns.                                                   |
| 2.1.1   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Prohibited fenced code blocks.                                                          |
