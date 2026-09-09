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


-- 3. Sales and Quantity Sold by Product Category
-- Business Question:
-- How do product categories compare in total sales and units sold?

SELECT product_category,
       SUM(sales_amount) AS total_sales,
       SUM(quantity_sold) AS total_quantity
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;


-- 4. Average Unit Price by Product Category
-- Business Question:
-- Which product categories have the highest average unit price?

SELECT product_category,
       AVG(unit_price) AS average_unit_price
FROM sales_data
GROUP BY product_category
ORDER BY average_unit_price DESC;


-- 5. Average Discount by Product Category
-- Business Question:
-- Which product categories receive the highest average discount?

SELECT product_category,
       AVG(discount) AS average_discount
FROM sales_data
GROUP BY product_category
ORDER BY average_discount DESC;


-- 6. Number of Transactions by Product Category
-- Business Question:
-- Which product categories have the most transactions?

SELECT product_category,
       COUNT(*) AS number_of_transactions
FROM sales_data
GROUP BY product_category
ORDER BY number_of_transactions DESC;


-- 7. Average Sales Amount by Product Category
-- Business Question:
-- Which product categories have the highest average sales amount per transaction?

SELECT product_category,
       AVG(sales_amount) AS average_sales_amount
FROM sales_data
GROUP BY product_category
ORDER BY average_sales_amount DESC;


-- 8. Sales Contribution by Product Category
-- Business Question:
-- What percentage of total company sales comes from each product category?

SELECT product_category,
       SUM(sales_amount) AS total_sales,
       (SUM(sales_amount) * 100.0) /
           (SELECT SUM(sales_amount)
            FROM sales_data) AS sales_percentage
FROM sales_data
GROUP BY product_category
ORDER BY sales_percentage DESC;


