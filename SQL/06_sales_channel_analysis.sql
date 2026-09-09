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
