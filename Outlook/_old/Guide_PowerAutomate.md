# **Power Automate flow**
Replicates the Outlook email management strategy with advanced automation.

[OutlookEmailManagementFlow](OutlookEmailManagementFlow.json)

### 🔧 What This Flow Does:
- **Triggers** when a new email arrives in your Inbox.
- **Filters and prioritizes** based on:
  - Sender (e.g., manager, team)
  - Subject/body keywords (e.g., “Patient Safety”, “Urgent”)
  - Domain (e.g., spam or social media)
- **Performs actions** like:
  - Moving to folders (`High Priority`, `Team Inbox`, `Read Later`, etc.)
  - Categorizing and flagging
  - Sending auto-replies
  - Forwarding to OneNote or Teams

---

### 📌 Next Steps:
To import this into Power Automate:
1. Go to Power Automate.
2. Click **My Flows** → **Import** → **Import Package (.zip/.json)**.
3. Upload the `.json` file.
4. Reconfigure any **connections** (e.g., Outlook, OneNote, Teams) as needed.
