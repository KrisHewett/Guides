Here’s the **Universal Syntax Guideline** without language-specific examples, fully standardized for use across all coding languages:

***

# ✅ **Universal Syntax Guideline**

**Developed by:**
<Kristopher.Hewett@sa.gov.au>
2025

***

## **1. Purpose**

This guideline defines **standardized syntax, style, and format** for coding across multiple languages to ensure consistency, readability, and maintainability.

***

## **2. Indentation**

* Use **4 spaces per level**, never tabs.
* Consistent indentation improves readability and prevents parsing errors.

***

## **3. Naming Conventions**

* **PascalCase**: Classes, types, enums.
* **camelCase**: Functions, methods, properties, local variables.
* **UPPERCASE**: Constants.
* Use **whole words** whenever possible (avoid abbreviations).

***

## **4. Braces and Blocks**

* Always surround loop and conditional bodies with curly braces `{}`.
* Opening brace on the **same line** as the statement.
* Closing brace on its own line.

Example:

    if (condition) {
        doSomething();
    }

***

## **5. Whitespace**

* No extra spaces inside parentheses.
* One space after commas, colons, and semicolons.
* Blank lines between logical sections.

***

## **6. Comments**

* Use **clear, concise comments** for:
  * Script purpose.
  * Major sections.
  * Complex logic.
* Prefer **structured documentation comments** (e.g., JSDoc, docstrings) for functions and classes.

***

## **7. Strings**

* `"Double quotes"` for user-facing text (externalized/localized).
* `'Single quotes'` for internal strings.

***

## **8. Error Handling**

* Always use structured error handling:
  * `try/catch` or equivalent.
* Provide meaningful error messages in **plain ASCII**.

***

## **9. Output**

* Use **plain ASCII text only** for output messages.
* Avoid emojis or special Unicode characters.

***

## **10. Structure**

Organize code into:

1. **Header**: Purpose, author, date.
2. **Prerequisites**: Dependencies, environment setup.
3. **Configuration**: Variables/constants.
4. **Main Logic**: Core functionality.
5. **Error Handling**: Robust try/catch or equivalent.
6. **Output/Logging**: Clear messages.

***

## **11. Style**

* Curly braces on the same line as the statement.
* No extra whitespace inside parentheses.
* Space after commas, colons, semicolons.
* Prefer **arrow functions** (where supported) over anonymous functions.
* Always surround loop and conditional bodies with braces.

***

## **12. Preferences**

* New line: `\n`
* Blank line: `[BLANK]`
* Group separator: `***`
* Item separator: `---`

***

## **13. Glob Pattern Syntax**

    /      = separate path segments
    *      = match zero or more characters
    ?      = match one character
    **     = match any number of segments
    {}     = group conditions
    []     = range of characters
    [!...] = negate range
    <>     = defines name of function/format/style

***

✅ This is now **fully universal**, with no language-specific examples, ready to apply across **PowerShell, Python, JavaScript, Java, C#, and more**.

***

**Next Step Options:**

1. Package this as a **formal Syntax Guideline document** (Markdown or PDF).
2. Create **starter templates for multiple languages** based on this universal guideline.
3. Build a **code review checklist** aligned with these rules.

Which one should I do first?
