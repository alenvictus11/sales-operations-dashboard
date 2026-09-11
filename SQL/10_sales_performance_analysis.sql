-- =========================================================
-- Sales Performance Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Total Sales by Month
-- Business Question:
-- How do total sales change over time?

SELECT DATE_TRUNC('month', sale_date) AS sales_month,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;


-- 2. Monthly Transaction Count
-- Business Question:
-- How many transactions occurred each month?

SELECT DATE_TRUNC('month', sale_date) AS sales_month,
       COUNT(*) AS total_transactions
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;


-- 3. Monthly Average Sale
-- Business Question:
-- What is the average transaction value each month?

SELECT DATE_TRUNC('month', sale_date) AS sales_month,
       AVG(sales_amount) AS average_sale
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;


-- 4. Monthly Quantity Sold
-- Business Question:
-- How many units were sold each month?

SELECT DATE_TRUNC('month', sale_date) AS sales_month,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;


-- 5. Highest-Selling Day
-- Business Question:
-- Which date generated the highest total sales?

SELECT sale_date,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY sale_date
ORDER BY total_sales DESC;


-- 6. Highest-Selling Month
-- Business Question:
-- Which month generated the highest total sales?

SELECT DATE_TRUNC('month', sale_date) AS sales_month,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY sales_month
ORDER BY total_sales DESC;
