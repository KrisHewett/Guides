# Changelog Guidelines v1.0.0

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.0.0
Revision Date: 2026‑02‑26
Compliance Baseline: MCM v55.1.0
Conforms To Directive: MCM Directives v55.1.0
SSOT Path: \\MCM\Guides\Governance\Document_Governance_and_Version_Control\Changelog_Guidelines_v1.0.0.md

---

## Purpose

Define the mandatory structure, formatting, versioning behaviour, and governance requirements for all changelog files under the Master Compliance Memory (MCM). Ensure consistent human‑readable documentation of notable changes, aligned with semantic versioning and Keep a Changelog principles. [1](https://keepachangelog.com/en/1.1.0/)

---

## Primary Content Sections

### 1. Changelog Definition

A changelog is a curated, chronological record of notable changes for each version of an artefact, system, or process. It is designed for human readability, distinct from granular commit logs or automated diff outputs. [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)

### 2. File Requirements

- **Filename:** `CHANGELOG.md` (or otherwise specified by system requirements) [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Format:** Markdown
- **Date Format:** ISO‑8601 (YYYY‑MM‑DD) [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Version Format:** Semantic Versioning MAJOR.MINOR.PATCH [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)

### 3. Changelog Structure

Each changelog must follow the standard schema below:

1. **H1: “Changelog”**
2. **Unreleased Section:**
   - Always present
   - Captures pending changes not yet assigned to a released version
3. **Released Versions:**
   - Reverse chronological order (newest to oldest)
   - Each entry must contain:
     - Version number
     - Release date
     - Categorised changes
     - Optional: links to comparison diffs, issues, or pull requests
   [1](https://keepachangelog.com/en/1.1.0/)

### 4. Mandatory Categories

Each released or unreleased version must group changes under the following headings:
- **Added** — New functionality [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Changed** — Modifications to existing behaviour [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Deprecated** — Features planned for removal [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Removed** — Permanently removed functionality [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Fixed** — Bug fixes and corrections [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- **Security** — Vulnerability‑related fixes [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)

These categories must appear in the above order.

### 5. Special Cases

#### 5.1 Yanked Releases
If a release is withdrawn due to critical issues, append the `[YANKED]` tag to the version header.
Example:
`## [0.0.5] - 2014-12-13 [YANKED]`
This signals invalid or unsafe versions. [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)

### 6. Governance and MCM‑Aligned Rules

#### 6.1 Version Integrity
- Every artefact update requiring a version increment must include a corresponding changelog entry.
- Major, minor, and patch changes must align with the MCM Versioning Directive definitions.

#### 6.2 SSOT Alignment
- The changelog is a governed artefact and must be stored in the SSOT location described in metadata.
- Changelog updates require cylindrical review before release.

#### 6.3 Artefact Purity
- Changelogs must contain only versioned change history.
- No commentary, justification, or metadata beyond version records.

#### 6.4 Human‑Centric Orientation
- Changelogs must be understandable by non‑technical audiences, consistent with Keep a Changelog’s guiding principles. [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)

---

## References

- Keep a Changelog v1.1.0 — https://keepachangelog.com/en/1.1.0/ [1](https://keepachangelog.com/en/1.1.0/)
- Core Changelog Guidelines — DeepWiki summary of Keep a Changelog [2](https://deepwiki.com/olivierlacan/keep-a-changelog/3.1-core-changelog-guidelines)
- MCM Directives v55.1.0 (current global baseline)
- MCM Artefact Structure Standard v2.0.0 (current structural baseline)
- Semantic Versioning 2.0.0 — https://semver.org/spec/v2.0.0.html

---

## Versioning Table

| Version | Date       | Author                           | Changes                                |
|---------|------------|----------------------------------|-----------------------------------------|
| 1.0.0   | 2026‑02‑26 | <<Kristopher.Hewett@sa.gov.au>> | Initial release of Changelog Guidelines |
