
# 1. Metadata Block (Mandatory)

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.0.1
Revision Date: 2026‑01‑19
Compliance Baseline: MCM v52.2
Conforms To Directive: MCM‑STD‑ARTEFACT‑STRUCTURE v52.2.4
SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\DataDictionary Rules & Guidelines.md

---

# 2. Purpose

Define governance, schema rules, formatting standards, metadata structures, lineage expectations, and validation
requirements for SLS Data Dictionary artefacts across Patient, Worker, and Security modules. Ensures SSOT integrity,
audit readiness, and alignment with MCM v52.2 and structural governance baseline v52.2.4.

---

# 3. Primary Content Sections

## 3.1 Data Dictionary Structure

### 3.1.1 Field Schema Table

(This table contains the core field definitions. No code may appear inside cells.)

| # | Section | Group | Item | SLS Field Name | Label (User‑Facing) | DAP_NAME | Description | Values |
|---|---------|--------|------|----------------|----------------------|----------|-------------|---------|

| Data Type | SQL Source Table | SQL Column | JOIN Logic | CASE Logic | Notes |
|-----------|------------------|------------|------------|------------|-------|

---

## 3.2 JOIN Logic Table

| Field | LEFT JOIN | ON | Filter | Secondary JOIN | Notes |
|-------|-----------|----|--------|----------------|--------|

---

## 3.3 CASE Logic Table

| Field | CASE Expression | Purpose | Notes |
|-------|------------------|---------|-------|

---

## 3.4 Code Table Mapping

| Field | Code Table | Key Column | Description Column | Filter | Notes |
|-------|-------------|------------|---------------------|--------|--------|

---

## 3.5 Data Type Catalogue

| SLS Type | EDW Type | Notes |
|----------|----------|--------|
| NVARCHAR(x) | VARCHAR | Standard text |
| NVARCHAR(16777216) | VARCHAR(MAX) | Large free text |
| TIMESTAMP_NTZ | TIMESTAMP_NTZ | Standard datetime |
| NUMBER(38,0) | NUMBER | Numeric |
| FLAG(YN) | VARCHAR(1) | Y/N flag |

---

## 3.6 Lineage Summary

- Source: SLS (Datix)
- Staging: EDW Stage
- Transformation: PSA Mart
- Keys: inc_id, cas_id, recordid, field_id

---

## 3.7 Validation Rules

- DAP_NAME must be unique, stable, and follow naming conventions.
- All JOIN logic must be explicit.
- Data types must conform to the catalogue.
- All fields must include complete lineage.
- Code table mappings must resolve to a valid cod_type or reference table.

---

## 3.8 Glossary

Defines SLS prefixes, schema conventions, and conceptual entities, including:

- inc_
- udv_
- udc_
- cod_
- recordid
- field_id
- cas_id

---

# 4. References

- MCM‑STD‑ARTEFACT‑STRUCTURE v52.2.4
- ISO 9001:2015 — Documented Information
- SLS Data Model (authoritative)

---

# 5. Versioning Table

| Version | Date | Author | Changes |
|---------|--------|---------|----------|
| 1.0.1 | 2026‑01‑19 | K. Hewett | Updated template; restored metadata block format |
| 1.0.0 | 2026‑01‑19 | K. Hewett | Initial creation of template |
