
# General principles
- Date and time values are ordered from the largest to smallest unit of time: year, month (or week), day, hour, minute, second, and fraction of second.
> The lexicographical order of the representation thus corresponds to chronological order, except for date representations involving negative years or time offset.
> This allows dates to be naturally sorted by, for example, file systems.

- Each date and time value has a fixed number of digits that must be padded with leading zeros.
> For reduced precision, any number of representations may be dropped in the order from the least to the most significant.

# Formats:
### basic
- date and time: `YYYYMMDDThhmmss`
- date only: `YYYYMMDD`
- time only: `Thhmmss`
> with a minimal number of separators

### extended
- date and time: `YYYY-MM-DDThh:mm:ss`
- date only:`YYYY-MM-DD`
- time only:`Thh:mm:ss`
> with separators added to enhance human readability.

### coding (basic and extended)
##### basic
- date and time: `[YYYY][MM][DD]T[hh][mm][ss]`
- date only: `[YYYY][MM][DD]`
- time only: `T[hh][mm][ss]`
##### extended
- date and time: `[YYYY]-[MM]-[DD]T[hh]:[mm]:[ss]`
- date only: `[YYYY]-[MM]-[DD]`
- time only: `T[hh]:[mm]:[ss]`

> with brackets added to define required user input.

# Calendar dates
- `[YYYY]` four-digit year, `0000` through `9999`.
- `[MM]` two-digit month of the year, `01` through `12`.
- `[DD]` two-digit day of that month, `01` through `31`.

# Week dates (ISO week date)
- `W01` Week 01, is the week with the __year's first Thursday__
    - if **1 January** is on a Monday, Tuesday, Wednesday or Thursday, it is in week 01.
    - If **1 January** is on a Friday, Saturday or Sunday, it is in week 52 or 53 of the previous year *(there is no week 00)*.
    - **28 December** is always in the last week of its year.

- `[Www]` is the week number prefixed by the letter `W`, from `W01` through `W53`.
- `[D]` is the weekday number, from `1` through `7`, beginning with Monday and ending with Sunday.

# Ordinal dates
- days elapsed since the start of year
`[YYYY]-[DDD]`
`[YYYY][DDD]`

- `[DDD]` is the "day of year", `001` through `365` *(`366` in leap years)*

# Times (24-hour)
`T[hh][mm][ss]`
`T[hh]:[mm]:[ss]`
> The T may be omitted when there is no risk of confusion with date expressions.

- `[hh]` hour between 00 and 24.
- `[mm]` minute between 00 and 59.
- `[ss]` second between 00 and 60 (where 60 is only used to denote an added leap second).
> A leap second is a one-second adjustment that is occasionally applied to Coordinated Universal Time (UTC), to accommodate the difference between precise time (International Atomic Time (TAI), as measured by atomic clocks) and imprecise observed solar time (UT1), which varies due to irregularities and long-term slowdown in the Earth's rotation.


# Time zone designators
- `<time>Z`
- `<time>±hh:mm`
- `<time>±hhmm`
- `<time>±hh`

# Durations
- `PnYnMnDTnHnMnS`
- `PnW`
- `P<date>T<time>`

# Time intervals
- `<start>/<end>`
- `<start>/<duration>`
- `<duration>/<end>`
- `<duration>`

---
# Permissable Structures
```
    <date>T<time>
    <date>
        [YYYY]
        [YYYY]-[MM]-[DD]
        [YYYY][MM][DD]
        [YYYY]-[MM]
        [YYYY]-[Www]
        [YYYY][Www]
        [YYYY]-[Www]-[D]
        [YYYY][Www][D]
        [YYYY]-[DDD]
        [YYYY][DDD]

    T<time>
        T[hh][mm][ss]
        T[hh]:[mm]:[ss]
        T[hh]:[mm]:[ss].[sss]
        T[hh][mm][ss].[sss]
        T[hh][mm].[mmm]
        T[hh]:[mm].[mmm]
        T[hh][mm]
        T[hh]:[mm]

        T[hh].[hhh]
        T[hh]
        [hh][mm][ss].[sss]
        [hh]:[mm]:[ss].[sss]
        [hh][mm][ss]
        [hh]:[mm]:[ss]
        [hh][mm]
        [hh]:[mm]

        [hh]
```
# Permissable Values
```
        YYYY
        YYYY-MM-DD
        YYYYMMDD
        YYYY-MM
        YYYY-Www
        YYYYWww
        YYYY-Www-D
        YYYYWwwD
        YYYY-DDD
        YYYYDDD
        Thh:mm:ss.sss
        Thhmmss.sss
        Thh:mm:ss
        Thhmmss
        Thh:mm.mmm
        Thhmm.mmm
        Thh:mm
        Thhmm
        Thh.hhh
        Thh
```
# Permissable In unambiguous contexts
```
        hh:mm:ss.sss
        hhmmss.sss
        hh:mm:ss
        hhmmss
        hh:mm
        hhmm
        hh
```

# Invalid Values (preceded by ! to represent not-true)
```
        !YYYYMM
```