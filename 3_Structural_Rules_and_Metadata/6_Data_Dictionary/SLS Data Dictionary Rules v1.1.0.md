
# Standard Data Dictionary — Requirements (Patient, Worker, Security)

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.1.0
Revision Date: 2026‑01‑19
Compliance Baseline: MCM v54.0.0
Conforms To Directive: MCM Artefact Structure Standard v54.0.0
SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\DataDictionary Rules & Guidelines.md

---

## Purpose

Define the **requirements** for building and maintaining the SLS Standard Data Dictionary across the **Patient**, **Worker**, and **Security** modules, derived from the supplied field inventory. This includes structural rules, schema column requirements, datatype patterns, code table mapping rules, lineage, and validation logic. Ensures SSOT integrity, audit readiness, and alignment with MCM v54.0.0.

---

## Primary Content Sections

### 3.1 Data Dictionary Structure

#### 3.1.1 Field Schema Requirements

All data dictionary entries **must** provide the following columns in the Field Schema Table:

| # | Section | Group | Item | SLS Field Name | Label (User‑Facing) | DAP_NAME | Description | Values |
|---|--------|-------|------|----------------|---------------------|----------|-------------|--------|

**Rules:**

- **DAP_NAME** is mandatory, unique, stable, and human‑readable (e.g., `BLOOD_PRODUCT_TYPE_OTHER`, `INVESTIGATION_LEAD`).
- **Label (User‑Facing)** is present when it differs from the SLS field name (e.g., *“Serial or Asset No”* for `inc_serialno`).
- **Description** must be prose only (no SQL or CASE text). Any logic goes to **JOIN** or **CASE** tables.
- **Values**: for lists, include a concise description (e.g., *“Code Split by ' ' Delimiter”* when applicable).
- **Module attribution** (Patient/Worker/Security) is held as metadata (sourced from your first three columns TRUE/FALSE) and can be rendered as filtered views per module.

**Examples (from your input; non‑exhaustive):**

- Patient:
  - `BLOOD_PRODUCT_TYPE_OTHER` — TEXT; SLS: `udv_string` (Section: INCIDENT_DETAILS → BLOOD)
  - `PATIENT_FACTORS_CONTRIBUTING_TO_PRESSURE_INJURY_LIST` — LIST; SLS: `udc_description` (PRESSURE_INJURY)
  - `CURRENT_FALLS_RISK_ASSESSMENT_IN_PLACE` — FLAG(YN); SLS: `udv_string` (FALL_RISK_ASSESSMENT)
- Worker:
  - `EMPLOYMENT_EMPLOYMENT_STATUS` — TEXT; SLS: `udc_description` (EMPLOYMENT)
  - `WHS_INVESTIGATION_CLASSIFICATION_TYPE` — TEXT; SLS: `udc_description` (WHS_INVESTIGATION)
  - `WHS_INVESTIGATION_LOST_TIME_FOLLOWING_INCIDENT` — FLAG(YN); SLS: `udv_string`
- Security:
  - `SECURITY_ERT_COMPOSITION_LIST` — LIST; SLS: `udc_description`
  - `SECURITY_ACTUAL_DEGREE_OF_AGGRESSION_TO_OTHER_PERSONS` — TEXT; SLS: `udc_description`
  - `SECURITY_SA_POLICE_REPORT_NUMBER` — TEXT; SLS: `udv_string`

> **Note:** The exhaustive per‑field schema inventory can be rendered on request as module‑specific tables.

---

### 3.2 JOIN Logic Table

Capture **all** joins outside the Field Schema. Use one row per field per join chain.

| Field (DAP_NAME) | LEFT JOIN | ON | Filter | Secondary JOIN | Notes |
|------------------|-----------|----|--------|----------------|-------|

**Patterns and Examples derived from your data:**

- **User‑defined value store (UDF):**
  - LEFT JOIN: `udf_values` ON (`recordid` → `cas_id`) with `field_id = <nnn>`
  - Secondary: `udf_codes` ON (`udv_string` → `udc_code`) with same `field_id`
  - Example fields: `ADMINISTRATION_ERRORS_LIST` (`field_id = 115`), `REVIEW_CLUSTER` (`field_id = 906`)
- **Incidents core:**
  - Source fields in `incidents_main` (e.g., `inc_dreported`, `inc_type`, `inc_time`)
  - Example joins for categorisation: `code_inc_conseq`, `code_inc_likeli`, `code_time_band`
- **Code dictionaries:**
  - `code_types` with filters like `cod_type = 'LANG'`, `'ORG'`, `'CLINGROUP'`, etc.
  - Dedicated code tables: `code_inc_injury`, `code_inc_bodypart`, `code_specialty`, `code_unit`, `code_locactual`, `code_directorate`, etc.
- **Contacts and staff:**
  - `contacts_main` via linkages (e.g., initials), `vw_staff_combos`, and `link_contacts` for patient demographics.
- **Other sources:**
  - `notepad` (notes audit), `aud_reasons` (rejection metadata; filter `mod_id = 'INC'`)

> Ensure every **field_id** used with `udf_values`/`udf_codes` is explicit in **Filter**.

---

### 3.3 CASE Logic Table

Any CASE expressions or conditional derivations **must** be declared here, referenced by `DAP_NAME`. Keep prose short and avoid executable code inside cells.

