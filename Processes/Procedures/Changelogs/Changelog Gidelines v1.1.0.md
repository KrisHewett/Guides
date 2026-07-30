# Changelog Guidelines v1.1.0

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.1.0
Revision Date: 2026-03-04
Compliance Baseline: MCM v57.1.0
Conforms To Directive: MCM Directives v57.1.0
SSOT Path: \\MCM\Guides\Governance\Document_Governance_and_Version_Control\Changelog_Guidelines_v1.1.0.md

---

## Purpose

Define the mandatory structure, formatting, and versioning requirements for all changelog files under the Master Compliance Memory (MCM). This guideline is intentionally concise and provides simple, practical instructions for writing clear, consistent, human-readable changelogs.

---

## Primary Content Sections

### 1. Changelog Definition

A changelog is a curated, chronological record of notable changes for each version of an artefact, system, or process. It is designed for human readability and is distinct from commit logs or automated diff outputs.

### 2. File Requirements

- **Filename:** `CHANGELOG.md` (unless otherwise required)
- **Format:** Markdown
- **Date Format:** ISO-8601 (YYYY-MM-DD)
- **Version Format:** Semantic Versioning MAJOR.MINOR.PATCH

### 3. Changelog Structure

Each changelog must follow the structure below:

1. **H1: "Changelog"**
2. **Unreleased Section:**
   - Always present
   - Used to record changes as they occur
   - Items are moved into the next version entry at release
3. **Released Versions:**
   - Listed in reverse chronological order (newest at the top)
   - Each entry includes:
     - Version number
     - Release date
     - Categorised changes
     - Optional: links to diffs, issues, or PRs

### 4. Mandatory Categories

Changes must be grouped under the following headings, in this order:

- **Added**
- **Changed**
- **Deprecated**
- **Removed**
- **Fixed**
- **Security**

Only include categories that contain changes.

### 5. Special Cases

#### 5.1 Yanked Releases

When a release is withdrawn due to issues, append `[YANKED]` to the version heading.

Example:
`## [0.0.5] - 2014-12-13 [YANKED]`

### 6. Example Version Entry

```text
## [1.4.0] - 2026-02-25
### Added
- New user-role selector.

### Changed
- Updated authentication timeout behaviour.

### Fixed
- Corrected formatting in error message dialogs.
```

### 7. Do / Don't Guidance

#### Do

- Use consistent category headings.
- Keep entries concise and specific.

## Don't

- Copy commit messages directly.
- Include internal commentary or implementation details.

---

## References

- Keep a Changelog v1.1.0 (https://keepachangelog.com/en/1.1.0/)
- Semantic Versioning 2.0.0 https://semver.org/spec/v2.0.0.html

---

## Versioning Table

| Version | Date       | Author                           | Changes                                          |
|---------|------------|----------------------------------|--------------------------------------------------|
| 1.1.0   | 2026-03-04 | <<Kristopher.Hewett@sa.gov.au>>  | Added example; clarity improvements; minor edits |
| 1.0.0   | 2026-02-26 | <<Kristopher.Hewett@sa.gov.au>>  | Initial release                                  |
