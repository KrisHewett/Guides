# Outlook Rules Compliance Package (v1.0)
# External Review Rule
New-InboxRule -Name "External Review" `
    -Mailbox "user@domain.com" `
    -FromScope NotInOrganization `
    -MoveToFolder "Inbox\Review" `
    -StopProcessingRules $false

# Sensitive Keyword Flag Rule
New-InboxRule -Name "Sensitive Keyword Flag" `
    -Mailbox "user@domain.com" `
    -SubjectContainsWords @("confidential","urgent","restricted") `
    -MarkImportance High `
    -StopProcessingRules $false

# Leadership Priority Routing Rule
New-InboxRule -Name "Leadership Priority" `
    -Mailbox "user@domain.com" `
    -From @("ceo@domain.com","vp@domain.com","manager@domain.com") `
    -MoveToFolder "Inbox\Priority" `
    -StopProcessingRules $false
