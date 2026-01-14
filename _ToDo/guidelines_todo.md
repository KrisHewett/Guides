
# **MCM-Driven Consolidation & De-duplication Plan**

**Objective:** Remove duplication and ambiguity across your Style & Design, Syntax, Theme Colours, Branding, Linter/Formatter, Language Examples, ASCII Flow, and ISO/IEC 11179 Naming guides. Improve logic and consistency against standards.
**Method:** Each enhancement specifies (a) issue, (b) action to take, (c) SSOT path, and (d) acceptance criteria.
**Baseline:** MCM v52.2 · Version tables at **bottom** · Metadata at **top** · Markdownlint (MD032, MD035, MD013) enforced.

---

## **Global Rules (apply to all artifacts)**

1. **Versioning Placement**
   - **Issue:** Version tables appear mid-doc or top in some files.
   - **Action:** Move **Versioning** tables to the very **end** of each document.
   - **SSOT:** All modules under `https://github.com/KrisHewett/Guides/<module>/...`
   - **Acceptance:** Every module ends with a Versioning table; no other content follows.

2. **Metadata Consistency**
   - **Issue:** Inconsistent metadata fields (Developed by, Version, Revision Date, Compliance Baseline, SSOT Path).
   - **Action:** Standardize the metadata block across all modules.
   - **Acceptance:** All modules include the 5-field metadata block at the top.

3. **Markdownlint & Line Length**
   - **Issue:** Occasional breaches of MD032 (blank lines around lists), MD035 (horizontal rules), MD013 (≤120 chars).
   - **Action:** Enforce MD032/MD035 across lists and rules; hard-wrap or restructure lines to meet MD013.
   - **Acceptance:** Lint passes: MD032/MD035/MD013 across all docs.

4. **SSOT Cross-linking (No Redundant Bodies)**
   - **Issue:** Repeated full content across multiple guides (e.g., DateTime rules, Number Formats, Accessibility).
   - **Action:** Establish **one canonical section per topic**; other docs **link** to the canonical source rather than duplicating.
   - **Acceptance:** Each repeated topic appears **once** as full content and elsewhere only as a **link**.

5. **File Naming Convention (Documents & Assets)**
   - **Issue:** Multiple conventions described (e.g., `Branding_<AssetType>_vX.ext` vs module-specific names).
   - **Action:** Standardize to `<Domain>_<ArtifactType>_v<major>.<minor>.<ext>` for documents/assets. Reserve snake_case for schema elements.
   - **Acceptance:** All references and examples reflect one unified pattern.

6. **Locale, Timezone, and Currency**
   - **Issue:** Mixed locale examples (`en-US`) and currency (`USD`) alongside `en-AU` baseline.
   - **Action:** Set **en-AU** and **AUD** as the baseline for Language Examples unless explicitly stated. Timezone baseline `(UTC+09:30) Adelaide)`.
   - **Acceptance:** Examples default to `en-AU`, `AUD`. Where a different locale/currency is shown, it is explicitly labeled as an exception.

---

## **Module-by-Module Enhancements**

### **A) Style & Design Guidelines v1.1**

- **Issue 1: Date & Time / Number Formats duplication**
  - **Action:** Remove detailed formatting from Style & Design; **link to Syntax** canonical sections:
    - DateTime → Syntax §13
    - Number Formats → Syntax §14
  - **SSOT:** `https://github.com/KrisHewett/Guides/Style_and_Design/Style_and_Design_Guidelines_v1.1.md`
  - **Acceptance:** Sections contain short description + link; no duplicate rules.

- **Issue 2: Colour values vs tokens duplication**
  - **Action:** Only keep **design-token model** (tints/shades, neutrals, roles). **Source hex values** from SA Health Branding; **link** to Theme Colours for tokens.
  - **Acceptance:** No raw hex tables in Style & Design; links to Branding + Theme Colours.

- **Issue 3: Font family conflicts**
  - **Action:** Add a **precedence matrix**:
    - **Public-facing SA Health artifacts** → **Arial/Calibri** (Branding authoritative).
    - **Internal apps using Fluent UI** → Segoe UI; if conflict, SA Health Branding prevails for public/corp.
  - **Acceptance:** Explicit precedence table included; both families referenced by context.

- **Issue 4: Accessibility guidance duplicated**
  - **Action:** Keep only **policy-level** accessibility in Style & Design (WCAG 2.1 AA thresholds, alt text, captions). Implementation specifics reside in Branding (visual assets) and Syntax (code/log output).
  - **Acceptance:** No repeated implementation rules; policy remains.

---

### **B) Universal Syntax Guideline v1.5**

