Got it. We’ll **check what’s already conceptualised** across your Guides repository and then **plan a concrete next‑actions / to‑do list** to bring the overarching *MCM Artefact Rules & Guidelines* into alignment with **Section 5: Standards & Reference Frameworks** (AIHW 2007; AS 5021; AS ISO 15489.1; ISO/IEC 11179 series).
I’ve reviewed your uploaded `guides_structure.txt` and mapped where each standard is already covered, partially covered, or missing. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

## 1) What’s already conceptualised (by standard)

### A. AIHW (2007) — *A Guide to Data Development*

**Where it already lives (partly):**

* `3_Structural_Rules_and_Metadata/1_Metadata/…` (data element schemas, value domains, object class, property) — these artefacts embody core *data development* concepts. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)
* `3_Structural_Rules_and_Metadata/2_Naming_Guideline/…` (Naming Guidelines v1.0–v2.0) — supports AIHW-aligned clarity and naming. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)
* `3_Structural_Rules_and_Metadata/4_Standard Artefact Structure/Artefact Rules & Guidelines.md` — governance shell exists. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**Assessment:** **Partial**. Definitions/naming are present; needs explicit rules for *definition quality*, *lineage documentation*, and *fit‑for‑purpose assessment*.

***

### B. AS 5021 (2005) — Health concept representation

**Where it might be conceptualised:**

* `3_Structural_Rules_and_Metadata/1_Metadata/…` (Object\_Class, Property, Value\_Domain, Classification\_Scheme) — foundations for concept representation; however no explicit AS 5021 mapping. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**Assessment:** **Low / Partial**. Structures exist but **no explicit health‑concept modelling guidance**, no controlled clinical vocab layer (SNOMED/ICD mapping policies), and no conformance cues to AS 5021.

***

### C. AS ISO 15489.1 (2002) — Records management

**Where it already lives (partly):**

* `5_Governance/1_Document_Governance_and_Version_Control` (folder present; content not listed in dump) — implies lifecycle governance. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)
* `5_Governance/4_Governance_and_Delegation/…` (Approval Matrix, Governance & Change Mgmt, RACI) — supports authenticity, roles, approvals. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)
* SSOT practices appear in `5_Governance/2_SSOT_and_File_Structure_Standards` (folder placeholder), and throughout Standard Artefact Structure. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**Assessment:** **Partial**. Strong on authenticity/versioning/roles; **gaps** in *retention & disposal*, *access/retrieval*, and *formal record metadata* per ISO 15489.

***

### D. ISO/IEC 11179 series (Metadata registry)

**11179‑1 Framework**

