
# **Style and Design Guidelines**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.1
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** <https://github.com/KrisHewett/Guides/Style_and_Design/Style_and_Design_Guidelines_v1.1.md>

---

## **Purpose**

Defines **visual, typographic, and color standards** for consistent design across applications.

- **Scope:** Applies to all digital products and services.
- **Audience:** Designers, developers, and QA teams implementing front‑end interfaces.

---

## **Table of Contents**

1. Introduction
2. Display
    1. Elevation – Depth
    2. Resolution
    3. Breakpoints
3. Language and Region
4. Fonts
    1. Primary Fonts
    2. Code Fonts
    3. Weights
    4. Sizes
5. Number Formats
6. Date & Time
7. Theme Colours *(linked module)*
8. Accessibility & Digital Standards
9. References

---

## **Introduction**

This document defines **visual, typographic, and color standards** for consistent design across applications.
**Purpose:** Ensure uniformity in UI/UX for web and desktop applications.
**Scope:** Applies to all digital products and services.
**Audience:** Designers, developers, and QA teams implementing front-end interfaces.

---

## **1. Display**

Defines responsive design principles and depth hierarchy for UI components.

### **Elevation – Depth**

Elevation conveys **visual hierarchy and interactivity**. Higher depth = more prominence.

| Level | Example | Usage                  | Core class  | React variable                               |
| ----- | ------- | ---------------------- | ----------- | -------------------------------------------- |
| 4     | Depth 4 | Cards, Grid thumbnails | ms-depth-4  | DefaultEffects.elevation4 or Depths.depth4   |
| 8     | Depth 8 | Command bars, menus    | ms-depth-8  | DefaultEffects.elevation8 or Depths.depth8   |
| 16    | Depth16 | Tooltips, callouts     | ms-depth-16 | DefaultEffects.elevation16 or Depths.depth16 |
| 64    | Depth64 | Panels, dialogs        | ms-depth-64 | DefaultEffects.elevation64 or Depths.depth64 |

---

### **Resolution**

Supports **high‑DPI scaling** for crisp visuals across devices.

| Resolution | Devices                                           |
| ---------- | ------------------------------------------------- |
| 1x         | Windows or older Macs                             |
| 1.25x      | Older Windows devices                             |
| 1.5x       | Android HDPI or Windows desktops                  |
| 2x         | Modern Macs, many Windows devices, Android phones |
| 3x         | Some Android devices and Windows phones           |

---

### **Breakpoints**

Responsive grid uses **six standard breakpoints** for layout adaptation.

| Breakpoint              | Range           |
| ----------------------- | --------------- |
| small                   | 320px - 479px   |
| medium                  | 480px - 639px   |
| large                   | 640px - 1023px  |
| extra large             | 1024px - 1365px |
| extra extra large       | 1366px - 1919px |
| extra extra extra large | 1920px and up   |

> **Tip:** Use fluid layouts and avoid fixed widths for accessibility.

---

## **2. Language and Region**

Locale ensures **correct date, time, and numeric formats**.

- **Default Language:** Western European
- **Region Example:** English (Australia)
- **Locale Code Example:** `$-en-AU`

> Fallback: `$-en-US` if primary locale unavailable.

---

## **3. Fonts**

Typography impacts **readability and brand consistency**.

### **Primary Fonts**

`['Segoe UI Web Regular', 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif]`

### **Code Fonts**

`['Courier New', Consolas]`

---

### **Weights**

| Weight         | Usage         | Core class             | React variable       |
| -------------- | ------------- | ---------------------- | -------------------- |
| Regular (400)  | Size 10-24px  | ms-fontWeight-regular  | FontWeights.regular  |
| Semibold (600) | Size 18-32px  | ms-fontWeight-semibold | FontWeights.semibold |
| Bold (700)     | Limited usage | ms-fontWeight-bold     | FontWeights.bold     |

