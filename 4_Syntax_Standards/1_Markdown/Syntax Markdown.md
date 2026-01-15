# Markdown Cheat Sheet
    Markdown is a simple way to write and format text using plain text symbols.
    It's a lightweight language that lets you create nicely formatted text without the use of complex coding.
    The idea is to make it easy for people to read and understand the formatting, even if they're looking at the raw text.

---
# Markdown Headings

    # Heading 1
    ## Heading 2
    ### Heading 3
    #### Heading 4
    ##### Heading 5
    ###### Heading 6

> It creates different levels/sizes of headings.

---
# Text Styles

### Bold
    **text**
    __text__

### Italics
    *text*
    _text_

### Blockquotes
    > Quoted text

### Underline
    <ins>Underlined text</ins>

### Strike-through
    ~~text~~

### Boxed
    <table><tr><td>Text</td></tr></table>

### Superscript
    <sup>Superscript</sup>

### Subscript
    <sub>Subscript</sub>

---
# Syntax Highlighting
Syntax highlighting allows you to format and highlight code snippets for better readability.
It is particularly useful when sharing code in technical documentation or online forums.

### Single Line Code
    ` int z = 19; `

### Multiline Code
    ``` int y = 4;
    cout << y << endl;
    ```

### Syntax Highlighting with Language Specified
    ``` Python
    int x = 10;
    cout << x << endl;
    ```

---
# Markdown Tables
    **columns:** vertical bars [|]
    **rows:** hyphens [-]

    | Column 1 | Column 2 | Column 3 |
    |----------|----------|----------|
    | Data 1   | Data 2   | Data 3   |
    | Data 4   | Data 5   | Data 6   |

> Tables consist of rows and columns, with each cell containing data.
> The first row typically contains the column headers, while subsequent rows contain the data.


### align columns
    **Center-aligned:** :--:
    **Left-aligned:** :--
    **Right-aligned:** --:

    | Left-aligned | Center-aligned | Right-aligned |
    |:-------------|:--------------:|--------------:|
    | Data 1       |          Data 2         | Data 3        |
    | Data 4       |         Data 5         | Data 6        |

> Placing these symbols between the vertical bars [|] in the table's header row.

---
# Links

### Auto Link

    Visit https://www.geeksforgeeks.org/

> Automatically converts URLs into clickable links.

### Inline Link

    [Link Text](https://www.geeksforgeeks.org/)

### Reference Link

    [Link Text] [reference text][reference text]: https://www.geeksforgeeks.org/

> Used to link one information object to another, by providing some references to that new page.

### Relative Link
    [A relative Link] (rl.md)

> Shows the relationship between the current page’s URL and the linked page’s URL.

---
# Images and GIFs

### Inline Image:
    ![Alt Text] (Link)

> Example:
> ![Alt Text] (https://media.geeksforgeeks.org/gfg-gg-logo.svg)

### Reference Image:
    ![Alt Text][1] and [1]:Link

> Example:
> ![Alt Text][1] and [1]: https://media.geeksforgeeks.org/gfg-gg-logo.svg

### Inline GIF:
    ![Alt Text](Link)

    >Example:
    >![Alt Text] (https://media.geeksforgeeks.org/wp-content/uploads/20240222163852/g1.gif)

### Reference GIF:

    ![Alt Text] [1] and [1]: Link

> Example:
> ![Alt Text] [1] and [1]: https://media.geeksforgeeks.org/wp-content/uploads/20240222163852/g1.gif

---
# Lists

### Ordered Lists:
    1. First item
    2. Second item
    3. Third item

### Ordered List with Sublists:
    1. Item 1
        1. Item 2
            - Item 3
    2. Item 1
        1. Item 2
    3. Item 1
        1. Item 2

### Unordered Lists (either)
    **plus(+)**
    + Item 1
    + Item 2

    **asterisk(*)**
    * Item 1
    * Item 2

    **minus(-)**
    - Item 1
    - Item 2

### Unordered Nested Lists:
    - Item 1
        - Item 2
            - Item 3
    - Item 1
        - Item 2
    - Item 1
        - Item 2

---
# Horizontal Rule:

    **minus(-)**
    ---

    **asterisk(*)**
    ***

    **underscore(_)**
    ___

> A horizontal rule is used to separate content

# Comments

    <!-- This is a comment -->

> comments are enclosed in [<!--] and [-->] tags

# Escape Characters
To use an escape character, precede the character with a backslash [\].

    \*   Asterisk
    \\   Backslash
    \`   Backtick
    \{}  Curly braces
    \.   Dot
    \!   Exclamation mark
    \#   Hash symbol
    \-   Hyphen symbol
    \()  Parentheses
    \+   Plus symbol
    \[]  Square brackets
    \_   Underscore

> To display characters that have special meaning