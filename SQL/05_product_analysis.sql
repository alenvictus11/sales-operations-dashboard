-- =========================================================
-- Product Category Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Total Sales by Product Category
-- Business Question:
-- Which product categories generate the highest total sales?

SELECT product_category,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;


-- 2. Total Quantity Sold by Product Category
-- Business Question:
-- Which product categories sell the most units?

SELECT product_category,
       SUM(quantity_sold) AS total_quantity
FROM sales_data
GROUP BY product_category
ORDER BY total_quantity DESC;
