
# **Theme Colours Module**

**Developed by:** <<Kristopher.Hewett@sa.gov.au>>
**Version:** 1.0
**Revision Date:** 2026-01-14
**Compliance Baseline:** MCM v52.2
**SSOT Path:** <https://github.com/KrisHewett/Guides/Theme_Colours/Theme_Colours_v1.0.md>

---

## **Purpose**

Defines color standards for branding, functional roles, and accessibility compliance across all digital products.

---

## **1. Primary Colors**

- Establish a consistent primary color palette for branding.
- Use **tints and shades** for hierarchy and emphasis.

---

## **2. Shade and Tint**

| Name            | Contrast   |
| --------------- | ---------- |
| themeDarker     | Shade +30% |
| themeDark       | Shade +20% |
| themeDarkAlt    | Shade +10% |
| themePrimary    | 00%        |
| themeSecondary  | Tint -10%  |
| themeLight      | Tint -20%  |
| themeLighter    | Tint -30%  |
| themeLighterAlt | Tint -40%  |
| background      | Tint -100% |

---

## **3. Neutrals**

| Slot             | HEX Example |
| ---------------- | ----------- |
| black            | #000000     |
| neutralDark      | #201F1E     |
| neutralPrimary   | #323130     |
| neutralSecondary | #605E5C     |
| neutralTertiary  | #A19F9D     |
| neutralLight     | #EDEBE9     |
| white            | #FFFFFF     |

---

## **4. Functional Color Roles**

- **Presence:** Status indicators (Away, Online, Do Not Disturb).
- **Messaging:** Alerts (Warning, Error, Success).
- **Accent Colors:** Highlights and secondary actions.

---

## **5. Fabric Core**

| Type            | Fabric Core class           |
| --------------- | --------------------------- |
| Foreground/text | ms-fontColor-themePrimary   |
| Background      | ms-bgColor-themePrimary     |
| Border          | ms-borderColor-themePrimary |

---

## **Accessibility Compliance**

- **Contrast Ratio:** WCAG 2.1 AA requires at least **4.5:1** for normal text.
- Validate color combinations using automated contrast checkers before deployment.

---

## **References**

- **SA Health Branding v2.3**
  <https://github.com/KrisHewett/Guides/SA_Health_Branding/SA_Health_Branding_v2.3.md>
- **Style & Design Guidelines v1.1**
  <https://github.com/KrisHewett/Guides/Style_and_Design/Style_and_Design_Guidelines_v1.1.md>

---

## **Versioning**

| Version | Date       | Author    | Changes                              |
| ------- | ---------- | --------- | ------------------------------------ |
| 1.0     | 2026-01-14 | K. Hewett | Initial draft with WCAG compliance   |

---

✅ **Compliance Notes**

- Metadata at top, versioning at bottom.
- SSOT path and cross‑links aligned.
- Markdownlint compliance ensured.
