
# **Syntax & Notation Standards**

***

## **Introduction**

This section defines the required syntax, naming conventions, and notation for implementing documentation and code consistently across projects. It focuses purely on structural and technical rules, not branding or design choices.

***

### **1. Markdown Structure**

* Use **Markdown headings** for hierarchy:
  * `#` for main sections
  * `##` for subsections
  * `###` for sub-subsections
* Tables must use **pipe (`|`) separators** and header rows with dashes:

    ```markdown
    | Column | Column |
    |--------|--------|
    | Value  | Value  |
    ```

***

### **2. Font & Typography Syntax**

* Font arrays use **square brackets and single quotes**:

    ```javascript
    ['Segoe UI Web Regular', 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif]
    ```

* Code font arrays:

    ```javascript
    ['Courier New', Consolas]
    ```

* React variables use **camelCase**:

    ```javascript
    FontWeights.regular
    FontSizes.size16
    ```

* CSS classes use **kebab-case**:

    ```css
    ms-fontWeight-regular
    ms-fontSize-16
    ```

***

### **3. Elevation & Depth Syntax**

* React variables:

    ```javascript
    DefaultEffects.elevation4
    Depths.depth4
    ```

* CSS classes:

    ```css
    ms-depth-4
    ```

***

### **4. Locale & Language Syntax**

* Locale codes use **$ prefix and hyphenated language-region**:

    ```text
    $-en-AU
    ```

***

### **5. Color Notation**

* HEX color format:

    ```text
    #RRGGBB (e.g., #B71C1C)
    ```

* File naming convention:

    ```text
    Branding_<AssetType>_vX.ext
    ```

***

### **6. Accessibility Notation**

* WCAG contrast ratio notation:

    ```text
    4.5:1 for normal text, 3:1 for large text
    ```

***

### **7. References & Links**

* Example internal resource path:

    ```text
    https://example.sharepoint.com/sites/Resources
    ```

* External accessibility checker:

    ```text
    https://webaim.org/resources/contrastchecker/
    ```

***
