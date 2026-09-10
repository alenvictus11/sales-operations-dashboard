-- =========================================================
-- Sales Channel Analysis
-- Sales Operations Analytics
-- =========================================================


-- 1. Total Sales by Sales Channel
-- Business Question:
-- Which sales channel generates the highest total sales?

SELECT sales_channel,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY sales_channel
ORDER BY total_sales DESC;


-- 2. Total Quantity Sold by Sales Channel
-- Business Question:
-- Which sales channel sells the most units?

SELECT sales_channel,
       SUM(quantity) AS total_quantity_sold
FROM sales_data
GROUP BY sales_channel
ORDER BY total_quantity_sold DESC;


-- 3. Average Sale per Transaction by Sales Channel
-- Business Question:
-- Which sales channel has the highest average sale per transaction?

SELECT sales_channel,
       AVG(sales_amount) AS average_sale
FROM sales_data
GROUP BY sales_channel
ORDER BY average_sale DESC;


-- 4. Number of Transactions by Sales Channel
-- Business Question:
-- Which sales channel has the highest number of transactions?

SELECT sales_channel,
       COUNT(*) AS total_transactions
FROM sales_data
GROUP BY sales_channel
ORDER BY total_transactions DESC;


-- 5. Average Quantity per Transaction by Sales Channel
-- Business Question:
-- Which sales channel has the highest average quantity sold per transaction?

SELECT sales_channel,
       AVG(quantity) AS average_quantity_per_transaction
FROM sales_data
GROUP BY sales_channel
ORDER BY average_quantity_per_transaction DESC;

