-- =========================================================
-- Discount Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Average Discount by Product Category
-- Business Question:
-- Which product category receives the highest average discount?

SELECT product_category,
       AVG(discount) AS average_discount
FROM sales_data
GROUP BY product_category
ORDER BY average_discount DESC;


-- 2. Total Sales by Discount Level
-- Business Question:
-- How do total sales differ across discount levels?

SELECT discount,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY discount
ORDER BY discount;


-- 3. Number of Transactions by Discount Level
-- Business Question:
-- How many transactions occur at each discount level?

SELECT discount,
       COUNT(*) AS total_transactions
FROM sales_data
GROUP BY discount
ORDER BY discount;


-- 4. Average Sale by Discount Level
-- Business Question:
-- How does the average transaction value vary across discount levels?

SELECT discount,
       AVG(sales_amount) AS average_sale
FROM sales_data
GROUP BY discount
ORDER BY discount;


-- 5. Total Quantity Sold by Discount Level
-- Business Question:
-- How does the quantity sold vary across discount levels?

SELECT discount,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY discount
ORDER BY discount;