| Field (DAP_NAME) | CASE Expression (summary) | Purpose | Notes |
|------------------|---------------------------|---------|-------|
| NOTIFIER_PATIENT_OUTCOME_ISR | Gate values by `incidents_main.inc_dreported >= '2022‑07‑01'` | Apply ISR model v2 only after go‑live date | Derived from input `NOTIFIER_ISR_1` text |
| MANAGER_PATIENT_OUTCOME_ISR | Gate values by `incidents_main.inc_dreported >= '2022‑07‑01'` | Manager initial ISR after date | Derived from input `MANAGER_ISR_4` |
| MANAGER_TREATMENT_REQUIRED_ISR | Gate values by `incidents_main.inc_dreported >= '2022‑07‑01'` | Likelihood initial | From `MANAGER_ISR_5` |
| MANAGER_RATING_ISR_CODE | Conditional mapping against incidents_main | Manager ISR code selection | Summary only |
| APPROVAL_STATUS | Map `rep_approved` codes to labels (AWAREV/FA/INREV/else) | Human‑readable approval states | As per provided mapping rules |
| TIME(HHMM) | Pre‑2022 values stored as NVARCHAR(5), post‑2022 numeric in text | Harmonise time format | From `INCIDENT_TIME` notes |

> Full SQL may be retained in source control, but only summaries appear here to preserve artefact purity.

---

### 3.4 Code Table Mapping

Declare external code table dependencies explicitly.

| Field (DAP_NAME) | Code Table | Key Column | Description Column | Filter | Notes |
|------------------|------------|-----------|--------------------|--------|-------|
| CLASSIFICATION_LEVEL_2 | code_types | `cod_code` | — | `cod_type = 'CLINDT'` | Clinical detail |
| HEALTH_UNIT_DESC | code_types | `cod_code` | — | `cod_type = 'CLINGROUP'` | Health unit group |
| LHN_DESC | code_types | `cod_code` | — | `cod_type = 'ORG'` | Organisation |
| DETAILS_GENDER | udf_codes | `udc_code` | — | `field_id = 679` | UDC list |
| FALLS_HEIGHT_OF_FALL | udf_codes | `udc_code` | — | `field_id = 147` | UDC list |
| BLOOD_PRODUCT_TYPE_LIST | udf_codes | `udc_code` | — | `field_id = 959` | UDC list |
| STERILISATION_BCI_LIST | udf_codes | `udc_code` | — | `field_id = 1636` | UDC list |
| … | … | … | … | … | Additional mappings per input joins |

**Rules:**

- Use **Key Column** from the equality in your join (`Equals Column`/`Equals_Column_2`).
- If a **Description Column** is not explicitly provided in the source, leave it blank here and document it in the technical spec, not in the artefact.
- Every **UDC** list requires `field_id` filter.

---

### 3.5 Data Type Catalogue

| SLS Type            | EDW Type       | Notes                            |
|---------------------|----------------|----------------------------------|
| FLAG(YN)            | NVARCHAR(1)    | Booleans (Y/N)                   |
| TEXT                | NVARCHAR(508)  | Standard text fields             |
| FREE TEXT           | NVARCHAR(16777216) | Large/unbounded text          |
| DATETIME            | TIMESTAMP_NTZ  | Date/time values                 |
| TIME(HHMM)          | NVARCHAR(5)    | HHMM formatted text              |
| CODE                | NVARCHAR(6/64/508) | Codes; width per domain      |
| NUMBER(38,0)        | NUMBER(38,0)   | Integer identifiers              |
| NUMBER(13,2)        | NUMBER(13,2)   | Numeric measurements             |
| NUMBER(14,5)        | NUMBER(14,5)   | Numeric measurements             |
| NVARCHAR(128/200/256/300) | NVARCHAR(n) | Wider text where needed     |

> Types and widths are derived directly from your input list and harmonised into EDW types.

---

### 3.6 Lineage Summary

- **Sources:** `incidents_main`, `udf_values`, `udf_codes`, `code_*` tables, `code_types`, `contacts_main`, `link_contacts`, `notepad`, `aud_reasons`, `vw_staff_combos`
- **Staging:** EDW Stage
- **Transformation:** PSA Mart
- **Keys:** `inc_id`, `cas_id`, `recordid`, `field_id`
- **Module Attribution:** Patient, Worker, Security (from leading boolean flags)

---

### 3.7 Validation Rules

- **Uniqueness & stability:** `DAP_NAME` must be unique and stable.
- **Explicit joins:** All join paths must be declared in the **JOIN Logic** table, with explicit `field_id` where UDFs are involved.
- **Type conformance:** Data types must match the **Data Type Catalogue** above.
- **Complete lineage:** Each field must trace back to source table/column (or UDF with `field_id`).
- **Code mapping validity:** Every code mapping must reference a valid code table and key; UDC lists must specify `field_id`.
- **No code in schema cells:** SQL/CASE/expressions must not appear in Field Schema cells—place them in JOIN/CASE tables.

---

### 3.8 Glossary

- `inc_`, `udv_`, `udc_`, `cod_` prefixes
- Identifiers: `recordid`, `field_id`, `inc_id`, `cas_id`
- UDF terms: `udf_values`, `udf_codes`
- Code dictionaries: `code_types`, `code_inc_*`, `code_*`

---

## References

- MCM Artefact Structure Standard v54.0.0
- ISO 9001:2015 — Documented Information
- SLS Data Model (authoritative)

---

## Versioning Table

| Version | Date       | Author    | Changes                                                     |
|---------|------------|-----------|-------------------------------------------------------------|
| 1.1.0   | 2026‑01‑19 | K. Hewett | Requirements derived from supplied Patient/Worker/Security data |
| 1.0.1   | 2026‑01‑19 | K. Hewett | Updated template; restored metadata block format            |
| 1.0.0   | 2026‑01‑19 | K. Hewett | Initial creation of template                                |
``
