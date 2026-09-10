-- =========================================================
-- Payment Method Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Total Sales by Payment Method
-- Business Question:
-- Which payment method generates the highest total sales?

SELECT payment_method,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY payment_method
ORDER BY total_sales DESC;


-- 2. Number of Transactions by Payment Method
-- Business Question:
-- Which payment method is used for the most transactions?

SELECT payment_method,
       COUNT(*) AS total_transactions
FROM sales_data
GROUP BY payment_method
ORDER BY total_transactions DESC;


-- 3. Average Transaction Value by Payment Method
-- Business Question:
-- Which payment method has the highest average transaction value?

SELECT payment_method,
       AVG(sales_amount) AS average_transaction_value
FROM sales_data
GROUP BY payment_method
ORDER BY average_transaction_value DESC;


-- 4. Total Quantity Sold by Payment Method
-- Business Question:
-- Which payment method is associated with the highest number of units sold?

SELECT payment_method,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY payment_method
ORDER BY total_quantity_sold DESC;


-- 5. Average Quantity per Transaction by Payment Method
-- Business Question:
-- Which payment method has the highest average quantity per transaction?

SELECT payment_method,
       AVG(quantity_sold) AS average_quantity_per_transaction
FROM sales_data
GROUP BY payment_method
ORDER BY average_quantity_per_transaction DESC;
