# ================================
# Outlook Inbox Rules Automation
# ================================

# CONFIGURATION
$csvPath = "R:\\Data Analysis and Reporting\\_Resources\\Scripts & Code\\Libraries\\Guidelines\\Outlook\\ordered_email_rules.csv"
$logPath = "R:\\Data Analysis and Reporting\\_Resources\\Scripts & Code\\Libraries\\Guidelines\\Outlook\\InboxRuleLog.txt"

# Start logging
Start-Transcript -Path $logPath -Append

try {
    # Import Exchange Online module
    Import-Module ExchangeOnlineManagement -ErrorAction Stop

    # Connect to Exchange Online
    Connect-ExchangeOnline -UserPrincipalName yourUPN@domain.com -ErrorAction Stop

    # Import rules from CSV
    $rules = Import-Csv -Path $csvPath

    foreach ($rule in $rules) {
        Write-Host "Processing rule: $($rule.'Rule Name')"

        # Initialize parameters
        $params = @{
            Name = $rule.'Rule Name'
            StopProcessingRules = ($rule.'Stop Processing' -eq 'Yes')
        }

        # Parse conditions
        if ($rule.Condition -match "From") {
            $params['From'] = ($rule.Condition -replace "From ", "").Split(" OR ")
        }
        elseif ($rule.Condition -match "Subject contains") {
            $params['SubjectContainsWords'] = ($rule.Condition -replace "Subject contains ", "").Split(" OR ")
        }
        elseif ($rule.Condition -match "Body contains") {
            $params['BodyContainsWords'] = ($rule.Condition -replace "Body contains ", "").Split(" OR ")
        }

        # Parse actions
        switch -Regex ($rule.Action) {
            "Move to Folder" {
                if ($rule.Folder) {
                    $params['MoveToFolder'] = "Inbox\\" + $rule.Folder
                } else {
                    Write-Warning "Folder missing for Move action in rule: $($rule.'Rule Name')"
                }
            }
            "Set High Importance" {
                $params['MarkImportance'] = "High"
            }
            "Flag for Follow-up" {
                $params['FlaggedForAction'] = "FollowUp"
            }
            "Categorise" {
                # Extract categories from condition text
                $categories = ($rule.Condition -split " OR " | ForEach-Object { $_ -replace "Subject contains ", "" })
                $params['AssignCategories'] = $categories
            }
            default {
                Write-Warning "Unsupported action '$($rule.Action)' in rule: $($rule.'Rule Name')"
            }
        }

        # Create rule
        try {
            New-InboxRule @params
            Write-Host "Rule created successfully: $($rule.'Rule Name')"
        }
        catch {
            Write-Error "Failed to create rule: $($rule.'Rule Name') - $_"
        }
    }

    Write-Host "All rules processed."
}
catch {
    Write-Error "Script failed: $_"
}
finally {
    Stop-Transcript
    Disconnect-ExchangeOnline -Confirm:$false
}