- **Issue 1: Canonical home for DateTime & Number Formats**
  - **Action:** Keep **full, canonical** definitions for DateTime (§13) and Number Formats (§14) here. Other docs must **link**.
  - **SSOT:** `https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md`
  - **Acceptance:** This guide is the **single source** for these topics.

- **Issue 2: Logging/output rules clarity**
  - **Action:** Confirm plain ASCII, timestamps `[YYYY-MM-DD hh:mm:ss]`, severity labels; add **non-leak** guidance (no PII/secrets).
  - **Acceptance:** Logging examples pass the non-leak criteria; examples present.

- **Issue 3: Reserved tokens location**
  - **Action:** Move **schema tokens** (e.g., `_code`, `_flag`) to **Naming Guide** as canonical; Syntax references the Naming Guide for schema naming.
  - **Acceptance:** Tokens remain in Naming Guide; Syntax hyperlinks to canonical list.

---

### **C) Theme Colours v1.0**

- **Issue 1: Source of truth for hex values**
  - **Action:** Declare **SA Health Branding v2.3** as the **authoritative palette (HEX/RGB/CMYK)**; Theme Colours holds **tokens/roles** (e.g., `themePrimary`, `neutralPrimary`) + CSS variable mapping.
  - **SSOT:** `https://github.com/KrisHewett/Guides/Theme_Colours/Theme_Colours_v1.0.md`
  - **Acceptance:** Theme Colours does **not** embed full hex tables; links to Branding v2.3.

- **Issue 2: Accessibility testing**
  - **Action:** Document **contrast testing workflow** (tool, pass thresholds, dark/high-contrast modes); retain only procedure here.
  - **Acceptance:** Procedure listed; no duplicated policy language.

---

### **D) SA Health Branding v2.3**

- **Issue 1: Authorities clarification**
  - **Action:** Branding remains **authoritative** for: **hex values**, **font families (Arial/Calibri)**, **logo usage**, **element styles**.
  - **SSOT:** `https://github.com/KrisHewett/Guides/SA_Health_Branding/SA_Health_Branding_v2.3.md`
  - **Acceptance:** Clear statement of authority + links to Theme Colours (tokens) and Style & Design (policy references).

- **Issue 2: Accessibility/contrast duplication**
  - **Action:** Keep **asset-level requirements** (e.g., logo clear space, minimum sizes, contrast pairing guidance); link to Style & Design for general WCAG policy.
  - **Acceptance:** Asset-specific guidance only; policy elsewhere.

- **Issue 3: Contact & asset source clarity**
  - **Action:** Reconfirm approved sources and contacts; ensure paths are valid and not placeholders.
  - **Acceptance:** Finalized SharePoint paths or GitHub links present.

---

### **E) Linter & Formatter Configurations v1.1**

- **Issue 1: Rule duplication vs Syntax**
  - **Action:** Keep **tooling configs** (Black, Flake8, isort, ESLint, Prettier, PSSA, clang-format, sqlfluff). Remove generic rules duplicated from Syntax (indentation, line length) except where required by config.
  - **SSOT:** `https://github.com/KrisHewett/Guides/Linter_Formatter_Configs/Linter_Formatter_Configs_v1.1.md`
  - **Acceptance:** This doc contains **configs only** + brief rationale; Syntax remains the rulebook.

- **Issue 2: Storage guidance modernization**
  - **Action:** Replace legacy `\\Settings\\MCM\\v51\\...` with current GitHub **config subfolder paths** under the Linter module.
  - **Acceptance:** All storage paths updated to the repo structure; verified.

---

### **F) Language Examples v1.3**

- **Issue 1: Locale/currency consistency**
  - **Action:** Default to **en-AU** and **AUD** unless explicitly demonstrating cross-locale behavior. Fix any `en-US` defaults in Power Query and JS examples unless labeled as exceptions.
  - **SSOT:** `https://github.com/KrisHewett/Guides/Language_Examples/Language_Examples_v1.3.md`
  - **Acceptance:** Examples consistently default to en-AU/AUD; exceptions documented inline.

- **Issue 2: Remove declarative rules duplication**
  - **Action:** Keep **examples only**; link back to Syntax for definitions (DateTime & Number Formats).
  - **Acceptance:** No restated rules; only runnable examples.

---

### **G) ASCII Flow Notation v1.1**

- **Issue 1: Symbol set clarity and minimalism**
  - **Action:** Confirm the minimal symbol set ( `[ ]`, `→`, `↓`, `<→>`, `#` ) and branching style; remove any alternate ASCII art forms that conflict with minimal rules.
  - **SSOT:** `https://github.com/KrisHewett/Guides/ASCII_Flow_Notation/ASCII_Flow_Notation_v1.1.md`
  - **Acceptance:** One consistent notation; example reflects rules exactly.

