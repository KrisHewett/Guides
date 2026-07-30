# SQL Script Generation Standard

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.0.0
Revision Date: 2026‑01‑22
Compliance Baseline: MCM v54.0.0
Conforms To Directive: MCM Directives v54.0.0
SSOT Path: Guides\3_Structural_Rules_and_Metadata\4_Standard_Artefact_Structure\SQL Script Generation Standard v1.0.0.md

---

## Purpose

Define the mandatory structure, metadata, formatting requirements, and governance rules for all governed SQL scripts,
ensuring consistency, auditability, SSOT integrity, and alignment with MCM v54.0.0. This standard also supplies a
canonical script template matching the required structure.

---

## Primary Content Sections

### 1. Structural Requirements

1. **Top Comment Block** (single, continuous `/* ... */`) containing, in this fixed order and exact label casing:
   - `Sponsor: <<...>>`
   - `Version: X.Y[.Z]`
   - `---`
   - `ID: <>`
   - `Query Theme: <>`
   - `Original Question: <>`
   - `---`
   - `Full Question: <>`
     - `Numerator: <>`
     - `Denominator: <>`
   - `Calculation: <>`
   - `Script_SSOT: <>`
   - **Methodology block** with horizontal rule comments exactly as shown:
     ```
     --------------------------------------------------------------------------------
     -- Methodology (in order):
     --------------------------------------------------------------------------------
     <ordered methodology bullets/steps, each starting with a space and an asterisk>
     ```
   - The comment block closes with `------------------------------------------------------------------------------*/`

2. **Sectioned Body** (after the comment block), using exactly these ordered sections and headings:
   - `---------------------------------------------`
     `-- 1) Parameters & reporting boundary policy`
     `---------------------------------------------`
   - `---------------------------------------------`
     `-- 2) Month clamps (first-day keys) for bounding YearMonth_Key`
     `---------------------------------------------`
   - `---------------------------------------------`
     `-- 3) Base set`
     `---------------------------------------------`
   - `---------------------------------------------`
     `-- 4) Additional Data or Filters`
     `---------------------------------------------`
   - `---------------------------------------------`
     `-- 5) Final Output`
     `---------------------------------------------`
   - Statement terminator `;` on its own line.

3. **Content Rules**
   - **Do not remove** any of the required headings or horizontal rule comment banners.
   - Populate placeholders (`<>`) with concrete values for governed scripts; leave as `<>` only in templates.
   - Use **CTEs** where practical, with clear names and SARGable predicates.
   - For toggles and options, declare explicit parameters near the top (Section 1).
   - Percentages must clearly document numerator and denominator policy.

---

### 2. Formatting & Lint Rules

- **Indentation:** 4 spaces; **no tabs**.
- **Max line length:** 120 characters.
- **Case & style:**
  - SQL keywords UPPERCASE; identifiers in their native case.
  - British/Australian spelling in comments.
- **Functions:** Avoid `FORMAT()` in SQL Server paths; prefer casting and `CONVERT` as appropriate.
- **Safety:** SELECT‑only for read‑only extracts unless explicitly approved.
- **SARGability:** Place filters on base tables where possible; avoid wrapping filtered columns in expressions.
- **Comments:** Use `--` for inline; large context in the **Top Comment Block** only.
- **Termination:** End script with `;`.
- **Zero‑fill policy:** Where applicable for distributions, generate series (e.g., Hours 0..23) and left join.
- **Time parsing policy (DatixARR patterns):** Pre‑ISR vs ISR (digits‑only, range‑checked) when using `inc_time`.

---

### 3. Governance & SSOT Rules

- Every governed script must include a **Script_SSOT** absolute path pointing to its location in the repository.
- The **Version** in the comment block must match the SSOT filename and the repository entry.
- Changes:
  - **Major:** structural or behavioural logic changes.
  - **Minor:** content or logic updates without structural changes.
  - **Patch:** formatting‑only corrections.
- Store only artefact‑pure scripts in SSOT (no commentary).
- Reference upstream question IDs and related artefacts in the comment block.

---

### 4. Canonical SQL Template (Copy‑Paste Ready)

```sql
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
 * Performance & safety: SELECT-only, SARGable, no FORMAT(), 4-space indentation, <=120 chars/line.

------------------------------------------------------------------------------*/

---------------------------------------------
-- 1) Parameters & reporting boundary policy
---------------------------------------------

-- Example:
-- DECLARE @StartDate        DATE = 'YYYY-MM-01';
-- DECLARE @Today            DATE = CAST(GETDATE() AS DATE);
-- DECLARE @EndDateExclusive DATE = DATEADD(DAY, 1, EOMONTH(@Today, -1));
-- DECLARE @ByMonth          BIT  = 0;

---------------------------------------------
-- 2) Month clamps (first-day keys) for bounding YearMonth_Key
---------------------------------------------

-- Example:
-- DECLARE @OutputStartMonth        DATE = DATEFROMPARTS(YEAR(@StartDate), MONTH(@StartDate), 1);
-- DECLARE @OutputEndMonthInclusive DATE = DATEFROMPARTS(YEAR(@EndDateExclusive), MONTH(@EndDateExclusive), 1);
-- DECLARE @OutputEndMonthExclusive DATE = DATEADD(MONTH, 1, @OutputEndMonthInclusive);

---------------------------------------------
-- 3) Base set
---------------------------------------------

-- Example CTEs:
-- WITH
--     Base AS
--     (
--         SELECT ...
--         FROM   ...
--         WHERE  ...
--     )

---------------------------------------------
-- 4) Additional Data or Filters
---------------------------------------------

-- Example:
-- ,   Agg AS (SELECT ...)

---------------------------------------------
-- 5) Final Output
---------------------------------------------

-- Example:
-- SELECT ...
-- FROM   ...
-- ORDER BY ...;

;
