# Data Set Specification Standard

## Structure

- **Data Set Specification**
  - Data element
    - Data element concept
      - Object class
      - Property
    - Value domain
      - Classification scheme
- **Navigational items**
  - Object class specialisations
  - Property groups
- **Glossary item**
- **Data source**
- **Data quality statement**
- **Indicator items**
  - Indicator set
    - Indicator
    - Framework
    - Outcome area

---

## Indicator Set

- **Indicator**
  - Data Set Specification
    - Data element
      - Data element concept
        - Object class
        - Property
      - Value domain
        - Classification scheme
- **Outcome areas**

---

## Indicator Sets

An **indicator set** is a group of indicators combined to provide analysis on a broader topic.

The aim of an indicator set is to measure improvements in service delivery in a particular sector or area. It represents an agreement to monitor what is happening in the Australian population within a given area, with the aim of reaching a specified result or outcome.

Indicator sets provide a way of monitoring the progress of healthcare and welfare services. Specific indicators are grouped together to provide a broader picture of how a program is performing overall.

Indicator sets have two components:

- **Outcome areas** (the outcomes being aimed for)
- **Indicators** (the measures of performance)

---

### Indicator Sets and Related Indicators

#### Aboriginal and Torres Strait Islander Peoples

- Better Cardiac Care measures for Aboriginal and Torres Strait Islander people
- Indigenous primary health care key performance indicators

#### Health

- Australian Health Performance Frameworks
- Improving Public Hospital Services
- Key Performance Indicators for Australian Public Mental Health Services
- National Core Maternity Indicators
- National Bowel Cancer Screening Program Performance Indicators
- National Healthcare Agreement

#### Clinical Care Standards

- Clinical care standard indicators: Acute Anaphylaxis
- Clinical care standard indicators: Acute Coronary Syndromes
- Clinical care standard indicators: Acute Stroke
- Clinical care standard indicators: Antimicrobial Stewardship
- Clinical care standard indicators: Cataract
- Clinical care standard indicators: Colonoscopy
- Clinical care standard indicators: Delirium
- Clinical care standard indicators: Heavy Menstrual Bleeding
- Clinical care standard indicators: Hip Fracture
- Clinical care standard indicators: Management of Peripheral Intravenous Catheters
- Clinical care standard indicators: Opioid Analgesic Stewardship in Acute Pain - Acute care edition
- Clinical care standard indicators: Osteoarthritis of the Knee
- Clinical care standard indicators: Third and Fourth Degree Perineal Tears
- Clinical care standard indicators: Venous Thromboembolism (VTE) Prevention

---

## Data Set Specification

A **data set specification (DSS)** is a group of data elements that specify information about a particular subject. A DSS defines:

- Conditions under which data are collected
- Whether data elements are mandatory or conditional
- Verification rules
- Scope of the collection
- Sometimes, the sequence of data elements

**Example**

The *Community Housing DSS 2018-* specifies information about the provision of community housing across Australia. It includes 62 data elements such as:

- Recipient address
- Disability status
- Main language spoken at home
- Number of bedrooms and occupants
- Service provider organisation details

The scope includes rental units managed by community housing organisations and excludes public housing and other programs. Data are collected annually and provided to the AIHW.

### National Minimum Data Set (NMDS)

A **National Minimum Data Set (NMDS)** is a type of DSS representing the minimum set of data elements that must be collected and reported nationally. NMDSs are mandatory for all Australian states and territories.

### Health Sector Sub-types

Within the health sector, there are two additional sub-types:

- **National Best Endeavours Data Set (NBEDS)**
  Metadata sets that jurisdictions agree to make their best effort to collect.
- **National Best Practice Data Set (NBPDS)**
  Metadata sets recommended for collection by agencies and organisations.

**Clusters** are special-purpose data set specifications that group related data elements. They cannot be used independently and function as modular sub-DSS components.

---

### Health

From 2016-17 onwards, health data set specifications were re-categorised and renamed as NBEDS or NBPDS rather than DSS. Health NMDSs continue to be listed separately.

Exceptions apply where another Registration Authority has not yet adopted the updated naming conventions.

- Health National Best Endeavours Data Sets (NBEDSs)
- Health National Best Practice Data Sets (NBPDSs)
- Health National Minimum Data Sets (NMDSs)

---

### Admitted Patient Care NMDS 2025-26

> **METEOR ID:** 790266

---

### Admitted Patient Care NBEDS 2025-26

> **METEOR ID:** 790264

---

### Glossary: Health Terms

