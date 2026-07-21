# **Style and Design Guidelines**

**Developed by:** <Kristopher.Hewett@sa.gov.au>
**Revision:** 20251117-1125

***

## **Table of Contents**

1. \#introduction
2. \#1-display
    * Elevation – Depth
    * Resolution
    * Breakpoints
3. \#2-language-and-region
4. \#3-fonts
    * Primary Fonts
    * Code Fonts
    * Weights
    * Sizes
5. \#4-number-formats
6. \#5-date--time
7. \#6-theme-colours

***

## **Introduction**

This document defines **visual, typographic, and color standards** for consistent design across applications within the SA Health ecosystem.
**Purpose:** Ensure uniformity in UI/UX for web and desktop applications.
**Scope:** Applies to all SA Health digital products and services.
**Audience:** Designers, developers, and QA teams implementing front-end interfaces.

***

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

***

### **Resolution**

Supports **high-DPI scaling** for crisp visuals across devices.

| Resolution | Devices                                           |
| ---------- | ------------------------------------------------- |
| 1x         | Windows or older Macs                             |
| 1.25x      | Older Windows devices                             |
| 1.5x       | Android HDPI or Windows desktops                  |
| 2x         | Modern Macs, many Windows devices, Android phones |
| 3x         | Some Android devices and Windows phones           |

***

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

***

## **2. Language and Region**

Locale ensures **correct date, time, and numeric formats**.

* **Default Language:** Western European
* **Region:** English (Australia)
* **Locale Code:** `$-en-AU`

> Fallback: `$-en-US` if `$-en-AU` unavailable.

***

## **3. Fonts**

Typography impacts **readability and brand consistency**.

### **Primary Fonts**

* `['Segoe UI Web Regular', 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif]`

### **Code Fonts**

* `['Courier New', Consolas]`

***

### **Weights**

| Weight         | Usage         | Core class             | React variable       |
| -------------- | ------------- | ---------------------- | -------------------- |
| Regular (400)  | Size 10-24px  | ms-fontWeight-regular  | FontWeights.regular  |
| Semibold (600) | Size 18-32px  | ms-fontWeight-semibold | FontWeights.semibold |
| Bold (700)     | Limited usage | ms-fontWeight-bold     | FontWeights.bold     |

> **Guideline:** Use Semibold for headers; avoid excessive Bold for accessibility.

***

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

***

## **4. Number Formats**

Reference: ./Details/NumberFormats.md

> Ensure locale-aware formatting for currency and percentages.

***

## **5. Date & Time**

Reference: ./Details/Guidelines\_DateTime.md

> Use ISO 8601 for storage; display in regional format (dd/MM/yyyy).

***

## **6. Theme Colours**

Color defines **brand identity and functional roles**. Ensure **WCAG AA contrast compliance**.

### **Primary Colors**

(Define SA Health brand colors here.)

***

### **Shade and Tint**

| Name            | Contrast   |
| --------------- | ---------- |
| themeDarker     | Shade +30% |
| themeDark       | Shade +20% |
| themeDarkAlt    | Shade +10% |
| themePrimary    | 00%        |
| themeSecondary  | Tint -10%  |
| themeTertiary   |            |
| themeLight      | Tint -20%  |
| themeLighter    | Tint -30%  |
| themeLighterAlt | Tint -40%  |
| background      | Tint -100% |

***

### **Neutrals**

| Theme slots          | Fluent slots | HEX values |
| -------------------- | ------------ | ---------- |
| black                | black        | #000000    |
| neutralDark          | grey190      | #201F1E    |
| neutralPrimary       | grey160      | #323130    |
| neutralPrimaryAlt    | grey150      | #3B3A39    |
| neutralSecondary     | grey130      | #605E5C    |
| neutralTertiary      | grey90       | #A19F9D    |
| neutralTertiaryAlt   | grey60       | #C8C6C4    |
| neutralQuaternary    | grey50       | #D2D0CE    |
| neutralQuaternaryAlt | grey40       | #E1DFDD    |
| neutralLight         | grey30       | #EDEBE9    |
| neutralLighter       | grey20       | #F3F2F1    |
| neutralLighterAlt    | grey10       | #FAF9F8    |
| white                | white        | #FFFFFF    |

***

### **Functional Color Roles**

* **Groups:** For charts and data visualization.
* **Presence:** Status indicators (Away, Online, Do Not Disturb).
* **Messaging:** Alerts (Warning, Error, Success).
* **Accent Colors:** Highlights and secondary actions.
* **MS\_365\_Color:** Product branding consistency.

***

### **Fabric Core**

| Type                    | Fabric Core class                  |
| ----------------------- | ---------------------------------- |
| Foreground/text         | ms-fontColor-themePrimary          |
| Foreground/text (hover) | ms-fontColor-themePrimary--hover   |
| Background              | ms-bgColor-themePrimary            |
| Background (hover)      | ms-bgColor-themePrimary--hover     |
| Border                  | ms-borderColor-themePrimary        |
| Border (hover)          | ms-borderColor-themePrimary--hover |

***

## **References**

* <https://developer.microsoft.com/en-us/fluentui#/styles/web>
* WCAG 2.1 Accessibility Guidelines
* SA Health Branding Standards
