Here’s a **complete procedure for Option 1 (PowerShell + Exchange Online)** using your most recent CSV (`ordered_email_rules.csv`):

***

## ✅ **Step 1: Prepare Environment**

1.  **Install Exchange Online PowerShell Module**
    ```powershell
    Install-Module ExchangeOnlineManagement
    ```
2.  **Connect to Exchange Online**
    ```powershell
    Connect-ExchangeOnline -UserPrincipalName yourUPN@domain.com
    ```
    Replace `yourUPN@domain.com` with your actual account.

***

## ✅ **Step 2: Prepare Your CSV**

*   Use the **ordered\_email\_rules.csv** file you downloaded.
*   Ensure columns are:
    *   `Rule Name`
    *   `Condition`
    *   `Action`
    *   `Folder`
    *   `Stop Processing`

***

## ✅ **Step 3: Script Logic**

The script will:

*   Read the CSV.
*   Loop through each row.
*   Create rules using `New-InboxRule` with appropriate parameters.

### **Key PowerShell Parameters**

*   `-Name` → Rule Name
*   `-From` or `-SubjectContainsWords` → Based on Condition
*   `-MoveToFolder` → Folder path (e.g., `Inbox\\High Priority`)
*   `-MarkImportance` → For “Set High Importance”
*   `-FlaggedForAction` → For “Flag for Follow-up”
*   `-StopProcessingRules` → Yes/No

***

## ✅ **Step 4: Example Script**

```powershell
# Path to your CSV
$csvPath = "C:\\Scripts\\ordered_email_rules.csv"

# Import CSV
$rules = Import-Csv -Path $csvPath

foreach ($rule in $rules) {
    $params = @{
        Name = $rule.'Rule Name'
        StopProcessingRules = ($rule.'Stop Processing' -eq 'Yes')
    }

    # Handle conditions
    if ($rule.Condition -like "*From*") {
        $params['From'] = ($rule.Condition -replace "From ", "").Split(" OR ")
    }
    elseif ($rule.Condition -like "*Subject*") {
        $params['SubjectContainsWords'] = ($rule.Condition -replace "Subject contains ", "").Split(" OR ")
    }

    # Handle actions
    switch ($rule.Action) {
        "Move to Folder" {
            $params['MoveToFolder'] = "Inbox\\" + $rule.Folder
        }
        "Set High Importance" {
            $params['MarkImportance'] = "High"
        }
        "Flag for Follow-up" {
            $params['FlaggedForAction'] = "FollowUp"
        }
        "Categorise" {
            $params['AssignCategories'] = @("CIM","DAP","NSQHS","QUIP") # Adjust as needed
        }
    }

    # Create rule
    New-InboxRule @params
}
```

***

## ✅ **Step 5: Validate**

*   Run `Get-InboxRule` to confirm rules were created.
*   Test with sample emails.

***

### ⚠️ **Important Notes**

*   Folder names must match Outlook folder paths exactly.
*   Complex conditions (e.g., Body text) may require additional parameters like `-BodyContainsWords`.
*   Auto-reply and forwarding cannot be done with `New-InboxRule` alone; you need **Transport Rules** or **Power Automate** for those.

***

👉 Do you want me to **generate the full production-ready script** with:

*   All conditions mapped properly (From, Subject, Body)?
*   Handling multiple actions like categorization and flagging?
*   Error handling and logging?

Or should I also **include instructions for Transport Rules** for auto-replies and forwarding?
