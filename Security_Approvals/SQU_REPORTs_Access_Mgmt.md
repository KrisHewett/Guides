
# Standard Operating Procedure (SOP)

**Title:** Request and Access Management for SQU Reporting
**Version:** 1.2

> last_updated: 2025-12-18
> owner: Data & Analytics (SQU)
> scope: SQU reporting users and IT staff managing SQU_REPORTs access
> severity: Medium
> approval_required: yes
> tags: [access, security, compliance]

---

## Purpose

Define the standardized, auditable steps to request, grant, update, and revoke user access, security groups, and roles for `SQU_REPORTs`. This SOP includes machine-readable metadata and clear, imperative steps to support automation and compliance tracking.

---

## Scope

Applies to all user access requests, security-group and role changes, and access revocations for `SQU_REPORTs` across SQU-managed environments.

---

## Responsibilities

- **Requester:** Complete the Access Request Form and submit it.
- **Approver (Owner):** Approve or reject the request within the SLA.
- **IT Team:** Execute approved changes and update the ticketing system.
- **Data Analyst (Owner):** Validate access, update records, and close the loop.

---

## Process Steps (imperative)

1. Submit Request

   - Requester completes the Access Request Form with user HADID, corporate email, requested Security Group and Role (one security group per request), justification, and required expiry date (if temporary).

2. Validate Request

   - Owner reviews and either `Approve` or `Reject` the request. If `Approve`, record approval in the Access Request Form and note the Marval ticket placeholder.

3. Create Ticket

   - IT or Requester creates a Marval ticket in the IT Self-Service Portal. Include: user HADID(s), email(s), approved Security Group, approved Role, approval reference (SOP id + approval timestamp), and any automation artifact references.

4. Execute Change

   - IT applies the access change to `SQU_REPORTs` (add/update user, assign group/role). Use automation where available and include script/package IDs in the ticket.

5. Verify Access

   - Owner or Requester verifies access is granted and functional. Use one-line verification checks and record verification timestamp.

6. Document and Close

   - Record the Marval Ticket Number, approval reference, change executor, and verification timestamp in `SQU_REPORTs` access log. Close the Marval ticket when verification passes.

7. Review and Revoke

   - For temporary access, schedule automatic revocation per the expiry date. For permanent role changes, record reason and keep evidence URL.

---

## Approval & SLA

- **Severity mapping:** High = 72 hours, Medium = 14 days, Low = next maintenance window.
- **Approval_required:** Yes for all changes that modify security groups or grant elevated roles.

---

## Audit & Compliance

- Log every change with timestamps, approver, executor, Marval ticket number, and verification evidence URL.
- Maintain `SQU_REPORTs` Access Log with the fields: `Group_Name`, `Security_Group`, `HADID`, `Email`, `Notes`, `Request_Details`, `Requested_DateTime`, `updated_DateTime`.

### Compliance Tracking Table

| Group_Name | Security_Group | HADID | Email | Notes | Request_Details | Requested_DateTime | updated_DateTime |
|------------|----------------|-------|-------|-------|-----------------|--------------------|-------------------|

---

## Storage Table

| **Absolute Path**                                 | **Artifact Name**   |
| ------------------------------------------------- | ------------------- |
| [Security_Approvals/SQU_REPORTs_Access_Mgmt.md](Security_Approvals/SQU_REPORTs_Access_Mgmt.md) | SOP Document        |
| [Compliance/Logs/SQU_REPORTs_Access_Log.xlsx](Compliance/Logs/SQU_REPORTs_Access_Log.xlsx)   | Access Log          |
| [_Reports/SQU_REPORTs.xlsx](_Reports/SQU_REPORTs.xlsx)                     | Catalog & User Info |

---

## Change History

- v1.0 — Initial draft
- v1.1 — Clarified fields and process (previous)
- v1.2 — Formatting and style updated, added compliance tracking (this update)

---
