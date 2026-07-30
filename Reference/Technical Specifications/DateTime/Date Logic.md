# 📦 Date Intelligence Module

**Version:** 1.0
**Grain:** Day (supports month, calendar year, fiscal year Jul–Jun)
**Assumptions:**

*   `DATE_DIMENSION[DAY_DATE]` exists
*   `DATE_DIMENSION[MONTH_START_DATE]` exists
*   Fiscal year = **1 July – 30 June**
*   Only one date slicer active at a time

***

## 1. Design Principles (Why this module works)

1.  **Single Source of Truth (SSOT)**
    *   `Selected Date` is the atomic anchor
    *   All other measures derive from it

2.  **Resolved Context First**
    *   Slicer selection → fallback to latest date → then derived periods

3.  **Semantic Separation**
    *   Core calculations ≠ presentation labels ≠ flags

4.  **Audit Safety**
    *   No hidden TODAY() logic except where explicitly named (`Is Current`, `Is Today`)

***

## 2. Module Structure

```text
A. Core Anchor
B. Month Intelligence
C. Month Context Flags
D. Calendar Year Intelligence
E. Fiscal Year Intelligence
F. Period Labels
G. Day-Level Helpers
```

***

## A. Core Anchor (SSOT)

```DAX
Selected Date :=
COALESCE(
    SELECTEDVALUE('DATE_DIMENSION'[DAY_DATE]),
    MAX('DATE_DIMENSION'[DAY_DATE])
)
```

> 🔒 **Never duplicate this logic elsewhere**

***

## B. Month Intelligence

```DAX
Selected Month Start :=
DATE(
    YEAR([Selected Date]),
    MONTH([Selected Date]),
    1
)

Selected Month End :=
EOMONTH([Selected Month Start], 0)

Selected Month Num :=
MONTH([Selected Month Start])

Selected Month Year :=
YEAR([Selected Month Start])
```

***

## C. Month Context Flags & Offsets

```DAX
Is Selected Month :=
INT(
    'DATE_DIMENSION'[MONTH_START_DATE]
        = [Selected Month Start]
)

Is Current Month :=
INT(
    [Selected Month Start]
        = DATE(YEAR(TODAY()), MONTH(TODAY()), 1)
)

Is Previous Month :=
INT(
    [Selected Month Start]
        = EDATE(DATE(YEAR(TODAY()), MONTH(TODAY()), 1), -1)
)

Is Prior Year Same Month :=
INT(
    [Selected Month Start]
        = EDATE(DATE(YEAR(TODAY()), MONTH(TODAY()), 1), -12)
)

Month Offset :=
DATEDIFF(
    'DATE_DIMENSION'[MONTH_START_DATE],
    [Selected Month Start],
    MONTH
)
```

> Enables rolling windows, trends, slicer‑agnostic visuals.

***

## D. Calendar Year Intelligence

```DAX
Selected Year :=
COALESCE(
    SELECTEDVALUE('DATE_DIMENSION'[YEAR_NUM]),
    MAX('DATE_DIMENSION'[YEAR_NUM])
)

Selected Calendar Year Start :=
DATE([Selected Year], 1, 1)

Selected Calendar Year End :=
DATE([Selected Year], 12, 31)

Selected Year Label :=
FORMAT(DATE([Selected Year], 1, 1), "yyyy")

Prior Year :=
[Selected Year] - 1

Prior Year Label :=
FORMAT(DATE([Prior Year], 1, 1), "yyyy")

Current Year Label :=
FORMAT(DATE(YEAR(TODAY()), 1, 1), "yyyy")

Is YTD :=
INT(
    'DATE_DIMENSION'[DAY_DATE] <= [Selected Date]
        &&
    YEAR('DATE_DIMENSION'[DAY_DATE])
        = YEAR([Selected Date])
)
```

***

## E. Fiscal Year Intelligence (Jul–Jun)

```DAX
Selected Fiscal Year :=
COALESCE(
    SELECTEDVALUE('DATE_DIMENSION'[FISCAL_YEAR]),
    MAX('DATE_DIMENSION'[FISCAL_YEAR])
)

Selected Fiscal Year Begin :=
DATE([Selected Fiscal Year] - 1, 7, 1)

Selected Fiscal Year End :=
DATE([Selected Fiscal Year], 6, 30)

Is Current Fiscal Year :=
VAR FYNow =
    IF(
        MONTH(TODAY()) >= 7,
        YEAR(TODAY()) + 1,
        YEAR(TODAY())
    )
RETURN
INT([Selected Fiscal Year] = FYNow)

Is FYTD :=
INT(
    'DATE_DIMENSION'[DAY_DATE] >= [Selected Fiscal Year Begin]
        &&
    'DATE_DIMENSION'[DAY_DATE] <= [Selected Date]
)
```

***

## F. Presentation Labels (Display‑Only)

```DAX
Selected Month Label :=
FORMAT([Selected Month Start], "MMM yyyy")

Prior Month Label :=
FORMAT(EDATE([Selected Month Start], -1), "MMM yyyy")

Selected Month Range Label :=
VAR StartDate = [Selected Month Start]
VAR EndDate   = [Selected Month End]
RETURN
FORMAT(StartDate, "MMM yyyy")
    & " ("
    & FORMAT(StartDate, "dd MMM")
    & " - "
    & FORMAT(EndDate, "dd MMM")
    & ")"
```

```DAX
Selected Fiscal Year Label (Short) :=
"FY"
    & COALESCE(
        SELECTEDVALUE('DATE_DIMENSION'[FISCAL_YEAR_SHORT]),
        MAX('DATE_DIMENSION'[FISCAL_YEAR_SHORT])
    )

Selected Fiscal Year Label (Long) :=
"FY"
    & COALESCE(
        SELECTEDVALUE('DATE_DIMENSION'[FISCAL_YEAR_LONG]),
        MAX('DATE_DIMENSION'[FISCAL_YEAR_LONG])
    )

Prior Fiscal Year Label :=
"FY" & ([Selected Fiscal Year] - 1)

Selected Fiscal Year Range Label :=
VAR StartDate = [Selected Fiscal Year Begin]
VAR EndDate   = [Selected Fiscal Year End]
RETURN
"FY"
    & [Selected Fiscal Year]
    & " ("
    & FORMAT(StartDate, "dd MMM yyyy")
    & " - "
    & FORMAT(EndDate, "dd MMM yyyy")
    & ")"
```

***

## G. Day‑Level Helpers

```DAX
Is Today :=
INT('DATE_DIMENSION'[DAY_DATE] = TODAY())

Is Last 7 Days :=
INT(
    'DATE_DIMENSION'[DAY_DATE] > TODAY() - 7
        &&
    'DATE_DIMENSION'[DAY_DATE] <= TODAY()
)
```

***

## 3. How to Reuse This Module

### ✅ Drop‑In Checklist

Before importing:

*   [ ] Confirm column names match
*   [ ] Confirm fiscal calendar (Jul–Jun)
*   [ ] Ensure only one date slicer controls `DAY_DATE`

### ✅ Safe Extensions

This module supports (without refactor):

*   Rolling 3 / 6 / 12 months
*   YOY / MoM measures
*   Snapshot KPIs
*   Cumulative trends

***

## 4. What *Not* to Add Inside This Module

❌ Business KPIs
❌ Fact‑table references
❌ Visual‑specific logic
❌ Hard‑coded report dates

This module is **pure temporal semantics**.