- Admission
- Admitted patient stay
- Clinical intervention
- Clinical review
- Diagnosis
- Elective surgery
- Episode of acute care
- Gender
- Geographic indicator
- Hospital boarder
- Hospital-in-the-home care
- Intensive care unit
- Live birth
- Neonate
- Newborn qualification status
- Organ procurement - posthumous
- Resident
- Residential mental health care service
- Same-day patient
- Separation
- Sex

---

### Activity Based Funding

**Definition**
A method of funding health services based on the amount and type of activity delivered.

**Context**
Health services are funded based on the type and mix of patients treated (or trainees taught). Payments reflect the relative cost of the group to which the patient or trainee is classified.

Key components include:

- **Classification**: Grouping patients or trainees into clinically coherent and resource-homogeneous categories.
- **Activity data**: Counting patients treated or trainees taught.
- **Cost data**: Determining the cost of treatment or training.

---

### Separation

**Definition**
The process by which an episode of care for an admitted patient ends. A separation may be:

- **Formal separation**: Administrative recording of cessation of treatment, care, or accommodation.
- **Statistical separation**: Administrative recording of the end of an episode of care within the same hospital stay.

**Context**
Admitted patient care.

---

### Admitted Subacute and Non-acute Hospital Care NBEDS 2025-26

> **METEOR ID:** 790276

The **Admitted Subacute and Non-acute Hospital Care NBEDS (ASNAHC NBEDS)** ensures national consistency in defining and collecting information on subacute and non-acute admitted patient care in activity-based funded public hospitals.

**Included care types**

- Subacute care:
  - Rehabilitation
  - Palliative care
  - Geriatric evaluation and management
  - Psychogeriatric care
- Non-acute care:
  - Maintenance care

**Scope**

- Same-day and overnight admitted episodes
- Public patients treated in private hospitals under contract
- Hospital-in-the-home care for relevant admitted patients

**Exclusions**

- Hospitals operated by:
  - Australian Defence Force
  - Correctional authorities
  - Australia’s external territories

---

## Data Element

A **data element** is the basic unit of identifiable and definable metadata. It consists of:

- A **data element concept** (what is being collected)
- A **value domain** (how it is measured)

Data elements are comparable to individual fields on a form and are grouped into data set specifications.

**Examples**

- *Establishment-neurosurgical unit indicator, yes/no code N*
- *Prison entrant-legal status of prisoner, detention status code N*

---

## Data Element Concept

A **data element concept** combines:

- One **object class**
- One **property**

It describes what is being observed and which characteristic is being recorded, without specifying how it is measured.

**Examples**

- Birth-birth weight
- Address-Australian postcode
- Patient-principal diagnosis
- Service provider organisation-hours worked by volunteer/unpaid staff

Data element concepts are modular and can be paired with different value domains.

---

## Object Class

An **object class** describes the thing of interest about which data are collected (e.g. person, organisation, event).

Object classes can have parent-child relationships, where child classes inherit characteristics from a single parent class.

**Examples**

- Adoption
- Dwelling
- Healthcare provider
- Pregnancy
- Service episode

---

### Object Class Specialisations

- **Environmental factors** (METEOR ID: 315988)
- **Life event** (METEOR ID: 280947)
- **Location** (METEOR ID: 428659)
- **Model of care** (METEOR ID: 561340)
- **Organisation** (METEOR ID: 281131)
- **Party** (METEOR ID: 483447)
- **Person/group of persons** (METEOR ID: 281123)
- **Service episode** (METEOR ID: 333545)
- **Service/care event** (METEOR ID: 281121)
- **Service/care provider** (METEOR ID: 281114)

---

## Property

A **property** is a characteristic or aspect of an object class.

Properties range from general (e.g. given name) to highly specific (e.g. laboratory test results). They are organised into property groups for easier navigation.

---

## Value Domain

A **value domain** defines the permitted values for a data element. Value domains may be:

- **Enumerated** (coded lists)
- **Non-enumerated** (ranges or formats)

**Examples**

- Marital status code N
- Diabetes mellitus status code NN
- Date (DDMMYYYY)
- Time (hhmm)

Combining a value domain with a data element concept produces a complete data element.

---

## Classification Scheme

A **classification scheme** is a controlled vocabulary used within value domains to ensure consistent terminology.

Highly maintained schemes such as **ICD-10-AM** enable accurate and comparable recording of complex health information.

**Example**

For the data element *Emergency department stay-principal diagnosis*, diagnoses are recorded using ICD-10-AM codes rather than free text, enabling reliable national and international reporting.
