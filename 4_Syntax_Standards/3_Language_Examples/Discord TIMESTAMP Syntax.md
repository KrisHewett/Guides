# Discord TIMESTAMP Syntax

Displayes DateTime in the Users local DateTime Zone.

## Order of Operation

1. Select DateTime (ISO 8601)
    - `YYYY-MM-DD HH:MM:SS`Z
2. In Windows **PowerShell**, Generate `UNIX_TIMESTAMP`.
```Powershell
  [int][double]::Parse((Get-Date "YYYY-MM-DD HH:MM:SSZ" -UFormat %s))
```
3. In Discord, Generate the Discord **TIMESTAMP** `<t:UNIX_TIMESTAMP:FORMAT>`
    - `t` TIMESTAMP
    - `UNIX_TIMESTAMP` generated in **step 2**
    - `FORMAT` Display format

## Definitions

### Unix Timestamp

The unix time stamp is the counting of number of seconds between a particular date and the Unix Epoch.

| Human Readable Time | Seconds |
|---------------------|---------|
| 1 Hour | 3600 Seconds |
| 1 Day | 86400 Seconds |
| 1 Week | 604800 Seconds |
| 1 Month (30.44 days) | 2629743 Seconds |
| 1 Year (365.24 days) | 31556926 Seconds |

> Adelaide (UTC+09:30) UNIX_TIMESTAMP offest = **-34200**

### The Unix Epoch:

January 1st, 1970

- ISO 8601: **1970-01-01T00:00:00.000Z** or **1970-01-01T00:00:00.000+00:00**
- Date Time (UTC): **1 Jan 1970, 12:00:00 am**

### FORMAT


| Code |  Meaning | Example Output |
|------|----------|----------------|
| t | Short time | 3:30 PM |
| T | Long time | 15:30:00 |
| d | Short date | 04/03/2026 |
| D | Long date | 4 March 2026 |
| f | Short date + time | 4 March 2026 15:30 |
| F | Long date + time | Wednesday, 4 March 2026 15:30 |
| R | Relative time | in 2 days |


## Refferences

- [Discord Documentation](https://docs.discord.com/developers/reference)
- [Unix TimeStamp](https://www.unixtimestamp.com/)
- [TimeStamp Converter](https://www.timestamp-converter.com/)

---
