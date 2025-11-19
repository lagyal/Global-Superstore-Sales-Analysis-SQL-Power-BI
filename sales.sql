select count(*) 
from sales;

DESCRIBE sales;


SELECT 
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    SUM(Quantity) AS total_quantity,
    ROUND(AVG(profit_margin)*100,2) AS avg_profit_margin_percent
FROM sales;


SELECT 
    order_year,
    ROUND(SUM(Sales),2) AS yearly_sales,
    ROUND(SUM(Profit),2) AS yearly_profit
FROM sales
GROUP BY order_year
ORDER BY order_year;

SELECT 
    City,
    ROUND(SUM(Sales),2) AS total_sales
FROM sales
GROUP BY City
ORDER BY total_sales DESC
LIMIT 10;

SELECT 
    Category,
    `Sub-Category`,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales
GROUP BY Category, `Sub-Category`
ORDER BY total_profit DESC;