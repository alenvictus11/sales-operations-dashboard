# sales-operations-dashboard

## Project Overview
This project analyzes a sales dataset containing **1,001 records** and **14 business fields** to understand sales performance and identify patterns across different business dimensions. The project focuses on answering business questions using data and presenting findings in a clear and practical way.

The project was completed in two stages:

1. **Microsoft Excel** - Data cleaning, exploratory analysis, Pivot Tables, Pivot Charts, slicers, and an interactive dashboard.
2. **Postgresql/SQL** - Structured analysis of product categories, sales channels, customer types, payment methods, discounts, and sales performance over time.

## Dataset
Records: 1,001
Columns: 14

## Fields
Product ID
Sales Date
Sales Representative
Region
Sales Amount
Quantity Sold
Product Category
Unit cost
Unit price
Customer Type
Discount
Payment Method
Sales Channel
Region and Sales Representative

## Tools Used
Microsoft Excel
PostgreSQL
SQL
Pivot Tables
Pivot Charts
Interactive Dashboards
Slicers
Data Cleaning
Github

## Business Questions
- Which region generated the highest sales?
- Which product category generated the highest revenue?
- Which sales representative achieved the highest sales?
- Which payment method was used frequently?
- Which sales channel generated the highest sales?

## SQL Analysis Questions
- Which product categories generated the highest total sales and quantity sold?
- How do Online and Retail sales channels compare?
- How do New and Returning customers differ in sales and purchasing behavior?
- Which payment methods generated the highest sales and transactions volume?
- How do discount levels relate to sales performance?
- How does sales performance vary across months and dates?

## Dashboard Preview
![Sales Operations Dashboard](screenshots/dashboard.png)
This interactive dashboard enables users to analyze sales performance by region, product category, sales channel, payment method, and sales representative using slicers.

## Key Insights

- **North** generated the highest total sales.
- **Clothing** led product categories in total sales and transaction volume.
- **Retail** slightly outperformed Online in total sales and transaction volume.
- **Credit Card** generated the highest total sales and average transaction value.
- **David** achieved the highest sales among representatives.
- **Returning customers** generated slightly higher total sales and average transaction values, while **New customers** generated more transactions and units sold.
- **January 2023** recorded the highest total sales, transaction count, and quantity sold.
- **Discount** levels showed no clear linear relationship with sales performance.
- **January 2024** included only three transactions and was treated as an incomplete period.

## SQL Analysis

The PostgreSQL analysis is organized into the following files:
- [sql/05_product_category_analysis.sql](sql/05_product_category_analysis.sql) - Product Category Performance
- [sql/06_sales_channel_analysis.sql](sql/06_sales_channel_analysis.sql) - Sales Channel Performance
- [sql/07_customer_type_analysis.sql](sql/07_customer_type_analysis.sql) - New vs Returning customers
- [sql/08_payment/_method_analysis.sql](sql/08_payment/_method_analysis.sql) - Payment method performance
- [sql/09_discount_analysis.sql](sql/09_discount_analysis.sql) - Discount and sales patterns
- [sql/10_sales_performance_analysis.sql](sql/10_sales_performance_analysis.sql) - Monthly and daily sales performance

## Skills Demonstrated

**Excel**
Data Cleaning		
Data Summarization		
Pivot Tables		
Pivot Charts		
Dashboard Design		
Data Visualization		
Slicers

**SQL/PostgreSQL**
Data Aggregation
Filtering and Sorting
Grouping
Data-Based Analysis
Subqueries

**Analytical Skills**
Business Insight Generation
KPI Comparison
Pattern and Exception Identification
Data Quality Awareness
Evidence-based Interpretation

## Future Enhancement
- Automate data cleaning and analysis with Python.
- Add Python-based visualization
- Explore CRM integration with Hubspot or Zoho.
- Develop automated sales operations workflows.