> **Guideline:** Use Semibold for headers; avoid excessive Bold for accessibility.

---

### **Sizes**

| Size | Usage                                                                       | Core class     | React variable   |
| ---- | --------------------------------------------------------------------------- | -------------- | ---------------- |
| 68px | Data visualization and/or large numerics. Use sparingly. Line height: 76px. | ms-fontSize-68 | FontSizes.size68 |
| 42px | Hero moments, site titles, greeting screens. Line height: 52px.             | ms-fontSize-42 | FontSizes.size42 |
| 32px | Titles for favorite document cards, greeting moments. Line height: 40px.    | ms-fontSize-32 | FontSizes.size32 |
| 28px | Page titles. Line height: 36px.                                             | ms-fontSize-28 | FontSizes.size28 |
| 24px | Marketing email header. Line height: 32px.                                  | ms-fontSize-24 | FontSizes.size24 |
| 20px | Page/pane headers, dialogs, hover cards. Line height: 28px.                 | ms-fontSize-20 | FontSizes.size20 |
| 18px | Team channel headers. Line height: 24px.                                    | ms-fontSize-18 | FontSizes.size18 |
| 16px | Body text, subject lines, article body. Line height: 22px.                  | ms-fontSize-16 | FontSizes.size16 |
| 14px | Commands and controls, nav items, button text. Line height: 20px.           | ms-fontSize-14 | FontSizes.size14 |
| 12px | Metadata, timestamps, tooltips. Line height: 16px.                          | ms-fontSize-12 | FontSizes.size12 |
| 10px | Limited usage (disclaimers, initials). Line height: 14px.                   | ms-fontSize-10 | FontSizes.size10 |

> **Accessibility:** Minimum font size = 12px for body text.

---

## **4. Number Formats**

Ensure locale‑aware formatting for currency and percentages.
See **Universal Syntax Guideline – Section 14 (Number Formats)**.
SSOT: <https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md>

---

## **5. Date & Time**

Use ISO 8601 for storage; display in regional format (e.g., dd/MM/yyyy).
See **Universal Syntax Guideline – Section 13 (DateTime Standards)**.
SSOT: <https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md>

---

## **6. Theme Colours**

Moved to **Theme Colours v1.0** module.
SSOT: <https://github.com/KrisHewett/Guides/Theme_Colours/Theme_Colours_v1.0.md>

---

## **7. Accessibility & Digital Standards**

- **Font Size:** Minimum 14pt for vision‑impaired users.
- **Contrast Ratio:** WCAG 2.1 AA requires at least **4.5:1** for normal text.
- **Alt Text:** All images and logos must include descriptive alt text.
- **Closed Captions:** Required for all videos.
- **Screen Reader:** WCAG 2.1 AA compliance.
- **Emoji Accessibility:** Use ARIA labels or descriptive text for screen readers.
- **Web Standards:** Websites must comply with WCAG 2.1 AA.
- **File Naming Convention:**
  `Branding_<AssetType>_vX.ext`
- **Preferred Aspect Ratio:** 16:9 for responsive design.

---

## **References**

- **Universal Syntax Guideline v1.5**
  <https://github.com/KrisHewett/Guides/Syntax_Guideline/Universal_Syntax_Guideline_v1.5.md>
- **Theme Colours v1.0**
  <https://github.com/KrisHewett/Guides/Theme_Colours/Theme_Colours_v1.0.md>
- **SA Health Branding v2.3**
  <https://github.com/KrisHewett/Guides/SA_Health_Branding/SA_Health_Branding_v2.3.md>

---

## **Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2025-11-17 | K. Hewett | Initial draft                        |
| 1.1     | 2026-01-14 | K. Hewett | Formatting and consistency updates   |

---

✅ **Compliance Notes**

- Metadata at top, versioning at bottom.
- SSOT paths and cross‑links aligned to repo structure.
- Markdownlint compliance ensured (MD032, MD035).