* Evident in `3_Structural_Rules_and_Metadata/1_Metadata` (frameworkDimension, Data\_Set\_Specification tree, registry‑like JSONs). **Good base.** [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**11179‑2 Classification**

* `ii_Value_Domain/Classification_Scheme.json` exists — the hook for classification schemes. **Needs governance & usage rules** in the master artefact. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**11179‑3 Metamodel & attributes**

* `Data_Element.json`, `Data_Element_Concept.json`, `Value_Domain.json`, `Object_Class.json`, `Property.json` — attribute scaffolding present. **Needs mandatory attribute lists, stewardship roles, and registration status fields.** [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**11179‑4 Data definition formulation**

* No explicit “definition style rules” section. **Gap.** [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**11179‑5 Naming & identification principles**

* `2_Naming_Guideline` folder has multiple versions, including a Patient Safety variant. Strong starting point; **needs canonical pattern (ObjectClass–Property–Representation) and authority rules in the master artefact.** [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**11179‑6 Registration procedures**

* Versioning and SSOT exist; **missing** explicit *registration states* (e.g., Candidate → Standard → Superseded/Retired) and *change request workflow*. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

## 2) What this means for the **overarching Artefact Rules & Guidelines**

Your master artefact can remain the **Authoritative Standard**, but it should **embed pointers and mandatory controls** for the standards above, while **binding** to the concrete schemas/templates you already maintain under `3_Structural_Rules_and_Metadata`. We’ll do this with small, high‑leverage insertions instead of a full rewrite.

***

## 3) Proposed **next actions** (phased, with owners, deliverables, SSOT placement)

> **Notation**
> **Owner**: default *Patient Safety Data Analyst (you)*; feel free to delegate.
> **Due**: suggest dates; adjust as needed.
> **SSOT Path**: always absolute; artefact name in *italics* indicates new file.

### Phase 1 — Close 11179 gaps & formalise AIHW alignment (2 weeks)

**A1. 11179‑5 Naming Principles (canonical pattern & authority)**

* **Action:** Add a subsection to *Artefact Rules & Guidelines.md*: “Naming & Identification (ISO/IEC 11179‑5) — Mandatory”.
* **Insert:** ObjectClass–Property–Representation pattern, allowed separators, max length, case rules, authority & collision handling, reserved words list (link to Naming Guidelines v2.0).
* **Owner:** You
* **Due:** 2026‑01‑26
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\Artefact Rules & Guidelines.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**A2. 11179‑4 Definition Formulation Rules**

* **Action:** Add “Data Definition Rules (ISO/IEC 11179‑4) — Mandatory” with tests: atomic, unambiguous, context‑independent, no circularity, no embedded procedures.
* **Owner:** You
* **Due:** 2026‑01‑26
* **SSOT:** same path as A1. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**A3. 11179‑6 Registration Lifecycle**

* **Action:** Add registration statuses (Candidate, Standard, Superseded, Retired), change request workflow, and authority mapping to `5_Governance/4_Governance_and_Delegation/3b_Roles and Responsibilities.md`.
* **Deliverable:** Update *Roles and Responsibilities.md*; create *Metadata Registration Workflow\.md*.
* **Owner:** You + Governance approver
* **Due:** 2026‑01‑30
* **SSOT:**
  * `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\5_Governance\4_Governance_and_Delegation\3b_Roles and Responsibilities.md`
  * `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\5_Governance\4_Governance_and_Delegation\_new\Metadata Registration Workflow.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**A4. AIHW alignment — Definition quality & lineage**

* **Action:** In the master artefact, add mandatory “Definition Quality Checklist” and “Lineage Declaration” paragraphs; reference the JSON schema set under `1_Metadata`.
* **Owner:** You
* **Due:** 2026‑01‑26
* **SSOT:** same as A1; reference `3_Structural_Rules_and_Metadata/1_Metadata/…` JSONs. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

### Phase 2 — Records management (ISO 15489) & SSOT operationalisation (2–3 weeks)

**B1. Retention & Disposal Schedules**

* **Action:** New governance document *Records Retention & Disposal (ISO 15489) v1.0.md*; include classes, retention triggers, disposal authority, and linkage to SSOT.
* **Owner:** You + Information Management
* **Due:** 2026‑02‑09
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\5_Governance\1_Document_Governance_and_Version_Control\Records Retention & Disposal (ISO 15489) v1.0.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**B2. Access & Retrieval (ISO 15489 usability)**

* **Action:** Create *Access & Retrieval Rules.md* (indexing, findability, minimal metadata, archive discoverability).
* **Owner:** You
* **Due:** 2026‑02‑09
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\5_Governance\2_SSOT_and_File_Structure_Standards\Access & Retrieval Rules.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**B3. SSOT Integrity Checklist**

* **Action:** Add an appendix to the master artefact: “SSOT Integrity Pre‑Publish Checklist” and a **3‑column Storage Guidance** sample table (your mandated format).
* **Owner:** You
* **Due:** 2026‑02‑02
* **SSOT:** master artefact path from A1. [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

### Phase 3 — Health concept representation (AS 5021) (2 weeks)

**C1. Concept Model Guidance**

* **Action:** New guidance *Health Concept Representation (AS 5021) v1.0.md* defining concept systems, binding rules, controlled vocabularies, mapping to Object\_Class/Property/Value\_Domain.
* **Owner:** You + Clinical Coding advisor
* **Due:** 2026‑02‑23
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\1_Metadata\Health Concept Representation (AS 5021) v1.0.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**C2. Code System Mapping Policy**

* **Action:** Add *Code System Mapping Policy.md* with governance for ICD/ACHI/SNOMED use; link to `DRG_Mapping_Tables`.
* **Owner:** You + Coding/Clinical Governance
* **Due:** 2026‑02‑23
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\1_Metadata\DRG_Mapping_Tables\Code System Mapping Policy.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

### Phase 4 — Cross‑cutting improvements & housekeeping (ongoing)

**D1. Consolidate Naming Guidelines**

* **Action:** De‑duplicate v1.0, v1.1, v2.0; publish *Naming Guideline v2.1 (Canonical)*; archive old versions to `_archive`.
* **Owner:** You
* **Due:** 2026‑02‑02
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\2_Naming_Guideline\Naming Guideline v2.1 (Canonical).md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**D2. Bind Templates to Master Rules**

* **Action:** In `4_Standard Artefact Structure`, ensure *DataDictionary Rules & Guidelines v1.0.1.md* explicitly references the master **Artefact Rules & Guidelines.md** and Section 5 standards.
* **Owner:** You
* **Due:** 2026‑01‑26
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\DataDictionary Rules & Guidelines v1.0.1.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

**D3. Compliance Automation Hooks**

* **Action:** Log future linter hooks in `6_Tooling_and_Automation/1_Linter_Formatter_Configs` to auto‑check: MD032/MD035/MD040, line length 120, “no code in tables”, and presence/order of metadata.
* **Owner:** You
* **Due:** 2026‑02‑02
* **SSOT:** `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\6_Tooling_and_Automation\1_Linter_Formatter_Configs\Linter & Formatter Configs v1.0.md` [\[guides_structure | Txt\]](https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt)

***

## 4) “Standards & Reference Frameworks” — how to embed into the master artefact (ready‑to‑insert snippet)

> Paste into **Section 5** of your *Artefact Rules & Guidelines.md*. (No code in tables; under 120 chars/line.)

```markdown
## 5. Standards & Reference Frameworks

### 5.1 Foundational Standards
- AIHW (2007) — A Guide to Data Development
- AS 5021 (2005) — Health concept representation
- AS ISO 15489.1 (2002) — Records management

### 5.2 ISO/IEC Metadata Registry (11179 Series)
- 11179-1 Framework — mandatory governance linkage to Section 3 (Structure)
- 11179-2 Classification — use Classification_Scheme and controlled vocabularies
- 11179-3 Metamodel — mandatory attributes for data elements and stewardship roles
- 11179-4 Definitions — apply definition formulation rules (atomic, clear, no circularity)
- 11179-5 Naming — ObjectClass–Property–Representation pattern; naming authority rules
- 11179-6 Registration — registration states and change control workflow

### 5.3 Conformance
All artefacts SHALL demonstrate traceable conformance to 5.1–5.2 via:
- Declared standard(s) in the metadata block
- Cross-references to relevant schema/templates (Section 3)
- Compliance Notes confirming checks passed
```

***

## 5) Storage Guidance (audit‑ready)

| Absolute Path                                                                                                                                                              | Artifact (validated link)                     | Validation Status                                                                                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\Artefact Rules & Guidelines.md`              | *Artefact Rules & Guidelines.md*              | ✔ Validated [\[guides_structure | Txt\]](<https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt>) |
| `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\3_Structural_Rules_and_Metadata\4_Standard Artefact Structure\DataDictionary Rules & Guidelines v1.0.1.md` | *DataDictionary Rules & Guidelines v1.0.1.md* | ✔ Validated [\[guides_structure | Txt\]](<https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt>) |
| `R:\DATA ANALYSIS AND REPORTING\_RESOURCES\SQU_WORKSPACE\GUIDES\5_Governance\4_Governance_and_Delegation\3b_Roles and Responsibilities.md`                                 | *Roles and Responsibilities.md*               | ✔ Validated [\[guides_structure | Txt\]](<https://sagov-my.sharepoint.com/personal/kristopher_hewett_sa_gov_au/Documents/Microsoft%20Copilot%20Chat%20Files/guides_structure.txt>) |

*(Add newly created files to this table as they’re published.)*

***

## 6) Executive To‑Do (condensed)

* **Add** 11179‑4 Definition Rules & 11179‑5 Naming section to master artefact (A1, A2).
* **Define** registration lifecycle + workflow (A3).
* **Embed** AIHW definition quality + lineage requirements (A4).
* **Publish** ISO 15489 Retention/Disposal and Access/Retrieval docs (B1, B2).
* **Append** SSOT Integrity checklist (B3).
* **Create** AS 5021 concept representation guidance + code mapping policy (C1, C2).
* **Consolidate** Naming Guidelines to single canonical v2.1 (D1).
* **Cross‑bind** templates to master rules (D2).
* **Plan** linter/automation checks (D3).

***

If you’d like, I can **draft the specific inserts** for A1–A4 as copy‑pasteable blocks, then proceed to **update the Patient Data Dictionary** using the strengthened governance.
