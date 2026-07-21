# Standard Operating Procedure - Request and Access Management for SQU Reporting (SQU_REPORTs)

Developed by: <<Kristopher.Hewett@sa.gov.au>>
Version: 1.3.0
Revision Date: 2026-03-05
Compliance Baseline: MCM v57.1.0
Conforms To Directive: MCM Directives v57.1.0
SSOT Path: Security_Approvals/SQU_REPORTs_Access_Mgmt_v1.3.0.md

---

## Purpose

Define the mandated, auditable, machine-readable process to request, approve, grant, validate, modify, and revoke user
access, security groups, and roles for `SQU_REPORTs`. Steps are imperative to enable automation, deterministic
compliance validation, script integration, and audit reproducibility.

---

## Primary Content Sections

### Scope

Applies to all access requests, role assignments, security-group changes, privileged access grants, and access
revocations within SQU-managed `SQU_REPORTs` environments.

### Responsibilities

- **Requester:** Complete and submit the Access Request Form with all required fields.
- **Approver:** Validate completeness, approve or reject, and record approval metadata.
- **IT Team:** Execute approved changes exactly as specified and maintain Marval ticket accuracy.
- **Data Analyst:** Confirm access, record evidence, ensure log completeness, and close the workflow.

### Workflow

1. **Submit Request**
   - Complete the Access Request Form with:
     - user HADID
     - corporate email
     - requested **Security Group** (exact string; **one security group per request**)
     - requested **Role** (exact string)
     - business justification
     - expiry date for temporary access (if applicable)
   - Submit the form via the designated intake channel.

2. **Validate Request**
   - Owner reviews for correctness, justification, scope, and conflicts.
   - Decide **Approve** or **Reject**.
   - If **Approved**, record:
     - approval timestamp
     - SOP version + approval reference
     - Marval ticket placeholder
     - approval metadata inside the Access Request Form

3. **Create Ticket**
   - Requester or IT creates a Marval ticket with structured fields:
     - HADID(s)
     - corporate email(s)
     - approved Security Group
     - approved Role
     - approval reference: `SOP-ID + timestamp`
   - Use the Marval category path:
     - `Home > Access & Software > HAD Account > 07 - Security Group - Access Request`

4. **Execute Change**
   - IT applies approved changes to `SQU_REPORTs`:
     - add user
     - update group
     - assign or remove role
   - Use automation where available and record script/package IDs in the Marval ticket.

5. **Verify Access**
   - Owner or Requester verifies functional access using concise checks.
   - Record the verification timestamp.
   - Provide a direct service/report URL in the verification notes.

6. **Document and Close**
   - Record in the `SQU_REPORTs` Access Log:
     - Marval Ticket Number
     - approval reference
     - change executor
     - verification timestamp
   - Close the Marval ticket once verification passes.

7. **Review and Revoke**
   - For **temporary access**: schedule automated revocation on the expiry date.
   - For **permanent changes**: record the reason and evidence URL.
   - Ensure revocations are audit-logged with the same fields as grants.

### Approvals

- **Severity mapping:**
  - High → 72 hours
  - Medium → 14 days
  - Low → next maintenance window
- **Approval requirement:** mandatory for any change that modifies security groups or grants elevated roles.

### Audit & Compliance

- Log every change with timestamps, approver, executor, Marval ticket number, and verification evidence URL.
- Maintain [SQU_USER_ACCESS](./_Reports/_Users/SQU_USER_ACCESS.xlsx) Access Log.

---

## References

- [SQU_REPORTs_Access_Mgmt_v1.3.0](./Security_Approvals/SQU_REPORTs_Access_Mgmt_v1.3.0.md)
- [SQU_USER_ACCESS](./_Reports/_Users/SQU_USER_ACCESS.xlsx)
- [Report_Catalogue](./_Reports/_Report_Catalogue\Report_Catalogue.xlsx)
- [Digital Health SA](https://inside.sahealth.sa.gov.au/wps/wcm/connect/Non-public+Content/SA+Health+Intranet/Department/Digital+Health+SA/Digital+Health+SA)
- [Self Service Portal](https://dhsa/selfservice)

---

## Versioning Table

| Version | Date       | Author                          | Changes                                                 |
|---------|------------|---------------------------------|---------------------------------------------------------|
| 1.3.0   | 2026-03-05 | <<Kristopher.Hewett@sa.gov.au>> | Restructure to section renames; audit schema alignment. |
| 1.2.0   | 2026-01-28 | <<Kristopher.Hewett@sa.gov.au>> | Formatting and compliance tracking updates.             |
| 1.1.0   | 2025-12-15 | <<Kristopher.Hewett@sa.gov.au>> | Clarified fields and process.                           |
| 1.0.0   | 2025-12-05 | <<Kristopher.Hewett@sa.gov.au>> | Initial draft.                                          |
