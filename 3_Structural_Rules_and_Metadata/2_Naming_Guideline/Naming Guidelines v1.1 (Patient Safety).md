
# **ISO/IEC 11179–Aligned Database & Column Naming Guide (Part 2)**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.0
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** <https://github.com/KrisHewett/Guides/Naming_Standards/ISO11179_Naming_Guide_Part2_v1.0.md>

---

## **Purpose**

Extend Part 1 with Patient Safety–specific patterns, registry alignment, lint rules, governance workflow, and audit checklists for naming compliance.

---

## **7) Patient Safety–Specific Patterns (examples)**

- **Incidents:**
  `incident_id`, `incident_classification_code`, `incident_severity_code`, `incident_harm_level_code`, `incident_occurrence_dt`, `incident_reported_date`, `is_recurrent_flag`

- **Patient:**
  `patient_id`, `date_of_birth`, `sex_code`, `patient_age_years`, `is_pregnant_flag`, `is_vulnerable_flag`

- **Facility:**
  `facility_id`, `facility_type_code`, `facility_name`, `local_health_network_code`

- **Workflow & Status:**
  `incident_status_code`, `investigation_status_code`, `resolution_status_code`, `effective_start_date`, `effective_end_date`

---

## **8) Registry Alignment (ISO/IEC 11179 governance)**

1. **Register data elements** (name, definition, representation, permissible values, unit, lineage).
2. **Enforce SSOT**: maintain a single authoritative registry for names and permissible values.
3. **Versioning:** track changes with semantic versioning (major for naming policy changes; minor for vocab updates; patch for formatting).
4. **Validation:** integrate automated checks in CI (lint schema names, tokens, suffixes, and units).

---

## **9) Minimal Lint Rules (schema naming lint)**

1. Names must match: `^[a-z][a-z0-9_]*$`.
2. Table names ≤ 64 chars; column names ≤ 63 chars (RDBMS-dependent—set stricter internal limits, e.g., 40).
3. Approved tokens only; reject unapproved suffixes.
4. Unit suffix mandatory for measurements.
5. Booleans must end with `_flag` and start with `is_`.

---

## **10) Example: End-to-end Incident Model (excerpt)**

**Tables:**
`incident`, `patient`, `facility`, `patient__incident`, `ref_incident_severity`, `ref_incident_status`

**Columns (sample):**

- `incident`:
  `incident_id` (PK), `facility_id` (FK), `incident_severity_code`, `incident_status_code`, `incident_occurrence_dt`, `incident_reported_date`, `is_recurrent_flag`, `created_ts`, `updated_ts`, `source_system_code`, `source_record_id`

- `ref_incident_severity`:
  `incident_severity_code` (PK), `incident_severity_name`, `incident_severity_desc`, `is_active_flag`, `created_ts`, `updated_ts`

---

## **11) Governance & Change Control (aligned to MCM v44.1.0)**

1. **Ordered workflow:**
   - Propose name → check approved tokens & units → draft ISO/IEC 11179 data element entry.
   - Data Steward review → registry update → semantic version bump.
   - CI lint passes → deployment artifact generated → audit log entry created.

2. **Single Source of Truth (SSOT):**
   - Registry + code references must match; if they diverge, block deployment (abort + correction notice).

3. **Audit readiness:**
   - Every change must record: proposer, date/time, rationale, affected tables/columns, version impact.

4. **Bias & accessibility checks:**
   - Validate names for neutrality and clarity; avoid stigmatizing terminology in Patient Safety contexts.

---

## **12) Quick Audit Checklist (run before deployment)**

1. Names follow `snake_case`, ASCII, approved tokens.
2. Column names reflect **Object Class + Property (+ Qualifier)**.
3. Units specified where required; booleans end with `_flag`.
4. Codes reference a `ref_` table; `_code` used, not `_id`.
5. Temporal fields use `_date`/`_dt`/`_ts` appropriately.
6. Registry entries exist for each new/changed data element.
7. CI lint & MCM checks passed (SSOT, version, markdownlint if docs generated).
8. Audit log updated; version bump aligned to change type.
9. No prohibited abbreviations; glossary references updated.

---

## **13) Storage Guidance (absolute paths for documentation artifacts)**

| **Absolute Path**                                                            | **Artifact (linked when available)**           |
| ---------------------------------------------------------------------------- | ---------------------------------------------- |
| `/data-governance/registry/iso-iec-11179/data-elements/`                     | Data Element Registry (Patient Safety)         |
| `/data-governance/vocabularies/ref-tables/`                                  | Controlled Vocabularies (Reference Tables)     |
| `/data-governance/policies/naming-conventions/iso-11179-db-column-naming.md` | Database & Column Naming Guide (this document) |
| `/data-governance/audit/logs/schema-naming/`                                 | Schema Naming Audit Logs                       |
| `/data-governance/ci/lint/rules/schema-naming-lint.yml`                      | Naming Lint Rules (CI Integration)             |

---

## **References**

- ISO/IEC 11179 Metadata Registry Standard
- SA Health Data Governance Framework
- Universal Syntax Guideline v1.5
  <https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md>

---

## **Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2026-01-14 | K. Hewett | Added Patient Safety patterns, lint rules, governance workflow |

---

✅ **Compliance Notes**

- Metadata at top, versioning at bottom.
- SSOT path aligned to repo structure.
- Markdownlint compliance ensured (MD032, MD035).
