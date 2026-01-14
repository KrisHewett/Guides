
# **ISO/IEC 11179–Aligned Database & Column Naming Guide**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 2.0
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** <https://github.com/KrisHewett/Guides/Naming_Standards/ISO11179_Naming_Guide_v2.0.md>

---

## **Audience**

Data engineers, analytics developers, data stewards, report authors.

## **Scope**

Relational databases, dimensional models, data marts, and data vault artifacts in Patient Safety.

---

## **1) Core Principles (ISO/IEC 11179 perspective)**

- **Data Element = Object Class + Property (+ optional Qualifier)**
  - **Object Class:** the “thing” (e.g., *patient*, *incident*, *facility*)
  - **Property:** the “characteristic” (e.g., *age*, *status*, *severity*)
  - **Qualifier:** contextual detail when needed (e.g., *reported*, *adjudicated*, *primary*)
    → Column name should transparently combine these (e.g., `incident_severity_code`, `patient_age_years`).

- **Controlled Vocabularies & Codes**
  Use suffixes that make representation explicit:
  `_id` (identifier), `_code` (coded domain), `_name` (human-readable label), `_desc` (long description), `_flag` (boolean), `_dt`/`_date` (date), `_ts` (timestamp), `_cnt` (count), `_pct` (percentage), `_amt` (monetary), `_num` (numeric non-count), `_txt` (free text).

- **Semantic Transparency**
  Names must be self-explanatory without consulting schema diagrams; avoid ambiguous abbreviations unless in an approved glossary.

- **Consistency & Reusability**
  Reuse object class stems across tables and columns to enable discoverability (e.g., `incident_*`, `patient_*`, `facility_*`).

- **Unit & Data Type Fidelity**
  Make measurement units explicit in the name where not obvious from metadata (e.g., `patient_weight_kg`, `length_of_stay_days`).

> **Rationale:** ISO/IEC 11179 stresses semantic clarity for data elements, explicit representation forms (codes vs names), and governance through registries and controlled vocabularies.

---

## **2) Table Naming Convention**

- **Case & Separator:** `snake_case`, lowercase, ASCII only.
- **Structure:**
  - Core entities: `objectclass` (singular, e.g., `patient`, `incident`).
  - Associations: `objectclass_a__objectclass_b` (double underscore), e.g., `patient__incident`.
  - Reference tables: `ref_<domain>` (e.g., `ref_incident_severity`).
  - Audit tables: `audit_<subject>` (e.g., `audit_incident_status`).
  - Staging: `stg_<source>_<subject>` (e.g., `stg_psims_incident`).
- **Suffixes:** `_hist` for history, `_snap` for snapshots.
- **Avoid:** environment tags, vendor names, team names in table names.

**Examples:**

- `patient` — entity table
- `incident` — entity table
- `patient__incident` — association table (many-to-many)
- `ref_incident_severity` — controlled vocabulary
- `audit_incident_status` — change history

---

## **3) Column Naming Convention**

- **Pattern:** `{object_class}_{property}_{qualifier?}_{representation?}`
- **Case:** `snake_case`, lowercase.
- **Redundancy Rule:**
  - In entity tables, omit object class prefix only if clarity is unaffected:
    `patient_id`, `date_of_birth`, `sex_code` (acceptable).
- **ID Columns:**
  - PK: `<object_class>_id`.
  - FK: `<referenced_object_class>_id`.
- **Representation Suffixes:** `_code`, `_name`, `_desc`, `_flag`, `_date`, `_dt`, `_ts`.
- **Units:** `_kg`, `_cm`, `_days`, `_years`.
- **Booleans:** `is_*_flag`.
- **Temporal:** `created_ts`, `updated_ts`, `effective_start_date`, `effective_end_date`.
- **Status:** `incident_status_code` (FK to `ref_incident_status`).
- **Lineage:** `source_system_code`, `source_record_id`, `etl_batch_id`, `ingested_ts`.

**Examples (entity: `incident`):**

