-- Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Top 5 Customers by Sales
SELECT CustomerName, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY CustomerName
ORDER BY Total_Sales DESC
LIMIT 5;

-- Monthly Sales Trend (YYYY-MM)
SELECT substr(OrderDate,1,7) AS Month, SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;
