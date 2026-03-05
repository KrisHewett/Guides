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
- **Approver (Owner):** Validate completeness, approve or reject, and record approval metadata.
- **IT Team:** Execute approved changes exactly as specified and maintain Marval ticket accuracy.
- **Data Analyst (Owner):** Confirm access, record evidence, ensure log completeness, and close the workflow.

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
     - automation package/script IDs (if used)
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
- Maintain `SQU_REPORTs` Access Log with this schema:

| Group_Name | Security_Group | HADID | Email | Notes | Request_Details | Requested_DateTime | Updated_DateTime |
|------------|----------------|-------|-------|-------|-----------------|--------------------|------------------|

### Storage Table

| Absolute Path                                                     | Artifact Name        |
|-------------------------------------------------------------------|----------------------|
| Security_Approvals/SQU_REPORTs_Access_Mgmt_v1.3.0.md              | SOP Document         |
| Compliance/Logs/SQU_REPORTs_Access_Log.xlsx                       | Access Log           |
| _Reports/SQU_REPORTs.xlsx                                         | Catalog & User Info  |

### Change History

- v1.0 - Initial draft.
- v1.1 - Clarified fields and process.
- v1.2 - Formatting and compliance tracking updates.
- **v1.3 - Restructured to MCM v3.0.0 format; renamed sections; enforced imperative steps; aligned audit schema.**

---

## References

- MCM Directives v57.1.0.
- MCM Artefact Structure Standard v3.0.0.
- SQU internal Marval ticketing category guidance.

---

## Versioning Table

| Version | Date       | Author                          | Changes                                                                 |
|---------|------------|---------------------------------|-------------------------------------------------------------------------|
| 1.3.0   | 2026-03-05 | <<Kristopher.Hewett@sa.gov.au>> | Restructure to MCM v3.0.0; section renames; audit schema alignment.     |
