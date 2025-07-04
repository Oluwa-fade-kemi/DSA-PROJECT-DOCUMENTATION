# DSA-PROJECT-DOCUMENTATION

This is a summary of my Data Analysis (intermediate level) journey with the Incubator Hub. 

I acquired more knowledge and can now use Ms Excel well, SQL, know how to build my Portfolio and a bit understanding of Power BI.


## Project Topic:  Product Sales and Review Analysis (An Excel Case Scenario) & Inventory and Sales Analysis (An SQL Case Scenario)

### Project Overview

The Excel case analysis project aims to generate insights into the product sales, categories and number of reviews from customers per time. By analyzing the parameters in our given data, we aim to gather more insights for better understanding, so as to giver better inferences for a more reliable decision-making process.

The SQL project aims to also generate insights into the office supplies and furniture, order levels and sales. By analyzing the parameters in our given data, we aim to gather more insights for a reliable and accurate decision-making process.

### Data Sources
The projects use primary data sources provided by the class instructors to carry out their various analyses. The data are contained here as Amazon case study.xls, KMS Sql Case Study.csv and Order_Status.xls.

### Tools Used
- Ms Excel [Download here](https://www.microsoft.com)
    - Data collection
    - Data cleaning
    - Power query (to clean the SQL case file)
    - Pivot table and dashboard (for analysis)
- SQL Server for Querying and Analysis [Download here](https://learn.microsoft.com/en-us/ssms/install/install)

### Data Cleaning and Preparation
Here, the following actions were performed;
1.	Data loading and inspection
2.	Handling missing variables
3.	Removing duplicates
4.	Data cleaning and formatting
5.	Data transformation

### Explorative Data Analysis
EDA contains the task carried out in form of questions and answers about the data, it is attached below;

### Data Analysis
Here, queries used in SQL and formulas, tables & dashboard used in Excel for the analyses are included.
For instance,
```sql
SELECT
p.Product_category,
     SUM (s.quantity * s.price) AS total_revenue,
     COUNT (DISTINCT s.sale_id) AS number_of_sales,
     AVG (s.price) AS average_sale_price
FROM
     Sales s
JOIN
     Products p ON s.product_id = p.product_id
GROUP BY
p.product_category
ORDER BY
total_revenue DESC;
```

