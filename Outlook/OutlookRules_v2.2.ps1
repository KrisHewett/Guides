# Outlook Rules Compliance Package (v2.1)
# ISO9001 Document Control | Audit Ready: True

# STEP 1: Create Color Categories
New-Category -Name "01. Urgent" -Color "DarkRed"
New-Category -Name "02. Important" -Color "Red"
New-Category -Name "03. To Do" -Color "Orange"
New-Category -Name "04. Follow Up" -Color "DarkOrange"
New-Category -Name "05. PR & D" -Color "Brown"
New-Category -Name "06. Training" -Color "Peach"
New-Category -Name "07. Presentation" -Color "Yellow"
New-Category -Name "08. Conference" -Color "Gold"
New-Category -Name "09. Kids ( Personal )" -Color "LimeGreen"
New-Category -Name "10. Family ( Personal )" -Color "DarkGreen"
New-Category -Name "11. Friends ( Personal )" -Color "LightGreen"
New-Category -Name "12. Personal" -Color "Green"
New-Category -Name "13. SA Health - Meeting" -Color "Steel"
New-Category -Name "14. DAP - Meeting" -Color "Teal"
New-Category -Name "15. Safety & Quality - Meeting" -Color "LightTeal"
New-Category -Name "16. LHN's - Meeting" -Color "NavyBlue"
New-Category -Name "17. Patient Safety - Meeting" -Color "Blue"
New-Category -Name "18. Report Development" -Color "DarkPurple"
New-Category -Name "19. Data  Development" -Color "Lavender"
New-Category -Name "20. Report Update" -Color "DarkPink"
New-Category -Name "21. Data Update" -Color "Magenta"
New-Category -Name "22. Planned Leave" -Color "DarkGray"
New-Category -Name "23. Flexi Leave" -Color "WarmGray"
New-Category -Name "24. Lunch" -Color "Gray"
New-Category -Name "25. Travel" -Color "LightGray"

# STEP 2: Ensure folders exist before creating rules
# Folders: Junk, Other_JUNK, Org_JUNK, INBOX, High Priority, Team Inbox, Read Later, Social, Promotions


# STEP 3: Create Inbox Rules
New-InboxRule -Name "Junk Filter (Built-in)" -MoveToFolder "Junk" -StopProcessingRules $true
New-InboxRule -Name "Mailing Lists to Other_JUNK" -MoveToFolder "Other_JUNK" -StopProcessingRules $true
New-InboxRule -Name "DL Lists to Org_JUNK" -MoveToFolder "Org_JUNK" -StopProcessingRules $true
New-InboxRule -Name "Known Contacts to INBOX" -MoveToFolder "INBOX" -StopProcessingRules $true
New-InboxRule -Name "Leadership to High Priority" -MoveToFolder "High Priority" -StopProcessingRules $false
New-InboxRule -Name "Team to Team Inbox" -MoveToFolder "Team Inbox" -StopProcessingRules $false
New-InboxRule -Name "Flag Critical Keywords" -MarkImportance High -StopProcessingRules $false
New-InboxRule -Name "AutoReplies to JUNK" -MoveToFolder "Junk" -StopProcessingRules $true
New-InboxRule -Name "Auto-Reply to Requests" -StopProcessingRules $false
New-InboxRule -Name "Prioritize Urgent" -MarkImportance High -StopProcessingRules $false
