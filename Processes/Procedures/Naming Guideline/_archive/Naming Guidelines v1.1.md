
# **ISO/IEC 11179–Aligned Database & Column Naming Guide**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.0
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** <https://github.com/KrisHewett/Guides/Naming_Standards/ISO11179_Naming_Guide_v1.0.md>

---

## **Audience**

Data engineers, analytics developers, data stewards, report authors.

## **Scope**

Relational databases, dimensional models, data marts, and data vault artifacts in Patient Safety.

---

## **1) Core Principles (ISO/IEC 11179 perspective)**

1. **Data Element = Object Class + Property (+ optional Qualifier)**
   - **Object Class**: the “thing” (e.g., *patient*, *incident*, *facility*)
   - **Property**: the “characteristic” (e.g., *age*, *status*, *severity*)
   - **Qualifier**: contextual detail when needed (e.g., *reported*, *adjudicated*, *primary*)
     → **Column name** should transparently combine these (e.g., `incident_severity_code`, `patient_age_years`).

2. **Controlled Vocabularies & Codes**
   - Use **suffixes** that make representation explicit:
     - `_id` (surrogate/natural identifier)
     - `_code` (coded domain)
     - `_name` (human-readable label)
     - `_desc` (long description)
     - `_flag` (boolean)
     - `_dt` / `_date` (date), `_ts` (timestamp)
     - `_cnt` (count), `_pct` (percentage), `_amt` (monetary), `_num` (numeric non-count), `_txt` (free text).

3. **Semantic Transparency**
   - Names must be **self-explanatory** without consulting schema diagrams; avoid ambiguous or local abbreviations unless in an approved glossary.

4. **Consistency & Reusability**
   - Reuse **object class** stems across tables and columns to enable user discoverability (e.g., `incident_*`, `patient_*`, `facility_*`).

5. **Unit & Data Type Fidelity**
   - Make **measurement units explicit** in the name where not obvious from metadata (e.g., `patient_weight_kg`, `length_of_stay_days`).

> **Rationale:** ISO/IEC 11179 stresses semantic clarity for data elements, explicit representation forms (codes vs names), and governance through registries and controlled vocabularies. This guide operationalizes those concepts in practical naming conventions.

---

## **2) Table Naming Convention**

1. **Case & Separator:** `snake_case`, lowercase, ASCII only.
2. **Structure:**
   - **Core entities:** `objectclass` (singular for entity tables, e.g., `patient`, `incident`, `facility`).
   - **Associations / bridges:** `objectclass_a__objectclass_b` (double underscore between object classes for clarity), e.g., `patient__incident`.
   - **Reference / code tables:** `ref_<domain>` (e.g., `ref_incident_severity`, `ref_facility_type`).
   - **Audit / lineage tables:** `audit_<subject>` (e.g., `audit_incident_status`).
   - **Staging / raw ingestion:** `stg_<source>_<subject>` (e.g., `stg_psims_incident`).
3. **Suffixes (optional but consistent):**
   - `_hist` for type-2 history tables (e.g., `facility_hist`).
   - `_snap` for point-in-time snapshots.
4. **Avoid:** environment tags, vendor names, team names in table names; keep those in metadata.

**Examples:**

- `patient` — entity table
- `incident` — entity table
- `patient__incident` — association table (many-to-many)
- `ref_incident_severity` — controlled vocabulary
- `audit_incident_status` — change history

---

## **3) Column Naming Convention**

1. **Pattern:** `{object_class}_{property}_{qualifier?}_{representation?}`
   - Keep **object class** stem consistent with table subject; omit if redundant within entity table (see rule 3 below).
2. **Case & Separator:** `snake_case`, lowercase.
3. **Redundancy Rule:**
   - In **entity tables**, you may omit the object class prefix for canonical properties *only if* clarity is unaffected:
     - `patient_id`, `date_of_birth`, `sex_code` (acceptable)
     - Prefer retaining `patient_*` for wide tables to reduce ambiguity: `patient_date_of_birth`, `patient_sex_code`.
