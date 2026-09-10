-- =========================================================
-- Customer Type Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Total Sales by Customer Type
-- Business Question:
-- Which customer type generates the highest total sales?

SELECT customer_type,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY customer_type
ORDER BY total_sales DESC;


-- 2. Total Quantity Sold by Customer Type
-- Business Question:
-- Which customer type purchases the most units?

SELECT customer_type,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY customer_type
ORDER BY total_quantity_sold DESC;


-- 3. Number of Transactions by Customer Type
-- Business Question:
-- Which customer type has the most transactions?

SELECT customer_type,
       COUNT(*) AS total_transactions
FROM sales_data
GROUP BY customer_type
ORDER BY total_transactions DESC;


-- 4. Average Sale per Transaction by Customer Type
-- Business Question:
-- Which customer type has the highest average sale per transaction?

SELECT customer_type,
       AVG(sales_amount) AS average_sale
FROM sales_data
GROUP BY customer_type
ORDER BY average_sale DESC;


-- 5. Average Quantity per Transaction by Customer Type
-- Business Question:
-- Which customer type purchases the most units per transaction on average?

SELECT customer_type,
       AVG(quantity_sold) AS average_quantity_per_transaction
FROM sales_data
GROUP BY customer_type
ORDER BY average_quantity_per_transaction DESC;


