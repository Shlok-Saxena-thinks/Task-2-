-- Revenue by Product
SELECT
    Product,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY Product
ORDER BY Revenue DESC;

-- Revenue by City
SELECT
    City,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY City
ORDER BY Revenue DESC;

-- Revenue by Category
SELECT
    Category,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;

-- Monthly Sales Trend
SELECT
    DATE_FORMAT(Order_Date,'%Y-%m') AS Month,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

-- Top 5 Customers
SELECT
    Customer_Name,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 5;

-- Average Order Value by Category
SELECT
    Category,
    ROUND(AVG(Total_Sales),2) AS Avg_Order_Value
FROM sales
GROUP BY Category
ORDER BY Avg_Order_Value DESC;

-- Age Group Revenue
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS Age_Group,
    ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales
GROUP BY Age_Group
ORDER BY Revenue DESC;