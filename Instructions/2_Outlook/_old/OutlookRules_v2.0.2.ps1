# Outlook Rules Compliance Package (v2.0.2 Patch)
# ISO9001 Document Control | Audit Ready: True

# IMPORTANT: Ensure these folders exist before running this script:
# Junk, Other_JUNK, Org_JUNK, INBOX, High Priority, Team Inbox, Read Later, Social, Promotions

# Rule 1.0: Junk Filter (Built-in) | Notes: Baseline spam control
New-InboxRule -Name "Junk Filter (Built-in)" -MoveToFolder "Junk" -MarkImportance High -StopProcessingRules $true

# Rule 2.0: Mailing Lists to Other_JUNK | Notes: Reduces non-critical bulk mail
New-InboxRule -Name "Mailing Lists to Other_JUNK" -MoveToFolder "Other_JUNK" -StopProcessingRules $true

# Rule 3.0: DL Lists to Org_JUNK | Notes: Filters internal bulk communications
New-InboxRule -Name "DL Lists to Org_JUNK" -MoveToFolder "Org_JUNK" -StopProcessingRules $true

# Rule 4.0: Known Contacts to INBOX | Notes: Ensures priority for direct contacts
New-InboxRule -Name "Known Contacts to INBOX" -MoveToFolder "INBOX" -StopProcessingRules $true

# Rule 5.0: Leadership to High Priority | Notes: Critical visibility for leadership
New-InboxRule -Name "Leadership to High Priority" -MoveToFolder "High Priority" -StopProcessingRules $false

# Rule 6.0: Team to Team Inbox | Notes: Keeps team communication organized
New-InboxRule -Name "Team to Team Inbox" -MoveToFolder "Team Inbox" -StopProcessingRules $false

# Rule 7.0: Newsletters to Read Later | Notes: Non-urgent reading material
New-InboxRule -Name "Newsletters to Read Later" -MoveToFolder "Read Later" -StopProcessingRules $false

# Rule 8.0: Social to Social | Notes: Segregates social notifications
New-InboxRule -Name "Social to Social" -MoveToFolder "Social" -StopProcessingRules $false

# Rule 9.0: Promotions to Promotions | Notes: Handles marketing emails
New-InboxRule -Name "Promotions to Promotions" -MoveToFolder "Promotions" -StopProcessingRules $false

# Rule 10.0: Categorize Compliance Keywords | Notes: Compliance tagging for audits
New-InboxRule -Name "Categorize Compliance Keywords" -ApplyCategory "Compliance" -StopProcessingRules $false

# Rule 11.0: Flag Critical Keywords | Notes: Ensures visibility for safety issues
New-InboxRule -Name "Flag Critical Keywords" -FlagToFollowUp Today -StopProcessingRules $false

# Rule 12.0: Forward Reports | Notes: Automates reporting workflow
New-InboxRule -Name "Forward Reports" -ForwardTo "OneNote@domain.com" -StopProcessingRules $false

# Rule 13.0: AutoReplies to JUNK | Notes: Prevents clutter from auto responses
New-InboxRule -Name "AutoReplies to JUNK" -MoveToFolder "Junk" -StopProcessingRules $true

# Rule 14.0: Auto-Reply to Requests | Notes: Improves response time
New-InboxRule -Name "Auto-Reply to Requests" -FlagToFollowUp Today -StopProcessingRules $false

# Rule 15.0: Prioritize Urgent | Notes: Highlights time-sensitive emails
New-InboxRule -Name "Prioritize Urgent" -MarkImportance High -StopProcessingRules $false

