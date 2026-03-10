-- =========================================
-- KPI REQUIREMENTS
-- =========================================
-- Total Revenue
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;

-- Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value
FROM pizza_sales;

-- Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;

-- Average Pizzas Per Order
SELECT SUM(quantity) / COUNT(DISTINCT order_id) AS Avg_Pizzas_Per_Order
FROM pizza_sales;

-- =========================================
-- DAILY TREND
-- =========================================

SELECT 
DATENAME(WEEKDAY, order_date) AS order_day,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date)
ORDER BY total_orders DESC;

-- =========================================
-- MONTHLY TREND
-- =========================================

SELECT 
DATENAME(MONTH, order_date) AS month_name,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY total_orders DESC;