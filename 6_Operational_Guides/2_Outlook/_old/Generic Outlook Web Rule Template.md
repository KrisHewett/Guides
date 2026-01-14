# ✅ **Generic Outlook Web Rule Template**

### **How to Apply**

1. Go to **Outlook Web → Settings → Mail → Rules**.
2. Click **Add New Rule** for each entry below.
3. Follow the **Condition**, **Action**, and **Folder** instructions.
4. Apply **Stop Processing More Rules** where indicated.
5. Repeat for all users or use PowerShell for bulk deployment.

***

## **Rule Template Table**

| **Rule Name**                  | **Condition**                                                               | **Action**                  | **Folder**    | **Stop Processing** |
| ------------------------------ | --------------------------------------------------------------------------- | --------------------------- | ------------- | ------------------- |
| Junk Filter (Built-in)         | Built-in Junk Filter                                                        | Set Junk Filter to High     | Junk          | Yes                 |
| Mailing Lists to Other\_JUNK   | Sender address contains mailing list domains OR bulk senders                | Move to Folder              | Other\_JUNK   | Yes                 |
| DL Lists to Org\_JUNK          | Sender is a distribution list                                               | Move to Folder              | Org\_JUNK     | Yes                 |
| Known Contacts to INBOX        | Sender is in Contacts OR Org directory OR To Me only                        | Move to Folder              | INBOX         | Yes                 |
| Leadership to High Priority    | Sender is in Leadership group                                               | Move to Folder              | High Priority | No                  |
| Team to Team Inbox             | Sender is in Team distribution list                                         | Move to Folder              | Team Inbox    | No                  |
| Newsletters to Read Later      | Subject contains “Newsletter” OR “Unsubscribe”                              | Move to Folder              | Read Later    | No                  |
| Social to Social               | Sender domain contains linkedin.com, facebookmail.com, twitter.com          | Move to Folder              | Social        | No                  |
| Categorize Compliance Keywords | Subject contains CIM OR DAP OR NSQHS OR QUIP                                | Categorize                  | —             | No                  |
| Flag Critical Keywords         | Subject or Body contains “Patient Safety”, “Data Analysis”, “Action Needed” | Flag for Follow-up          | —             | No                  |
| Forward Reports                | Subject contains “Report” OR “Dashboard”                                    | Forward to OneNote or Teams | —             | No                  |
| AutoReplies to JUNK            | Message type is Auto Reply                                                  | Move to Folder              | Junk          | Yes                 |
| Auto-Reply to Requests         | Subject contains “Request” OR “Action Needed”                               | Send Template Reply + Flag  | —             | No                  |
| Prioritize Urgent              | Subject contains “Urgent”, “ASAP”, “Immediate”                              | Set High Importance         | —             | No                  |

***

### **Deployment Options**

* **Manual**: Each user creates rules in OWA.
* **Bulk via PowerShell**:

    ```powershell
    Get-Mailbox | ForEach-Object {
        New-InboxRule -Mailbox $_.PrimarySmtpAddress -Name "Leadership to High Priority" -From "executive@domain.com" -MoveToFolder "Inbox\High Priority"
    }
    ```

* **Power Automate**: Import JSON template for organization-wide automation.

***
