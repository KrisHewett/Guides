# Safety & Quality - Data Governance: Methods, Classifications, Concepts & Standards

Statistical terms, concepts, definitions and explanations for common terms and concepts

> Kristopher.Hewett@sa.gov.au  
> Revised: 2026-05-08  
> **Source:** <www.abs.gov.au>

---

## TO DO, adding and including.

> - Document Index (matching and numbering section headers).
> - SSOT_Documentation requirements.
> - A formalised hierarchy of rules, e.g.:
>   - Global (all data, all time).
>   - Dataset‑level
>   - Metric‑level
>   - Record‑level
>   - Transaction‑level

---

## SCOPE

These standards apply at:
- measure definition level,
- not decision justification level,
- not report assurance level.

---

## Methods

**Content type**
- Short declarative constraints
- No rationale
- No examples
- No authority claims

**Function**
- Defines analytical boundaries
- Enables exemptions
- Triggers scoping escalation when violated

**Why this works**
- Keeps Methods reusable
- Keeps Scoping flexible
- Keeps risk visible
- Preserves reversibility

- flags known instability patterns
- flags behavioural artefacts (reporting incentives, workflow effects)
- flags interpretive traps

> “What behaviours influence whether data exists at all?”
> “What misinterpretation would we most want to prevent?”
>
> **Methods must add:**
> - A terminal general‑practice constraint section
> - Explicit numerator/denominator declarations
> - A time anchoring consistency rule
> - A declared rule precedence hierarchy
> - A lightweight warnings / awareness layer
> - Acknowledgement of definition drift
> - Clear placement of non‑explanatory constraints at the end

---

## Taxonomy of Measures

**counts → proportions → rates → ratios → indices**

---

## Counts (Frequencies)

**Definition:**  
The absolute number of observed units or events within a defined scope, time period, and population.

> **Placeholder question:**  
> *Are repeat events per person counted once or multiple times?*

---

## Proportions

**Definition:**  
A ratio where the numerator is a subset of the denominator, representing a share of a whole at a specific reference point or period.

> **Placeholder question:**  
> *Is the denominator a snapshot population or a period population?*

---

## Rates

**Definition:**  
A measure of occurrence that incorporates time or population-at-risk over time into the denominator.

> **Placeholder question:**  
> *Is the population open (dynamic) or closed for the rate period?*

---

## Ratios

**Definition:**  
A comparison of two quantities where the numerator is not necessarily included in the denominator.

---

## Indices

**Definition:**  
A composite measure combining multiple indicators into a single summary value, typically normalised to a reference period or standard.

> **Placeholder question:**  
> *What is the base period or reference standard for the index?*

---

## Classification

- ISR1  
- ISR2  
- ISR3  
- ISR4  

> **Placeholder questions:**  
> *Do ISR levels represent an ordinal or nominal classification?*  
> *Are ISR definitions stable over time?*

---

## Key Dates

One primary time anchor must be declared per analytic output.
Mixing time anchors requires explicit notation and justification.

- **Incident Date:** Date the event occurred  
- **Reported Date:** Date the event entered the reporting system  

> **Placeholder question:**  
> *Which indicators are anchored to incident date versus reported date?*

---

## Numerator / Denominator

No Calculations, only declaration.

- numerator definition
- denominator definition
- inclusion logic
- exclusion logic

> “What population applies?”
> “What inclusion/exclusion rules apply?”

---

## Weighted Average

(# of Incidents × 100) / (Average Reports) for the reference week

> **Placeholder questions:**  
> *What constitutes “Average Reports”?*  
> *Is this intended for within-period comparison only?*

---

## Rates and Prevalence

### Rate

Number of events during a defined period  
/  
Population at risk during the same period

---

### Prevalence (per n)

(# of existing cases at a specified time) / (population at that time) × n  

Where:  
n = 100  
n = 1,000  
n = 1,000,000  

---

## Cumulative Incidence and Risk Ratio

### Cumulative Incidence (CI)

Number of new cases during a defined period  
/  
Population at risk at the start of the period

> **Placeholder question:**  
> *Is the population fixed at baseline or replenished over time?*

---

### Risk Ratio (RR)

RR = CI_exposed / CI_unexposed

---

## Incidence Rates

- **Incidence rate (person-time):**  
  New cases / total person-time observed  

- **Incidence rate (person-time at risk):**  
  New cases / person-time excluding periods not at risk  

- **Incidence rate (average population):**  
  New cases / mid-period population estimate  

> **Placeholder question:**  
> *Which denominator best approximates exposure time in this context?*

---

## Prevalence Proportions

- **Point prevalence:**  
  Existing cases at a specific date / population at that date  

- **Period prevalence:**  
  Persons with ≥1 case during period / average population during period  

- **Contact prevalence:**  
  Persons with ≥1 contact during period / population during period  

> **Placeholder question:**  
> *Is contact prevalence intended to represent utilisation or population reach?*

---

## documents general‑practice analytical constraints

Allows explicit exemptions, and provides a mechanism for conflict resolution when report requests contradict the standard.

- Prohibitions (what must not be inferred)
- Escalation rules (when conflict exists)
- Exemption recording (who, why, when)

---

## References:

- <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts>
- Data <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/data>
- Quantitative and qualitative data <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/quantitative-and-qualitative-data>
- Variables <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/variables>
- Population <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/population>
- Census and sample <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/census-and-sample>
- Data sources <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/data-sources>
- Describing frequencies <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/describing-frequencies>
- Frequency distribution <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/frequency-distribution>
- Measures of shape <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/measures-shape>
- Measures of central tendency <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/measures-central-tendency>
- Measures of spread <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/measures-spread>
- Types of error <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/types-error>
- Measures of error <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/measures-error>
- What statistics are <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/what-statistics-are>
- Standards and classifications <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/standards-and-classifications>
- Metadata <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/metadata>
- Data visualisation <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/data-visualisation>
- Time series data <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/time-series-data>
- Estimate and projection <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/estimate-and-projection>
- Correlation and causation <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/correlation-and-causation>
- Confidentiality <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/confidentiality>
- Statistical terms and concepts glossary <https://www.abs.gov.au/statistics/understanding-statistics/statistical-terms-and-concepts/statistical-terms-and-concepts-glossary>

### Additional Supporting Resources

- Guide to labour statistics <https://www.abs.gov.au/statistics/understanding-statistics/guide-labour-statistics>
- Labour Force Survey products guide <https://www.abs.gov.au/statistics/understanding-statistics/guide-labour-statistics/labour-force-survey-products-guide>
- Labour Force, Australia methodology (March 2026) <https://www.abs.gov.au/methodologies/labour-force-australia-methodology/mar-2026>

- Introduction <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Introduction>
- Data Collection Methods <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Data+Collection+Methods>
- Frames & Population <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Frames+&+Population>
- Errors in Statistical Data <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Errors+in+Statistical+Data>
- Design Data Processing <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Data+Processing>
- Analysis <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Analysis>
- Presentation of Results <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Presentation+of+Results>
- Confidentiality <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Confidentiality>

Considerations & Supporting Info:
- The Set up Stage of a Survey <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+The+Set+up+Stage+of+a+Survey>
- Samples and Censuses <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Samples+and+Censuses>
- Sample Design <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Sample+Design>
- Questionnaire Design <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Questionnaire+Design>
- Survey Testing <https://www.abs.gov.au/websitedbs/D3310114.nsf/home/Basic+Survey+Design+-+Survey+Testing>

**Status:** Draft

## End of Document
