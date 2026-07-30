# Metadata

In this section you can learn about all the various types of metadata, including data set specifications, indicators and navigational items, that are used in METEOR. 
Each type is described, with examples. 
You can also find out about developing metadata and resources.
------------------------------------------------------------------------------------
Data Set Specification
    Data element
        Data element concept
            Object class
            Property
        Value domain
            Classification scheme
Navigational items
    Object class specialisations
    Property groups
Glossary item
Data source
Data quality statement
Indicator items
    Indicator set
        Indicator
        Framework
        Outcome area


-------------------------------------------------------------
You will find two types of metadata in METEOR:
        
    metadata items 
        and 
    navigational items.

Metadata items:
        METEOR has eight main types of metadata.
They are based on the AIHW's interpretation of the ISO/IEC 11179 standards.

    Data set specification:
        a group of data elements for collection, e.g. Diabetes (clinical) NBPDS (National Best Practice Data Set)
    Data element:
        combination of a data element concept and a value domain, e.g. Person—diabetes mellitus status, code NN
    Data element concept:
        combination of an object class and a property, e.g. Person—diabetes mellitus status
    Object class:
        a person, organisation, group or event, e.g. Person, Health industry relevant organisation, Indigenous community, Emergency department stay
    Property:
        a characteristic of an object class, e.g. Diabetes mellitus status
    Value domain:
        a set of allowed values, e.g. Diabetes mellitus status code NN
    Classification scheme:
        an official terminology system, used in some value domains e.g. Australian Refined Diagnosis Related Groups version 6
    Glossary item:
        definition of a term e.g. Gestational diabetes mellitus

The sources of data and the quality of this data are also important to understand:

    Data quality statements:
        a statement attesting to the quality and suitability of the collected data e.g. Adoptions Australia 2019–20; Quality Statement
    Data sources:
        Raw data are collected by various jurisdictions, organisations and research groups, which are analysed, and used in indicators to provide information and statistics about the state of health and welfare in Australia. The Australian Census is an example of a data source.

Indicator items:
        METEOR includes the following metadata items which aid in the analysis of data:

    Framework:
        a general grouping of indicators associated with broader topics
    Indicator:
        used to analyse the data with simple fractions, percentages, or complex formulae
    Indicator set:
        a group of indicators combined to provide analysis on a broader topic
    Outcome area:
        a statement defining the goal of the indicator, such as a government policy

Navigational items are added to METEOR by the Registrars to make the navigation and management of metadata items easier and more meaningful. Navigational items are not part of the official standards. There are two navigational items currently used in METEOR:
    Property group:
        a group of properties with similar characteristics e.g. Accommodation/living characteristics includes the properties Co-residency status, Homeless status, and Number of occupants
    Object class specialisation:
        a group of object class sub-types of object classes e.g. Person/group of persons includes the object classes Birth mother, Hospital patient, Prison entrant, and Medical graduate trainee


# Data standards
Metadata is information about how data are defined, structured and represented. It makes data files meaningful by describing the information that has been captured in data, and how it is measured and represented.

The metadata endorsed for use across Australia are referred to as data standards. These standards improve the quality, relevance, consistency and availability of national information about the health and welfare of Australians. They describe the expected meaning and recommended representation of data for use within a defined context.

Consistent content and standard definitions for the collection of health and welfare information means that users can then understand and compare the data, regardless of how these data are collected or stored across different organisations and jurisdictions.

Data standards also help reduce the duplication of data. They provide a common and consistent platform for organisations to work from, and simplify the data development process by reusing standards that already exist. This makes the adoption and implementation of the standards easier across all jurisdictions, both locally and nationally.

These standards are critical for the development and implementation of policies for improving health and welfare outcomes for all Australians.

METEOR is based on the international information modelling standard ISO/IEC 11179 

# Approval process
In Australia, expert groups, registrars, data and information committees, and registration authorities work through the METEOR approval process to endorse metadata items, which then become metadata standards. This process ensures that the metadata are constructed correctly, are reusable and accurately describe the underlying data.

## Expert groups
Expert groups are nationally-recognised subject matter experts, such as a national committee of diabetes care specialists. These groups do the initial development of national metadata standards for their particular subject area. They have a private workspace within METEOR to create draft items. Once the expert group has agreed upon the item, it is submitted to the registrar for consideration.

## Registrars
A registrar takes proposed metadata items through the endorsement process. They act on behalf of a registration authority (see below). A registrar will undertake a quality assurance review of the item, discussing any concerns with the expert group. Once any concerns have been resolved, the registrar then submits the item to the relevant national data or information committee.

## Data and information committees
The data or information committee reviews the candidate item. If it is accepted, the committee then sends it on to the relevant registration authority for endorsement.

