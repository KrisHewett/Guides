# Microsoft Outlook - Rules Wizard
The Rules Wizard in Microsoft Outlook allows users to automate actions on emails based on specific conditions.
This schema provides a flexible framework for managing emails efficiently.
You can customise rules to suit your workflow and automate repetitive tasks.

# Rules Wizard Schema

## Conditions
**Define the criteria for triggering the rule.**
- **Sender:** Emails from a specific person or domain.
- **Recipient:** Emails sent to a specific address or group.
- **Subject:** Emails containing specific words in the subject line.
- **Body:** Emails containing specific words in the message body.
- **Attachments:** Emails with or without attachments.
- **Importance:** Emails marked as high or low importance.
- **Date/Time:** Emails received within a specific time frame.

## Actions
**Specify what happens when the conditions are met.**
- **Move:** Move the email to a specific folder.
- **Copy:** Copy the email to another folder.
- **Delete:** Permanently delete or move the email to the trash.
- **Forward:** Forward the email to another address.
- **Reply:** Send an automatic reply using a template.
- **Categorize:** Assign a category or flag to the email.
- **Mark as Read/Unread:** Change the read status of the email.

## Exceptions
**Define conditions under which the rule should not apply.**
- Emails from specific senders or domains.
- Emails marked as high importance.
- Emails containing specific keywords.

## Execution Order
**Rules are processed in the order they appear in the list.**
- Rearrange the order to prioritise certain rules.

## Rule Types:
- **Client-Only Rules:** These run only when Outlook is open (e.g., rules involving local actions like moving emails to a PST file).
- **Server-Side Rules:** These run on the mail server, even when Outlook is closed (e.g., forwarding emails).

---

## Example Rule:
- **Condition:** If an email is from "example@domain.com" and contains "Invoice" in the subject.
- **Action:** Move the email to the "Invoices" folder and mark it as read.
- **Exception:** Do not apply if the email is marked as high importance.