---

### **H) ISO/IEC 11179 Naming Guide v2.0**

- **Issue 1: Canonical home for schema tokens & patterns**
  - **Action:** Keep **reserved tokens list**, **table & column patterns**, and **reference table pattern** here; remove duplicate token definitions from other docs.
  - **SSOT:** `https://github.com/KrisHewett/Guides/Naming_Standards/ISO11179_Naming_Guide_v2.0.md`
  - **Acceptance:** All other docs **link** here for schema tokens; no token lists elsewhere.

- **Issue 2: Lint rule alignment**
  - **Action:** Ensure minimal lint rules and regex are present here; the Linter module links to these rules, not restate them.
  - **Acceptance:** Lint rules present only here; Linter module references them.

- **Issue 3: Patient Safety patterns completeness**
  - **Action:** Keep full Incident/Patient/Facility/Workflow & Status examples; maintain FK → ref consistency.
  - **Acceptance:** Examples intact and match the schema token rules.

---

## **Conflict Resolution & Precedence Matrix**

- **Colours:** **Branding v2.3** (hex values) **overrides**; **Theme Colours v1.0** provides tokens/roles only.
- **Fonts:** **Branding v2.3** (Arial/Calibri) for public/corp assets; **Style & Design** may use Segoe UI for internal Fluent UI apps; if conflict, Branding prevails for public artifacts.
- **DateTime & Numbers:** **Syntax v1.5** is canonical; **Language Examples v1.3** demonstrates usage only.
- **Schema Tokens:** **Naming Guide v2.0** is canonical; **Syntax** references it.

---

## **Storage Guidance (SSOT) — Consolidated Table**

| **Absolute Path**                                                                 | **Artifact**                                      | **Validation** |
|-----------------------------------------------------------------------------------|---------------------------------------------------|----------------|
| `https://github.com/KrisHewett/Guides/Style_and_Design/Style_and_Design_Guidelines_v1.1.md` | Style & Design Guidelines v1.1                     | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md` | Universal Syntax Guideline v1.5                    | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/Theme_Colours/Theme_Colours_v1.0.md`       | Theme Colours v1.0 (tokens/roles)                  | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/SA_Health_Branding/SA_Health_Branding_v2.3.md` | SA Health Branding v2.3 (hex/fonts/logo)           | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/Linter_Formatter_Configs/Linter_Formatter_Configs_v1.1.md` | Linter & Formatter Configurations v1.1             | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/Language_Examples/Language_Examples_v1.3.md` | Language Examples v1.3 (en-AU/AUD baseline)        | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/ASCII_Flow_Notation/ASCII_Flow_Notation_v1.1.md` | ASCII Flow Notation v1.1                           | ✅ Validated   |
| `https://github.com/KrisHewett/Guides/Naming_Standards/ISO11179_Naming_Guide_v2.0.md` | ISO/IEC 11179 Naming Guide v2.0 (tokens & patterns) | ✅ Validated   |

---

## **Acceptance Criteria (Global)**

- **No duplicated bodies**: DateTime, Number Formats, Tokens, Hex values appear as **full content once**; elsewhere they are **links**.
- **Consistent metadata**: 5-field block at the top in all modules.
- **Versioning at bottom**: Every module ends with Versioning table (nothing after).
- **Lint compliance**: MD032/MD035/MD013 pass; lists and rules are properly spaced; lines ≤ 120 chars.
- **Locale/currency**: Language Examples default to `en-AU` and `AUD`; exceptions clearly labeled.

---

## **What You’ll Check (Systematically)**

1. Open **Style & Design** → Remove detailed DateTime/Number sections; link to **Syntax**; add font precedence matrix; ensure Accessibility is policy-level only.
2. Open **Syntax** → Confirm DateTime/Number are canonical; hyperlink to **Naming Guide** for tokens; verify logging rules and examples.
3. Open **Theme Colours** → Retain tokens/roles; hyperlink to **Branding** for hex values; include accessibility test procedure.
4. Open **Branding** → Reassert authority (hex, fonts, logo); keep asset-specific accessibility; confirm contact & source paths.
5. Open **Linter/Formatter** → Retain configs only; update storage paths; link to **Syntax**/**Naming** for rule rationale.
6. Open **Language Examples** → Default en-AU/AUD; remove declarative rules; keep examples; link to **Syntax** for definitions.
7. Open **ASCII Notation** → Confirm minimal symbols; ensure example adheres exactly.
8. Open **Naming Guide** → Keep tokens & patterns canonical; ensure lint rules present; confirm Patient Safety examples complete.

---

If you want, I can produce a **JSON manifest** of the above artifacts (module → path → version → validation status) to attach to your cylindrical review and audit submission.
