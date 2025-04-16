# Task_6

# 📊 Sales Trend Analysis Using SQL

This project performs sales trend analysis by aggregating monthly revenue and order volume using SQL.

# Tools Used
- SQL (MySQL) 
- Data Source: `online_sales.orders` table from Kaggle 

# File Structure

- `Task_6.sql` – SQL script to extract monthly sales trends (revenue & order volume).
- `results/sample_output.csv` – (Optional) Contains sample output for reference.

# SQL Concepts Used
- `SUM()` and `COUNT(DISTINCT ...)`
- `GROUP BY` for month and year
- `ORDER BY` for sorting
- `WHERE`, 'HAVING' for filtering specific time periods

# step
1. create schema : Task_6
2. import table -> name table -> finish
3. add query
4. run the query

# Script
SELECT * FROM task_6.sales;

SELECT
    YEAR(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')) AS order_year,
    MONTH(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')) AS order_month,
    SUM(`Revenue`) AS total_revenue,
    COUNT(DISTINCT `T_ID`) AS total_orders
FROM
    task_6.sales
GROUP BY
    YEAR(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')),
    MONTH(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y'))
ORDER BY
    order_year,
    order_month;
