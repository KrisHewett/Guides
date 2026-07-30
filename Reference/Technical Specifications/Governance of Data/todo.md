# todo 

## 1. Core Data Governance Frameworks (Conceptual Resources)

1. **DAMA‑DMBOK (Data Management Body of Knowledge)**  
   *Purpose:* Foundational reference for data governance, data quality, metadata, and stewardship.  
   *Why it matters:* Common language across analysts, data custodians, and executives.

2. **ISO/IEC 38505 (Governance of Data)**  
   *Purpose:* Principles for governing data as an organisational asset.  
   *Why it matters:* Useful when aligning data governance to broader corporate governance.

3. **COBIT (Data & Information Governance components)**  
   *Purpose:* Control‑focused governance, often used alongside IT assurance.  
   *Why it matters:* Helps when governance needs to satisfy audit and assurance functions.

***

## 2. Health‑Specific Governance & Standards Resources

4. **HL7 & FHIR Governance Guidance**  
   *Purpose:* Data standards and governance for clinical and patient‑related data exchange.  
   *Why it matters:* Critical where incident, pathology, or patient safety data crosses systems.

5. **Australian Digital Health Agency (ADHA) – Data & Information Governance Guidance**  
   *Purpose:* National guidance on health data, interoperability, and stewardship.  
   *Why it matters:* Anchors governance decisions in Australian health context.

6. **AIHW Metadata Online Registry (METeOR)**  
   *Purpose:* Standard definitions for health data elements.  
   *Why it matters:* Reduces ambiguity in measures, indicators, and reporting logic.

***

## 3. Policy & Process Resources (Operational Governance)

7. **Data Governance Operating Models (Centralised / Federated / Hybrid)**  
   *Purpose:* Defines who owns, stewards, and approves data assets.  
   *Why it matters:* Especially relevant in federated health environments.

8. **Data Classification & Handling Frameworks**  
   *Purpose:* Define sensitivity, access rules, and handling requirements.  
   *Why it matters:* Directly impacts Power BI workspaces, sharing, and integration.

9. **Data Quality Management Frameworks (Rules, Monitoring, Escalation)**  
   *Purpose:* Systematic approach to completeness, timeliness, and accuracy.  
   *Why it matters:* Essential for patient incident and safety reporting credibility.

***

## 4. Data Governance Tools (Platforms)

10. **Microsoft Purview (Data Governance & Catalog)**  
    *Purpose:* Data catalogue, lineage, sensitivity labels, and discovery.  
    *Why it matters:* Native alignment with Power BI, Fabric, and M365 environments.

11. **Collibra Data Intelligence Cloud**  
    *Purpose:* Enterprise‑grade data governance, glossary, stewardship workflows.  
    *Why it matters:* Strong for formal governance and audit‑heavy organisations.

12. **Informatica Axon / EDC**  
    *Purpose:* Data governance integrated with data quality and integration tooling.  
    *Why it matters:* Useful where Informatica is already embedded.

13. **Alation Data Catalogue**  
    *Purpose:* Analyst‑friendly data discovery and stewardship.  
    *Why it matters:* Adoption is often higher among analytics teams.

***

## 5. Analytics & BI Governance Tools

14. **Power BI Tenant & Workspace Governance Controls**  
    *Purpose:* Controls for access, certification, endorsement, and sharing.  
    *Why it matters:* Directly impacts trust in dashboards and safety metrics.

15. **Power BI Deployment Pipelines**  
    *Purpose:* Governance of development → test → production.  
    *Why it matters:* Reduces risk of uncontrolled changes to reporting.

16. **Semantic Model Certification & Endorsement**  
    *Purpose:* Signals trusted data sources.  
    *Why it matters:* Prevents parallel “truths” in patient safety reporting.

***

## 6. Metadata, Lineage & Documentation Tools

17. **Business Glossaries (Integrated or Stand‑Alone)**  
    *Purpose:* Shared definitions for measures, incidents, and indicators.  
    *Why it matters:* Reduces interpretation risk across teams.

18. **Data Lineage Visualisation Tools**  
    *Purpose:* Show data flow from source systems to reports.  
    *Why it matters:* Critical for incident investigations and assurance.

***

## 7. Supporting & Enabling Resources

19. **Data Stewardship Role Descriptions & Playbooks**  
    *Purpose:* Clarify accountability without centralising all control.  
    *Why it matters:* Governance fails without clear human ownership.

20. **Data Governance Maturity Models**  
    *Purpose:* Assess current state and prioritise improvements.  
    *Why it matters:* Prevents over‑engineering too early.

***

### Practical note for your context

Given your focus on **patient incidents, Power BI workspaces, integration, and governance**, the highest‑leverage combination is usually:

* **Clear operating model + stewardship roles**
* **Microsoft Purview + Power BI governance controls**
* **Standardised definitions (AIHW / internal glossary)**

If you want, I can:

* Re‑order this **by maturity stage** (foundational → advanced), or
* Narrow it specifically to **Power BI / Fabric‑centric governance**, or
* Map these resources directly to **patient safety and incident reporting risks**.
