# SQL Script Generation Standard

Sponsor: <Kristopher.Hewett@sa.gov.au>

Version: v2.0.0 (DRAFT)

Revision Date: 2026-02-27

Compliance Baseline: MCM v57.0.0

SSOT Path: \\Guides\3_Structural_Rules_and_Metadata\5_SQL_Standards\SQL_Script_Generation_Standard_v2.0.0.md

---

## 1. Purpose

Define the mandatory structure, metadata, formatting requirements, and governance rules for all governed SQL scripts,
ensuring consistency, auditability, structural alignment, and SSOT integrity.

---

## 2. Primary Content Sections

### 2.1 Structural Requirements

1. Top Comment Block (single continuous /*...*/), containing in this fixed order and exact label casing:
   1. Sponsor: <<...>>
   2. Version: X.Y[.Z]
   3. `---` (separator line inside the comment block)
   4. ID: <>
   5. Query Theme: <>
   6. Original Question: <>
   7. `---` (separator line inside the comment block)
   8. Full Question: <>
      - Numerator: <>
      - Denominator: <>
   9. Calculation: <>
   10. Script_SSOT: <>
   11. Methodology banner within the comment block: two ASCII hyphen lines (for example, 80 hyphens) with a single
       title line between them. All lines must be ASCII-only and not exceed 120 characters.

2. Sectioned Body, appearing after the Top Comment Block, using these headings in this exact order:
   1. Parameters and reporting boundary policy
   2. Month clamps (first-day keys) for bounding YearMonth_Key
   3. Base set
   4. Additional Data or Filters
   5. Final Output
   - A statement terminator ; must appear on its own line at the end of the script.

3. Content Rules
   - Do not remove required headings or horizontal rule banners.
   - Fill placeholders (<>) with real values for governed scripts; leave <> only in templates.
   - Prefer CTEs with meaningful names and SARGable predicates.
   - Declare parameters near the top; document toggles and options explicitly.
   - For any percentage, document numerator and denominator policy in the Top Comment Block.

### 2.2 Canonical SQL Template (Copy-Paste Ready)

    /*------------------------------------------------------------------------------
    Sponsor: <<Kristopher.Hewett@sa.gov.au>>
    Version: 0.0.0

    ---

    ID: <>
    Query Theme: <>
    Original Question: <>

    ---

    Full Question: <>
      Numerator: <>
      Denominator: <>

    Calculation: <>

    Script_SSOT: <>

    --------------------------------------------------------------------------------
    -- Methodology (in order):
    --------------------------------------------------------------------------------
     * Eligibility ("Received"): <>
     * Reporting end policy: <>
     * Aggregation month: <>
     * Scope: <>
     * Classifications: <>
     * Exclusions: <>
     * Approvals: <>
     * Safety parity: <>
     * Month bounds: <>
     * Time parsing (if applicable): <>
     * Zero-fill policy (if applicable): <>
     * Output fields: <>
     * Performance and safety: SELECT-only, SARGable, no FORMAT(), 4-space indent, <=120 chars/line.
    ------------------------------------------------------------------------------*/

    ---------------------------------------------
    -- 1) Parameters and reporting boundary policy
    ---------------------------------------------

    -- Example:
    -- DECLARE @StartDate        DATE = 'YYYY-MM-01';
    -- DECLARE @Today            DATE = CAST(GETDATE() AS DATE);
    -- DECLARE @EndDateExclusive DATE = DATEADD(DAY, 1, EOMONTH(@Today, -1));
    -- DECLARE @ByMonth          BIT  = 0;

    ---------------------------------------------------------------
    -- 2) Month clamps (first-day keys) for bounding YearMonth_Key
    ---------------------------------------------------------------

    -- Example:
    -- DECLARE @OutputStartMonth        DATE = DATEFROMPARTS(YEAR(@StartDate), MONTH(@StartDate), 1);
    -- DECLARE @OutputEndMonthInclusive DATE = DATEFROMPARTS(YEAR(@EndDateExclusive), MONTH(@EndDateExclusive), 1);
    -- DECLARE @OutputEndMonthExclusive DATE = DATEADD(MONTH, 1, @OutputEndMonthInclusive);

    ----------------------
    -- 3) Base set
    ----------------------

    -- Example CTEs:
    -- WITH
    --     Base AS
    --     (
    --         SELECT ...
    --         FROM   ...
    --         WHERE  ...
    --     )

    --------------------------------
    -- 4) Additional Data or Filters
    --------------------------------

    -- Example:
    -- ,   Agg AS (SELECT ...)

    -----------------------
    -- 5) Final Output
    -----------------------

    -- Example:
    -- SELECT ...
    -- FROM   ...
    -- ORDER BY ...;

    ;

### 2.3 Formatting Requirements

- Indentation: 4 spaces; no tabs.
- Maximum line length: 120 characters for every line in the artefact.
- SQL keywords UPPERCASE; identifiers in native case.
- Use -- for inline comments; large context only in the Top Comment Block.
- End script with ; on its own line.
- Avoid FORMAT() in SQL Server; prefer explicit cast/CONVERT.
- Ensure SARGability; avoid wrapping filtered columns in expressions.
- For distributions, generate zero-fill series (for example, hours 0..23) and left join safely.

### 2.4 Governance and SSOT Rules

- Each script must include a Script_SSOT absolute UNC path.
- SSOT path, version field, and filename must all match exactly.
- Governed scripts stored in SSOT must be artefact-pure (no commentary).
- Reference upstream question IDs and related artefacts in the Top Comment Block.
- Versioning scheme:
  - Major: structural or behavioural logic changes.
  - Minor: content or logic updates without structural changes.
  - Patch: formatting-only corrections.

---

## 3. References

- MCM Directives v57.0.0
- MCM Artefact Structure Standard v3.0.0
- MCM SSOT Register

---

## 4. Versioning Table

| Version | Date       | Author                        | Changes                                                       |
|---------|------------|-------------------------------|---------------------------------------------------------------|
| 2.0.0   | 2026-02-27 | <Kristopher.Hewett@sa.gov.au> | Major: harmonised to MCM v57.0.0 and Standard v3.0.0; added   |
|         |            |                               | References and Versioning Table; ASCII-only; 120-char limit;  |
|         |            |                               | removed HTML entities; canonical template aligned; no inner   |
|         |            |                               | fences.                                                       |
| 1.0.0   | 2026-01-22 | <Kristopher.Hewett@sa.gov.au> | Initial release.                                              |