- `incident_id` (PK)
- `facility_id` (FK → facility)
- `incident_severity_code` / `incident_severity_name`
- `incident_occurrence_dt` (datetime)
- `incident_reported_date` (date-only)
- `is_recurrent_flag`
- `length_of_stay_days`
- `created_ts`, `updated_ts`
- `source_system_code`, `source_record_id`

---

## **4) Reference / Code Tables Pattern**

- **Table:** `ref_<domain>` (e.g., `ref_incident_severity`).
- **Columns:**
  - `<domain>_code` (PK)
  - `<domain>_name`
  - `<domain>_desc` (optional)
  - `is_active_flag`
  - `created_ts`, `updated_ts`
- **FK in Fact Tables:** `<domain>_code` referencing `ref_<domain>.<domain>_code`.

**Example:**
`ref_incident_severity`

- `incident_severity_code` (PK)
- `incident_severity_name`
- `incident_severity_desc`
- `is_active_flag`
- `created_ts`, `updated_ts`

---

## **5) Reserved Tokens (approved glossary)**

- Identity: `_id`, `_natural_id`, `_uuid`.
- Codes & labels: `_code`, `_name`, `_desc`.
- Booleans: `_flag`, `is_*_flag`.
- Temporal: `_date`, `_dt`, `_ts`.
- Numeric: `_cnt`, `_pct`, `_amt`, `_num`.
- Units: `_years`, `_days`, `_hrs`, `_kg`, `_cm`.
- Lineage: `source_system_code`, `source_record_id`, `etl_batch_id`, `ingested_ts`.

---

## **6) Prohibitions & Guardrails**

- No ambiguous abbreviations unless approved.
- No mixed case, spaces, special characters.
- No environment tags in names.
- No unit-less measurements.
- No plural table names for core entities.
- No overloading `_id` with coded values.
- Avoid generic names like `value`, `type` without qualifiers.

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

1. Register data elements (name, definition, representation, permissible values, unit, lineage).
2. Enforce SSOT: maintain a single authoritative registry for names and permissible values.
3. Versioning: semantic versioning (major for naming policy changes; minor for vocab updates; patch for formatting).
4. Validation: integrate automated checks in CI (lint schema names, tokens, suffixes, and units).

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

## **11) Governance & Change Control (aligned to MCM)**

1. **Workflow:**
   - Propose name → check approved tokens & units → draft ISO/IEC 11179 data element entry.
   - Data Steward review → registry update → semantic version bump.
   - CI lint passes → deployment artifact generated → audit log entry created.

2. **SSOT enforcement:**
   - Registry + code references must match; if they diverge, block deployment (abort + correction notice).

3. **Audit readiness:**
   - Every change must record: proposer, date/time, rationale, affected tables/columns, version impact.

4. **Bias & accessibility checks:**
   - Validate names for neutrality and clarity; avoid stigmatizing terminology in Patient Safety contexts.

---

## **12) Quick Audit Checklist**

1. Names follow `snake_case`, ASCII, approved tokens.
2. Column names reflect Object Class + Property (+ Qualifier).
3. Units specified where required; booleans end with `_flag`.
4. Codes reference a `ref_` table; `_code` used, not `_id`.
5. Temporal fields use `_date`/`_dt`/`_ts` appropriately.
6. Registry entries exist for each new/changed data element.
7. CI lint & MCM checks passed (SSOT, version, markdownlint if docs generated).
8. Audit log updated; version bump aligned to change type.
9. No prohibited abbreviations; glossary references updated.

---

## **13) Storage Guidance**

| **Absolute Path**                                                            | **Artifact**                                   |
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

| Version | Date       | Author    | Changes                                               |
| ------- | ---------- | --------- | ----------------------------------------------------- |
| 1.0     | 2026-01-14 | K. Hewett | Initial draft (Part 1)                                |
| 2.0     | 2026-01-14 | K. Hewett | Combined Part 1 & Part 2; added governance & linting |

---

✅ **Compliance Notes**

- Metadata at top, versioning at bottom.
- SSOT path aligned to repo structure.
- Markdownlint compliance ensured (MD032, MD035).
- Full detail retained; no placeholders.
