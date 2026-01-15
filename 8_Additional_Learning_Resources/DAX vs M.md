

### Differences Between DAX and Power Query M

#### DAX (Data Analysis Expressions)
      - Primarily used for data analysis and calculations within Power BI, Excel, and SQL Server Analysis Services (SSAS).
      - It allows for creating measures, calculated columns, and tables
      - Ideal for creating dynamic calculations, aggregations, and data analysis
      - Executes in real-time when interacting with reports and dashboards

### Best Use Cases
1. **Dynamic Calculations**
      - Creating measures that update based on user interactions with the report
2. **Aggregations**
      - Summarizing data, such as calculating totals, averages, and other statistical measures
3. **Time Intelligence**
      - Performing calculations based on dates, such as year-over-year growth
4. **Complex Data Analysis**
      - Analyzing data across multiple tables and relationships

### When Not to Use
1. **Data Preparation**
      - Avoid using DAX for extensive data cleaning and transformation tasks
2. **Static Data Transformations**
      - When transformations do not need to be dynamic or interactive
3. **Complex ETL Processes**
      - For tasks better suited to ETL tools like Power Query




#### Power Query M
      - Used for data extraction, transformation, and loading (ETL).
      - It is designed to shape and clean data before it is loaded into the data model
      - Best for data preparation tasks such as filtering, merging, and transforming data
      - Executes during the data load phase, meaning transformations are applied when data is refreshed

### Best Use Cases
1. **Data Preparation**
      - Cleaning and transforming raw data before loading it into the data model
2. **Complex Transformations**
      - Applying advanced transformations like pivoting, unpivoting, and custom data type conversions
3. **Error Handling**
      - Implementing custom error-handling logic for missing or incorrect data
4. **Row-Level Operations**
      - Performing operations on individual rows, such as filtering and sorting

### When Not to Use
1. **Real-Time Calculations**
      - Avoid using Power Query for calculations that need to update dynamically based on user interactions
2. **Aggregations and Analysis**
      - When you need to perform complex aggregations and data analysis
3. **Time-Sensitive Calculations**
      - For calculations that depend on real-time data updates















