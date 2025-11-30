# **Standard Operating Procedure (SOP)**

## **Data Analyst Onboarding & DAP PC Setup for SQU**

***

### **1. Purpose**

Ensure secure, compliant, and efficient onboarding of Data Analysts and proper configuration of DAP workstations within the Safety & Quality Unit (SQU).

***

### **2. Scope**

Applies to:

* New Data Analysts
* IT staff responsible for workstation setup and compliance remediation

***

### **3. Risk, Impact & Priority**

* **Category:** Security / Endpoint Compliance
* **Impact:** High – Non-compliance exposes enterprise to critical vulnerabilities
* **Priority:** High
* **Assignment Group:** Desktop Engineering / Endpoint Security

***

### **4. Key Risks**

* Outdated software with known CVEs (Java 6/8)
* Duplicate installations causing patch conflicts (Teams Classic)
* Missing approved applications required for secure operations
* Licensing compliance gaps (Adobe Acrobat)

***

## **5. Onboarding Workflow**

| **Step**                | **Description**                                                  |
| ----------------------- | ---------------------------------------------------------------- |
| Account Provisioning    | Create AD account, assign roles, verify permissions.             |
| Hardware Setup          | Confirm workstation specs meet analytics requirements (CPU/RAM). |
| Software Installation   | Deploy required apps via SCCM or Intune.                         |
| Compliance Verification | Run workstation compliance audit before handover.                |

***

## **6. Workstation Compliance Standards**

* Apply latest **Windows updates** and security patches
* Set PowerShell execution policy:
    `Set-ExecutionPolicy RemoteSigned`
* **Coding Standards:**
  * No tabs; enforce **4 spaces per indentation level**
  * ASCII-only output for `Write-Host`
  * Proper closure of loops and try/catch blocks
* Validate **Active Directory group memberships**
* Confirm **VPN and MFA** configuration

***

## **7. DAP PC Setup Checklist**

* Install:
  * **Power BI Desktop** (latest)
  * **SQL Server Management Studio (SSMS)**
  * **Python** (with `pandas`, `numpy`, `matplotlib`)
  * **R** (if required)
* Configure **ODBC connections** for SQU databases
* Validate access to **Data Analytics Platform (DAP)** and APIs
* Install **endpoint protection** and monitoring agents
* Enable **BitLocker disk encryption**

***

## **8. Analyst Workflow Essentials**

* Follow **Ultimate Directive Framework** for compliance
* Ensure **data anonymization** for sensitive health records
* Integrate project tracking data with **Power BI dashboards**
* Validate refresh schedules and gateway configurations
* Use **Git/Azure DevOps** for version control

***

## **9. Security & Compliance Remediation**

### **Configuration Item:**

`[Workstation Name or Asset Tag]` *(to be filled by requester)*

#### **Actionable Steps & Rationale**

1. **Remove Vulnerabilities**
    * Uninstall Java(TM) 6 Update 21 and Java 8 Update 161
        *Rationale:* Outdated versions contain critical CVEs

2. **Resolve Duplicate Installations**
    * Remove Microsoft Teams Classic; retain MSIX-based New Teams
        *Rationale:* Prevent update conflicts and ensure patch consistency

3. **Validate and Patch Existing Apps**
    * Upgrade WindowsAppRuntime, Microsoft.UI.Xaml, Microsoft 365 Apps (Version 2510), Azure Data Studio (1.52.0), Power BI Report Builder, Git (2.52.0)
        *Rationale:* Outdated versions may have vulnerabilities or lack compliance features

4. **Install Missing Approved Applications**
    * Power BI Desktop, Visual Studio Code, Node.js LTS, R Studio, PowerShell 7.x, GitHub CLI
        *Rationale:* Required for reporting, development, analytics, and automation

5. **Licensing Compliance**
    * Validate Adobe Acrobat Pro Level 21 subscription; remove Acrobat 2020 if superseded
        *Rationale:* Ensure legal compliance and avoid redundant licensing costs

6. **Post-Setup Validation**
    * Run Microsoft Secure Score, Intune compliance check, patch status verification
        *Rationale:* Confirms remediation success and closes security gaps

***

## **10. Key Policies**

* No repeated offers for PDFs or cheat sheets
* Scripts must adhere to **security and readability standards**
* Avoid unnecessary **Gboard setup references**

***

## **11. Configuration Settings (Non-Admin & Managed Devices)**

* **Non-Administrator Access**
  * Assign **Standard User role**; block local admin rights.
  * Elevation only via **Just-In-Time (JIT)** or **Privileged Access Management (PAM)** workflows.
* **Desktop Imaging**
  * Use **approved enterprise image** with security baseline (BitLocker, Defender, SCCM/Intune enrollment).
* **Software Deployment**
  * Deploy all apps via **SCCM/Intune**; prohibit manual installs.
* **Group Policy**
  * Disable unauthorized software installs.
  * Restrict access to system configuration tools.
* **Compliance**
  * Enforce **Intune compliance policies**, **Secure Score**, and **audit logging**.

***

## **12. Policy Compliance Notes**

* **Electronic Communication**
  * Use only SA Health-approved channels (Outlook, Teams).
  * Apply protective markings (OFFICIAL, OFFICIAL: Sensitive) on documents and emails.
* **Information Security**
  * Report security incidents immediately to SA Health Security Services.
* **Acceptable Use**
  * Devices for official use only; personal cloud storage prohibited.
* **Digital Health Governance**
  * All ICT changes, software requests, and configuration updates must follow SA Health’s Digital Health Governance and Investment Framework.

***

## **13. Compliance Tracking Table**

| **Action**                            | **Completed** | **Date** | **Verified By** |
| ------------------------------------- | ------------- | -------- | --------------- |
| Remove Vulnerabilities (Java)         | \[ ]          |          |                 |
| Resolve Duplicate Installations       | \[ ]          |          |                 |
| Validate and Patch Existing Apps      | \[ ]          |          |                 |
| Install Missing Approved Applications | \[ ]          |          |                 |
| Licensing Compliance                  | \[ ]          |          |                 |
| Post-Setup Validation                 | \[ ]          |          |                 |

***

✅ **This version now fully covers:**

* SA Health governance and security policies.
* Non-admin access enforcement.
* Enterprise imaging and deployment standards.
* Protective markings and incident reporting.
* Operational compliance tracking.

***
