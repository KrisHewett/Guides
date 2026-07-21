# **Master Guide: Universal Outlook Web Rules Strategy**

## **1. Why Use OWA Rules?**

* **Server-side execution**: Rules apply across all devices (desktop, web, Android, iOS).
* **Consistency**: No dependency on .rwz files or desktop-only features.
* **Scalability**: Easy to manage centrally.

***

## **2. Core Principles**

* **Centralize in OWA**: Create and manage all rules in Outlook Web.
* **Keep rules simple**: Avoid complex conditions and exceptions.
* **Order matters**: Rules run top-down; use **Stop Processing More Rules** for critical ones.
* **Test on mobile**: Ensure compatibility with Android/iOS.

***

## **3. Master Categories & Examples**

### **A. Priority Handling**

* **Purpose**: Surface critical emails quickly.
* **Examples**:
  * Move emails from your manager to **Priority** folder.
  * Apply category **Urgent** for subjects containing *Action Required*.
* **Tip**: Use **Stop Processing More Rules**.

***

### **B. Noise Reduction**

* **Purpose**: Reduce clutter.
* **Examples**:
  * Move *@linkedin.com*, *@facebookmail.com* to **Social** folder.
  * Delete newsletters from *@marketing.* domains.
* **Tip**: Use **contains words in sender’s address** or **subject**.

***

### **C. Categorization & Tagging**

* **Purpose**: Organize for search and reporting.
* **Examples**:
  * Apply **Finance** category for *invoice*, *receipt* keywords.
  * Apply **Projects** category for project codes.
* **Tip**: Categories sync across devices.

***

### **D. Auto-Forwarding & Delegation**

* **Purpose**: Ensure continuity.
* **Examples**:
  * Forward emails with *Escalation* in subject to team lead.
* **Tip**: Check org policy for forwarding restrictions.

***

### **E. Device-Friendly Simplification**

* **Purpose**: Ensure mobile compatibility.
* **Examples**:
  * Stick to **Move**, **Delete**, **Categorize**, **Forward**.
* **Tip**: Avoid desktop-only actions like alerts or sounds.

***

### **F. Compliance & Safety**

* **Purpose**: Prevent data leaks.
* **Examples**:
  * Block forwarding of emails with *confidential* or *patient data*.
  * Move such emails to **Compliance Review** folder.
* **Tip**: Use exceptions for fine-tuning.

***

## **4. Backup & Documentation**

* Use **PowerShell** for backup:

    ```powershell
    Get-InboxRule -Mailbox user@domain.com | Export-Csv "C:\InboxRules.csv" -NoTypeInformation
    ```

* Maintain a **CSV master list** for auditing and recovery.

***

## **5. Suggested Workflow**

1. Define categories and folders.
2. Create rules in OWA in priority order.
3. Test on Android/iOS.
4. Document rules in CSV.
5. Review quarterly for relevance.

***
