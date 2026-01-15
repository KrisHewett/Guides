MCM Directive Enhancements
==========================

Date: 2025-12-18

Purpose
-------

Collect and standardise Minimum Change Management (MCM) directive content for the Safety & Quality Unit (SQU) so directives are unambiguous, machine-readable, and automation-friendly across repos and environments.

Enhancement Summary
-------------------

- Add a required metadata schema for every directive (human + machine readable).
- Provide concrete detection and remediation examples (PowerShell, registry, MSI GUIDs).
- Include verification, rollback, and telemetry guidance (Kusto/SCCM queries).
- Prescribe phrasing and terminology to ensure accurate translation and compatibility with Intune/SCCM/Runbooks.

Required Directive Metadata (recommended fields)
------------------------------------------------

- id: SQU-MCM-YYYY-###
- title: short descriptive title
- version: semantic (major.minor)
- last_updated: YYYY-MM-DD
- owner: team or role (e.g. Desktop Engineering)
- scope: devices/users affected
- severity: High/Medium/Low (map to SLA)
- cve_refs: list of linked CVE IDs (if applicable)
- approval_required: yes/no
- change_window: preferred maintenance window
- detection_logic: object (powershell/registry/msi/file checks)
- remediation_steps: object (script path, silent command, package id)
- verification_steps: object (one-liner checks, telemetry queries)
- rollback_steps: object (reinstall, restore snapshot, contact)
- dependencies: other directives or packages
- automation_artifact: Intune App ID / SCCM Package ID / script path
- tags: [intune, sccm, powershell, security]

Machine-Readable Template (YAML example)
----------------------------------------

```yaml
id: SQU-MCM-2025-001
title: Uninstall legacy Java runtimes
version: 1.0
last_updated: 2025-12-18
owner: Desktop Engineering
scope: All Windows DAP-managed devices
severity: High
cve_refs: [CVE-YYYY-XXXX]
approval_required: yes
change_window: ASAP (72 hours for High severity)
detection_logic:
  powershell: |
    $keys = 'HKLM:\SOFTWARE\JavaSoft\Java Runtime Environment','HKLM:\SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment'
    Get-ChildItem -Path $keys -ErrorAction SilentlyContinue
remediation_steps:
  script: scripts/uninstall-java.ps1
  silent_command: 'msiexec /x {PRODUCT-GUID} /qn'
verification_steps:
  powershell: |
    -not (Test-Path 'HKLM:\SOFTWARE\JavaSoft')
rollback_steps: |
  # Not supported for uninstallation. Reinstall approved Java if required.
automation_artifact:
  intune_app_id: 00000000-0000-0000-0000-000000000000
tags: [security, java, high]
```

Detection & Remediation Guidance (phrasing & examples)
-----------------------------------------------------

- Prefer registry keys, file hashes, or MSI product GUIDs for detection. Avoid `Win32_Product` queries (slow, intrusive).
- Use exact registry paths and sample PowerShell one-liners for deterministic detection.
- Provide silent uninstall/install command strings and expected exit codes. Map non-zero exit codes to remediation follow-ups.

Example detection (PowerShell, registry-based)

```powershell
$regPaths = 'HKLM:\SOFTWARE\JavaSoft\Java Runtime Environment','HKLM:\SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment'
Get-ChildItem -Path $regPaths -ErrorAction SilentlyContinue | Select-Object PSPath, DisplayName, DisplayVersion
```

Example verification (Intune/SCCM/Kusto snippets)

```kql
// Devices without legacy Java registry key
DeviceRegistry
| where RegistryKey startswith "HKEY_LOCAL_MACHINE\\SOFTWARE\\JavaSoft"
| summarize count() by DeviceName, RegistryKey
```

Severity → Scheduling (rationale & calculation)
-------------------------------------------

- Map `severity` to SLA windows to make scheduling deterministic. Example mapping:
  - High: 72 hours (3 days) target remediation
  - Medium: 14 days (2 weeks)
  - Low: next maintenance window (30 days)
- Rationale: A 72-hour window balances security urgency and operational risk. Use mean-time-to-remediation (MTTR) telemetry to adjust.
- Calculation example: If 500 devices and deployment can update 50 devices per hour, expected time = 500 / 50 = 10 hours (well within 72 hours). Include rollback contingency equal to 10% of expected time (1 hour).

Compliance Tracking Table improvements
------------------------------------

- Add columns: `automation_artifact`, `evidence_url`, `severity`, `target_remediation_deadline`.
- Populate `target_remediation_deadline` by adding `last_updated` + SLA days based on severity.

Phrasing and Terminology (for accurate translation and compatibility)
------------------------------------------------------------------

- Use imperative, present-tense verbs in steps (e.g., "Uninstall Java 8 Update 161", not "Java 8 should be uninstalled").
- Use canonical package names and vendor terminology (e.g., "Microsoft Teams (Classic)" vs "Teams Classic").
- Avoid ambiguous terms like "latest"—prefer explicit version ranges or minimum versions (e.g., ">= 2.52.0").
- Use consistent field names: `detection_logic`, `remediation_steps`, `verification_steps`, `rollback_steps`.

Examples to add to the Onboarding doc
-------------------------------------

1) Uninstall legacy Java (full YAML + script link)
2) Enforce PowerShell ExecutionPolicy `RemoteSigned` (detection, remediation, verification)
3) Remove Microsoft Teams Classic (detection by product GUID, remediation via SCCM/Intune)

Next Steps
----------

- Create `mcm-directives/` folder with YAML directives and a `scripts/` scaffold for remediation and verification.
- Alternatively patch `Onboarding/Workstation.md` to include a compact `MCM Directive Template` and two example directives inline.

Enhancement suggested by: Desktop Engineering / SQU (draft)
