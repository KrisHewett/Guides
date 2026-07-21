
# **Theme Colours Module**

**Revision:** 20251117‑1125
**Compliance Baseline:** MCM v52.2
**SSOT Path:**
`R:\Data Analysis and Reporting\_Resources\SQU_Workspace\Guides\Modules\ThemeColours.md`

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

✅ **Compliance Notes:**

- SSOT path explicitly defined.
- WCAG 2.1 AA accessibility embedded.
- Markdown syntax validated (MD032, MD035).
