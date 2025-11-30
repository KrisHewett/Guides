# ✅ **ASCII Flow Notation**

## **Core Principles**

* **Readable at a glance**
* **Minimal symbols**
* **Consistent structure**
* **Quick to type in plain text**

***

### **1. Elements**

* **Action/Process:** `[Action Name]`
* **Decision:** `[Question?]`
* **Start/End:** `[START]` and `[END]` (optional but recommended for clarity)

***

### **2. Flow Direction**

* **Horizontal:** `→` for sequential steps
* **Vertical:** `↓` for downward progression
* **Branching:** Conditions (`YES`, `NO`, etc.) **before the arrow**

***

### **3. Branching Rules**

* Conditions **always uppercase** for visibility.
* Align conditions vertically for clarity.
* Indent nested decisions by **3 spaces**.

***

### **4. Optional Enhancements**

* **Numbered Steps:** Add `(1)`, `(2)` for reference in documentation.
* **Annotations:** Use `#` for comments or notes.
* **Grouping:** Use `---` to separate major sections.

***

### ✅ **Final Example (Your Flow, Enhanced)**

    [START] → [User Request] → [Risk Assessment]
              ↓
    [Is Current Task Sensitive?]
              ↓
        NO  → [Allow Action + Inform User]
        YES → [Can Risk Be Reduced?]
               ↓
           YES → [Offer Redirection or Partial Action]
           NO  → [Block + Explain Why]
    [END]

***

### ✅ **Quick Rules Summary**

* `[ ]` for steps/questions
* `→` for horizontal flow, `↓` for vertical
* Conditions before arrows: `YES → [Next Step]`
* Indent nested branches
* Optional: `[START]` / `[END]`, numbering, comments

***

### ✅ Why This Works

* **Fast to learn** (5 rules)
* **Readable in plain text**
* **Easy to convert** to Mermaid, PlantUML, or graphical flowcharts later
* **Scales well** for small or large processes

***