## Registration authorities
Registration authorities are official departments and organisations that endorse the data standards which apply to their sector.

The registration authorities of the relevant sector look over the recommendations made by the data or information committee, discuss any issues, and make the item standard once any concerns have been dealt with. This standard item is then made publicly available for use in a broad range of settings.

Each sector has its own approval processes and registration authorities.

#  Metadata quality assurance
Metadata needs to be reviewed for quality assurance before it is endorsed as a standard by a registration authority.

The AIHW offers a metadata support service for metadata developed or revised by a registration authority. This service ensures that your metadata is constructed correctly, is reusable and accurately describes the underlying data. Contact us to find out how we can help you.
---

ISO/IEC 11179-1:2023 – Metadata Registry Framework

# Overview
- ISO/IEC 11179-1:2023 is the foundational framework for metadata registries, part of a 6-part international standard for data management.
- Published January 2023 (4th Edition), ICS Code: 35.040.50.

# Purpose & Scope
-Establishes a conceptual basis for metadata and Metadata Registries (MDR).
-Focuses on structured descriptions of data elements, not physical storage or domain-specific schemas.

# Core Concepts
- Metadata enables interoperability and shared understanding across systems.
- Standardizes representation of data concepts, meanings, and relationships.

# Relationships & Updates
- Aligns with other JTC 1/SC 32 standards for consistency in metadata practices.
- Updates clarify terminology, strengthen links to modern ecosystems (e.g., semantic web).

# Practical Applications
- Supports data governance, interoperability, and compliance (e.g., FAIR principles).
- Used in enterprise architectures and cross-organization data sharing.

---
## Speaker Notes

- ISO/IEC 11179-1:2023 provides the foundation for all parts of the ISO/IEC 11179 series, which together define best practices for metadata registries.
- The standard does not address physical data storage or industry-specific metadata, focusing instead on universal principles for describing data.
- It is closely linked to other IT standards, ensuring broad applicability and consistency.
- The latest edition incorporates contemporary metadata practices, such as linked data and semantic web integration.
- Organizations use this standard to improve data governance, facilitate interoperability, and meet regulatory requirements.




**ISO/IEC 11179-1:2023**
Part of Series: ISO/IEC 11179 (6 parts total, with Part 1 as the framework).
ICS Code: 35.040.50 (IT standards for data management).
Edition: 4th (published January 2023).

**Key Points**
    Purpose and Scope:
        Provides a conceptual framework for understanding metadata and Metadata Registries (MDR).
        Serves as the foundation for associating all parts of the ISO/IEC 11179 series.
        Focuses on descriptions of data (metadata), not general metadata theory or physical data representation.
    
    Core Concepts:
        Defines metadata as structured descriptions of data elements, enabling interoperability and shared understanding.
        Emphasizes standardized representation of data concepts, meanings, and relationships across systems and organizations.
    
    Relationships to Other Standards:
        Describes linkages to other JTC 1/SC 32 standards (e.g., data management, metadata specifications).
        Aligns with broader IT standards to ensure consistency in metadata practices.
    
    Updates from Previous Edition (2015):
        Clarifies terminology and conceptual boundaries.
        Strengthens integration with contemporary metadata ecosystems (e.g., linked data, semantic web).
    
    Non-Technical Limitations:
        Excludes physical data storage (bits/bytes) and domain-specific metadata (e.g., industry-specific schemas).
    
    Practical Applications:
        Supports data governance, interoperability, and regulatory compliance (e.g., FAIR data principles).
        Used in enterprise data architectures and cross-organizational data sharing.


ISO/IEC 11179-1:2023

This document provides the means for understanding and associating the individual parts of ISO/IEC 11179 and is the foundation for a conceptual understanding of metadata and metadata registries.
This document also describes the relationship of ISO/IEC 11179 to other JTC 1/SC 32 standards, technical specifications and technical reports on metadata.

In all parts of ISO/IEC 11179, metadata refers to descriptions of data. It does not contain a general treatment of metadata.


The standard consists of seven parts:

    ISO/IEC 11179-1:2015 Framework (referred to as ISO/IEC 11179-1)
    ISO/IEC 11179-2:2005 Classification
    ISO/IEC 11179-3:2013 Registry metamodel and basic attributes
    ISO/IEC 11179-4:2004 Formulation of data definitions
    ISO/IEC 11179-5:2015 Naming and identification principles
    ISO/IEC 11179-6:2015 Registration
    ISO/IEC 11179-7:2019 Metamodel for data set registration

Part 1 explains the purpose of each part.
Part 3 specifies the metamodel that defines the registry.
Part 7 is released per December 2019 and provides an extension to part 3 for registration of metadata about data sets.
The other parts specify various aspects of the use of the registry.


