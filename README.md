# Business Performance KPI Dashboard

End-to-end business performance analytics project using SQL, Python, Excel, and Power BI.

## Project Overview


This project demonstrates an end-to-end business data analytics workflow using a sample sales dataset. The analysis covers data cleaning, data quality validation, SQL-based analysis, Python data processing, KPI development, and business insight generation.

The project is designed to demonstrate practical skills in SQL, Python, Excel, data validation, KPI analysis, trend analysis, and reporting. The dataset is a sample portfolio dataset created for demonstration purposes and does not contain confidential or employer data.

## Technical Workflow

1. Loaded the raw sales dataset and reviewed its structure and data types.
2. Performed data quality checks for missing values, duplicates, invalid quantities, prices, discounts, dates, categories, and regions.
3. Cleaned and transformed the data using Python and SQL.
4. Calculated business metrics including Revenue, Profit, and Profit Margin.
5. Used SQL and Python to analyze KPIs, product performance, regional performance, customer activity, and monthly revenue trends.
6. Generated analysis-ready datasets for reporting and further visualization.
7. Interpreted the results to identify business trends, performance differences, and areas for further investigation.

## Tools & Technologies

* **SQL:** T-SQL, SQL Server
* **Python:** Pandas, NumPy
* **Data Analysis:** Data Cleaning, Data Validation, KPI Analysis, Trend Analysis, Profitability Analysis
* **Reporting & Visualization:** Excel, Power BI
* **Documentation:** Business Requirements, Data Dictionary, Data Quality Rules
* **Version Control:** Git, GitHub


## Project Structure

```text
business-performance-kpi-dashboard/
├── data/
│   ├── raw/
│   │   └── sales_data.csv
│   └── cleaned/
│       ├── README.md
│       ├── sales_cleaned.csv
│       └── monthly_summary.csv
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_table.sql
│   ├── 03_data_quality_checks.sql
│   ├── 04_data_cleaning.sql
│   ├── 05_kpi_analysis.sql
│   ├── 06_product_analysis.sql
│   ├── 07_customer_analysis.sql
│   └── 08_monthly_trends.sql
├── python/
│   └── data_cleaning_analysis.py
├── documentation/
│   ├── business_requirements.md
│   └── data_dictionary.md
└── README.md
```

## Data Analysis

The analysis focused on key business performance measures across products, customers, regions, and time.

* **KPI Analysis:** Revenue, Profit, Profit Margin, Orders, Customers, and Units Sold
* **Regional Analysis:** Revenue, profit, and order performance by region
* **Product Analysis:** Revenue and profit by product and category
* **Customer Analysis:** Customer revenue, order activity, and customer rankings
* **Monthly Trends:** Monthly revenue, profit, and order trends
* **Data Quality:** Missing values, duplicates, invalid values, and consistency checks
* **Root Cause Analysis:** Investigation of unexpected results, discrepancies, and performance changes

  ## Results Summary

The analysis identified several differences in business performance across regions, products, categories, and months.

* **West** had the highest regional revenue at **$9,438.90**.
* **North** had the lowest regional revenue at **$7,283.00**.
* **Electronics** generated the highest category profit at **$5,584.50**.
* **Laptop** generated the highest product revenue at **$11,546.50** and the highest product profit at **$2,921.50**.
* **January** had the highest monthly revenue at **$4,470.00**.
* **August** had the lowest monthly revenue at **$1,054.00**.
* Monthly revenue fluctuated throughout the year, highlighting opportunities to investigate changes in product, regional, or customer performance.

## Data Quality & Validation

Data quality checks were performed before analysis to improve the reliability of the reporting outputs.

* Checked for missing Order IDs, Customer IDs, and Order Dates.
* Checked for duplicate order records.
* Validated quantities and unit prices for invalid or negative values.
* Verified discount values were within the expected 0–1 range.
* Reviewed category and region values for consistency.
* Converted date and numeric fields to appropriate data types.
* Applied validation rules during the cleaning process before calculating business metrics.
* Reviewed calculated Revenue, Profit, and Profit Margin values for consistency.

## Business Value

This project demonstrates how cleaned and validated data can be transformed into information that supports business decision-making.

The analysis provides visibility into regional performance, product and category profitability, customer activity, and monthly revenue trends. These insights can help identify areas of strong performance, investigate unexpected changes, and support further analysis of sales and operational performance.

The project also demonstrates a focus on data accuracy, repeatable analysis, documentation, and clear communication of findings.


## Dataset

...

## SQL Analysis

...

## Python Analysis

...

## Key Business Insights


Analysis of the cleaned sales data identified several notable business trends:

* **West generated the highest regional revenue** at $9,438.90, while North generated the lowest at $7,283.00.
* **Electronics generated the highest total profit** at $5,584.50, followed by Furniture and Accessories.
* **Laptop was the top-performing product by revenue**, generating $11,546.50 in revenue and $2,921.50 in profit.
* **Monthly revenue varied significantly** throughout 2024, with January generating the highest monthly revenue at $4,470.00 and August the lowest at $1,054.00.
* Revenue fluctuated throughout the year, with stronger performance in January and May and lower performance in August and November.
