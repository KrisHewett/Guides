## Workstation SOP — Data Analyst Onboarding (condensed)

Purpose: provide a short, action-focused checklist to provision and hand over analyst workstations that meet security and analytics needs.

Scope: new Data Analysts and IT staff who prepare DAP workstations.

Core steps

- Account provisioning: create AD account and assign groups/roles.
- Image & baseline: deploy approved enterprise image (BitLocker, Defender, Intune).
- Software: install approved apps via SCCM/Intune (Power BI Desktop, SSMS, Python, R, VS Code).
- Connectivity: validate VPN, MFA, ODBC/gateway access to data sources.
- Compliance check: run Intune compliance and record Secure Score results.

Essential checklist (quick)

- Windows updates and security patches applied.
- Endpoint protection active and reporting.
- BitLocker enabled.
- Required analytics apps installed and versioned.
- AD group memberships and permissions verified.

Quick remediation priorities

1. Remove known-vulnerable runtime installs (e.g., legacy Java builds).
2. Resolve duplicate/legacy apps (e.g., Teams Classic) to avoid update conflicts.
3. Patch core tooling (Office 365, Power BI, Azure Data Studio, Git).

Useful commands (run as admin where required)

```
Set-ExecutionPolicy RemoteSigned
# Check BitLocker status
manage-bde -status
```

Handover notes

- Record device name/asset tag, installed app versions, and Marval ticket IDs for any exceptions.
- Include a single-line summary of access granted (e.g., DAP read, write if required).

More details and policy references are maintained centrally; use this page for quick provisioning and handover only.
