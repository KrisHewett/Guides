# iCal Properties Guide

---

### Structure

### Core Components

These define the hierarchy and container elements in an `.ics` file:

1. **VCALENDAR**
    - The root element.
    - Must include `BEGIN:VCALENDAR` and `END:VCALENDAR`.
    - Contains metadata like `VERSION:2.0` and `PRODID` (product identifier).
    - All other components (events, todos, etc.) live inside this block.

2. **VTIMEZONE** *(optional but recommended)*
    - Defines time zone rules for events.
    - Includes `TZID`, `STANDARD`, and `DAYLIGHT` subcomponents.

3. **VEVENT**
    - Represents an event.
    - Each event starts with `BEGIN:VEVENT` and ends with `END:VEVENT`.
    - Holds properties like start/end time, summary, description.

4. **VALARM** *(optional)*
    - Nested inside `VEVENT` or `VTODO`.
    - Defines reminders (e.g., `ACTION:DISPLAY`, `TRIGGER:-PT15M`).

5. **Other Components** *(as needed)*
    - **VTODO**: Tasks with deadlines.
    - **VJOURNAL**: Notes or journal entries.
    - **VFREEBUSY**: Availability info.

---

### Common Properties

| Order | Property | Purpose |
| --- | --- | --- |
| 1. | **UID** | A globally unique identifier for the calendar event. Used to track the same event across updates and systems. |
| 2. | **DTSTAMP** | The timestamp indicating when the calendar object was created or last revised by the originating system. |
| 3. | **DTSTART** | The start date and/or time of the event. |
| 4. | **DTEND** | The end date and/or time of the event. |
| 5. | **DURATION** | The length of the event. Can be used instead of `DTEND`. |
| 6. | **SUMMARY** | A short title or subject of the event. |
| 7. | **DESCRIPTION** | Detailed information about the event. |
| 8. | **LOCATION** | Where the event occurs (physical or virtual location). |
| 9. | **STATUS** | The current status of the event, such as `TENTATIVE`, `CONFIRMED`, or `CANCELLED`. |
| 10. | **CLASS** | Access classification of the event, such as `PUBLIC`, `PRIVATE`, or `CONFIDENTIAL`. |
| 11. | **TRANSP** | Transparency setting that indicates whether the event blocks calendar availability. Typical values are `OPAQUE` (busy) or `TRANSPARENT` (free). |
| 12. | **PRIORITY** | Numeric importance level from 0 to 9, where 1 is highest priority and 9 is lowest. |
| 13. | **SEQUENCE** | Revision number that increments when the event is updated. Used for synchronisation and change tracking. |
| 14. | **RRULE** | Recurrence rule defining how an event repeats (daily, weekly, monthly, etc.). |
| 15. | **EXDATE** | Specific dates/times excluded from a recurrence pattern. |
| 16. | **RDATE** | Additional dates/times that are included in a recurrence pattern. |
| 17. | **ATTENDEE** | Participant(s) invited to the event, typically represented by email addresses and participation status. |
| 18. | **ORGANIZER** | The person or entity responsible for organising the event. |
| 19. | **CATEGORIES** | User-defined categories or tags assigned to the event. |
| 20. | **CREATED** | The date and time when the event was originally created. |
| 21. | **LAST-MODIFIED** | The date and time when the event was last modified. |
| 22. | **URL** | A link associated with the event, such as a meeting page or related resource. |
| 23. | **ATTACH** | An attachment or reference to an external document associated with the event. |

---

### Functions / Methods (Operational Semantics)

These are actions applied to calendar data, often used in scheduling workflows:

1. **PUBLISH** – Share the calendar or event publicly.
2. **REQUEST** – Invite participants to an event.
3. **CANCEL** – Cancel an event.
4. **ADD** – Add a new component (event, todo).
5. **REPLY** – Respond to an invitation.
6. **REFRESH** – Update calendar data from source.
7. **COUNTER** – Propose a new time for an event.
8. **DECLINECOUNTER** – Decline a counter proposal.

---

## Instructions for Building an iCalendar File

1. Start with `BEGIN:VCALENDAR` and `VERSION:2.0`.
2. Add `PRODID` (e.g., `PRODID:-//Your Company//Your Product//EN`).
3. Insert `VTIMEZONE` if needed.
4. For each event:
    - Wrap in `BEGIN:VEVENT` and `END:VEVENT`.
    - Add properties in logical order: `UID`, `DTSTAMP`, `DTSTART`, `DTEND`, `SUMMARY`, etc.
5. Close with `END:VCALENDAR`.

---
