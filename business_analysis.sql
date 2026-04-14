# Overall Business Performance
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)/SUM(sales), 2) AS profit_margin
FROM walmart;
 

#Total Orders & Customers
SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_name) AS total_customers
FROM walmart;
 

# Category Performance
SELECT 
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM walmart
GROUP BY category
ORDER BY total_sales DESC;
 

# Sub-Category Profitability
SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM walmart
GROUP BY sub_category
ORDER BY total_profit DESC;
 

# Loss-Making Orders %
SELECT 
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM walmart), 2) AS loss_percentage
FROM walmart
WHERE profit < 0;
 

 # Loss by Category
SELECT 
    category,
    COUNT(*) AS loss_orders
FROM walmart
WHERE profit < 0
GROUP BY category
ORDER BY loss_orders DESC;
 

 # Discount vs Profit
SELECT 
    discount,
    ROUND(AVG(profit), 2) AS avg_profit
FROM walmart
GROUP BY discount
ORDER BY discount;
 

 # Discount Bucketing
SELECT 
    CASE 
        WHEN discount <= 0.1 THEN '0-10%'
        WHEN discount <= 0.2 THEN '10-20%'
        WHEN discount <= 0.3 THEN '20-30%'
        WHEN discount <= 0.4 THEN '30-40%'
        ELSE '40%+'
    END AS discount_range,
    ROUND(AVG(profit), 2) AS avg_profit
FROM walmart
GROUP BY discount_range
ORDER BY discount_range;
 

 # High Sales but Low Profit Orders
SELECT 
    order_id,
    sales,
    profit
FROM walmart
WHERE sales > 500 AND profit < 0
ORDER BY sales DESC;
 

 # Yearly Sales Trend
SELECT 
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales
FROM walmart
GROUP BY YEAR(order_date)
ORDER BY year;
 

 # Yearly Profit Trend
SELECT 
    YEAR(order_date) AS year,
    SUM(profit) AS total_profit
FROM walmart
GROUP BY YEAR(order_date)
ORDER BY year;
 

 # Top 10 Customers by Revenue
SELECT 
    customer_name,
    SUM(sales) AS total_sales
FROM walmart
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
 

 # Repeat Customers Count
SELECT 
    COUNT(*) AS repeat_customers
FROM (
    SELECT customer_name
    FROM walmart
    GROUP BY customer_name
    HAVING COUNT(order_id) > 1
) t;
 

 # Region Performance
SELECT 
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM walmart
GROUP BY region
ORDER BY total_sales DESC;
 

 # Top Loss-Making Products
SELECT 
    product_name,
    SUM(profit) AS total_loss
FROM walmart
WHERE profit < 0
GROUP BY product_name
ORDER BY total_loss ASC
LIMIT 10;