4. **ID Columns:**
   - Primary key: `<object_class>_id` (surrogate integer/UUID).
   - Foreign key: `<referenced_object_class>_id`.
5. **Representation Suffixes:**
   - `_code` for coded domains, `_name` for display, `_desc` for long text, `_flag` (boolean), `_date` vs `_dt` (date-only vs datetime), `_ts` (timestamp).
6. **Units / Scale:**
   - Include unit tokens (e.g., `_kg`, `_cm`, `_days`, `_years`).
   - For percentages, use `_pct` and store as **numeric** (0–100) unless specified.
7. **Booleans:**
   - Name as **question** + `_flag`: `is_recurrent_flag`, `is_severe_flag`.
8. **Temporal Columns:**
   - `created_ts`, `updated_ts`, `effective_start_date`, `effective_end_date`.
9. **Status Columns:**
   - Use coded domains with references: `incident_status_code` (FK to `ref_incident_status`).
10. **Provenance / Lineage:**

- `source_system_code`, `source_record_id`, `etl_batch_id`, `ingested_ts`.

**Examples (entity: `incident`)**

- `incident_id` (PK)
- `facility_id` (FK → `facility`)
- `incident_severity_code` / `incident_severity_name`
- `incident_occurrence_dt` (datetime)
- `incident_reported_date` (date-only)
- `is_recurrent_flag`
- `length_of_stay_days`
- `created_ts`, `updated_ts`
- `source_system_code`, `source_record_id`

---

## **4) Reference / Code Tables Pattern**

1. **Table:** `ref_<domain>` (e.g., `ref_incident_severity`).
2. **Columns:**
   - `<domain>_code` (PK)
   - `<domain>_name`
   - `<domain>_desc` (optional)
   - `is_active_flag`
   - `created_ts`, `updated_ts`
3. **Foreign Keys in Fact/Entity Tables:** `<domain>_code` referencing `ref_<domain>.<domain>_code`.

**Example:**
`ref_incident_severity`

- `incident_severity_code` (PK)
- `incident_severity_name`
- `incident_severity_desc`
- `is_active_flag`
- `created_ts`, `updated_ts`

---

## **5) Reserved Tokens (approved glossary)**

Use the following **approved tokens** consistently across models:

- **Identity & keys:** `_id`, `_natural_id`, `_uuid`
- **Codes & labels:** `_code`, `_name`, `_desc`
- **Booleans:** `_flag`, `is_*_flag`
- **Temporal:** `_date`, `_dt`, `_ts`, `effective_start_date`, `effective_end_date`
- **Numeric:** `_cnt`, `_pct`, `_amt`, `_num`
- **Units:** `_years`, `_days`, `_hrs`, `_min`, `_kg`, `_g`, `_cm`, `_mm`, `_km`
- **Lineage:** `source_system_code`, `source_record_id`, `etl_batch_id`, `ingested_ts`

> Only introduce new tokens via the **controlled vocabulary** process (Data Steward approval + registry update).

---

## **6) Prohibitions & Guardrails**

1. **No ambiguous abbreviations** (e.g., `pt`, `fac`, `sev`) unless in approved glossary.
2. **No mixed case, spaces, special characters**; use ASCII lowercase with underscores.
3. **No environment decor in names** (e.g., `prod_`, `dev_`).
4. **No unit-less measurements** where unit affects interpretation.
5. **No plural table names for core entities** (use singular: `patient`, `incident`).
6. **No overloading `_id` with coded values** (use `_code` for codes).
7. **Avoid generic column names** (`value`, `type`) without qualifiers.

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
| 1.0     | 2026-01-14 | K. Hewett | Initial draft aligned to ISO/IEC 11179 |

---

✅ **Compliance Notes**

- Metadata at top, versioning at bottom.
- SSOT path aligned to repo structure.
- Markdownlint compliance ensured (MD032, MD035).
