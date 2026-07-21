# MCM Artefact Structure Standard

Sponsor: <Kristopher.Hewett@sa.gov.au>

Version: v3.0.0

Revision Date: 2026-02-27

Compliance Baseline: MCM v56.2.2

SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\4_Standard_Artefact_Structure\Artefact_Structure_Standard_v3.0.0.md

---

## 1. Purpose

Define the mandatory structure, ordering, metadata rules, formatting requirements, and governance boundaries for all
artefacts under the Master Compliance Memory (MCM).

---

## 2. Artefact Structure Requirements

### 2.1 Mandatory Artefact Sections (Fixed Order)

The following top-level sections must appear in this exact order:

1. Header Metadata Block
2. Purpose
3. Primary Content Sections
4. References
5. Versioning Table

### 2.2 Section and Heading Rules

- The order of the mandatory top-level sections defined in Section 2.1 may not be altered.
- Section names may be altered without changing their structural position.
- Subsections (H3 and below) may be added within their parent top-level section.
- Content within sections may be expanded, updated, or revised.
- Rules within sections may be expanded or refined.
- Additional top-level sections require a Major version change to this standard.
- Exactly one H1 title is permitted.
- Major sections use level 2 headings; subsections use level 3 headings.
- All headings must comply with markdownlint heading rules MD001 through MD005 and MD022.

### 2.3 Artefact-Conservation Boundary

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

- Sponsor: <email>
- Version: Major.Minor.Patch
- Revision Date: YYYY-MM-DD
- Compliance Baseline: MCM vX.Y.Z
- SSOT Path: absolute UNC path

### 3.2 Metadata Integrity and Termination Rules

- No content may appear above the H1 title.
- Metadata fields must not use list markers.
- <email> or <<email>> formats are permitted.
- SSOT path must match filename and version exactly.
- Metadata must end with a blank line followed by a horizontal rule.
- A blank line is mandatory before the horizontal rule.
- Fenced code blocks are prohibited; examples must use 4-space indented code.
- Placeholder content is prohibited.
- All metadata content must be ASCII-only.

---

## 4. Formatting Requirements

### 4.1 Markdownlint Rules (MD001-MD060)

- Artefacts must comply with all markdownlint rules MD001 through MD060 inclusive.
- Headings must have blank lines before and after (MD022).
- Lists must have blank lines before and after (MD032).
- Horizontal rules must use three hyphens and must be surrounded by blank lines (MD035, MD032).
- Inline HTML must not be used except for email addressing (MD033).
- No fenced code blocks may appear inside artefacts (MD040, MD046).

### 4.2 Maximum Line Length (Global)

- The maximum line length is 120 characters for every line in the artefact.
- If a line would exceed 120 characters, split content into one or more continuation lines.
- For tables, apply the table alignment procedure first, then wrap overflowing cells into continuation rows while
  preserving vertical pipe alignment and column structure.

### 4.3 Table Standard (MD060)

- A single table methodology must be used across all artefacts.
- All columns must be aligned.
- All headers and cells must be left-aligned.
- No colons may appear in separator rows.
- Pipes must align vertically across header, separator, and body rows.
- Separator segments must be sized to match or exceed the widest cell in each column.

### 4.4 Table Alignment Procedure (Per Table)

Apply this procedure separately to each table. Do not reuse column widths computed for a different table.

1. Draft the table with all intended rows and columns.
2. Clean and trim: remove leading and trailing spaces inside cells; normalize all non-ASCII characters to ASCII.
3. For this table only, compute the maximum content length for each column across header and all rows.
4. Set the base width for each column to the maximum computed in step 3 for this table only.
5. Rebuild the table:
   - Pad each cell so its content length equals the column base width.
   - Rebuild the separator row so each hyphen segment is at least the column base width.
   - Ensure each row begins and ends with a pipe and that all column pipes align vertically.

### 4.5 General Formatting Standards

- 4-space indentation must be used; tabs are prohibited.
- Australian spelling is required.
- No executable code may appear inside tables.
- All artefact text must be ASCII-only.

---

## 5. Versioning Rules

### 5.1 Versioning Scheme

- Major: structural or behavioural logic changes
- Minor: content additions or updates
- Patch: formatting-only corrections

### 5.2 Versioning Table Requirements

The versioning table must follow the Table Standard and appear at the end of the artefact. If any row would exceed
the global maximum line length, split the overflowing cell content into one or more continuation rows while preserving
column alignment and table structure.

| Version | Date       | Author                        | Changes                                                                    |
|---------|------------|-------------------------------|----------------------------------------------------------------------------|
| 3.0.0   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Major: clarified structural logic; top-level order immutable; names,       |
|         |            |                               | subsections, content, and rules may change or expand.                      |
| 2.2.1   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Patch: ASCII-only enforcement; full lint; table formatting; SSOT hardening.|
| 2.2.0   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Minor: initial table standard; formatting and metadata updates.            |

---

## 6. SSOT Requirements

### 6.1 SSOT Path Requirements

- SSOT path must appear in metadata.
- SSOT path must be an absolute UNC path beginning with double backslash.
- SSOT paths must contain no spaces.
- Only ASCII characters may be used in SSOT paths.
- Filename, version, and path must match exactly.

### 6.2 Optional SSOT Storage Guidance Table

| Absolute Path Example                 | Artefact Name Example | Validation Status Example |
|---------------------------------------|-----------------------|---------------------------|
| C:\Path\To\File.md                    | ArtifactName.md       | Validated                 |

---

## 7. References

- MCM Directives v56.2.2
- MCM SSOT Register
- ISO 9001:2015 Documentation
- Markdownlint Ruleset MD001-MD060
