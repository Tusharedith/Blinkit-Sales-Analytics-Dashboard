-- Query 1: Total sales by outlet location
SELECT Outlet_Location_Type, SUM(Sales) AS Total_Sales
FROM BlinkitSales
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- Query 2: Average rating by item type
SELECT Item_Type, AVG(Rating) AS Avg_Rating
FROM BlinkitSales
GROUP BY Item_Type
ORDER BY Avg_Rating DESC;

-- Query 3: High visibility but low sales
SELECT Item_Type, AVG(Item_Visibility) AS Avg_Visibility, AVG(Sales) AS Avg_Sales
FROM BlinkitSales
GROUP BY Item_Type
HAVING Avg_Visibility > 0.1 AND Avg_Sales < 100
ORDER BY Avg_Visibility DESC;

-- Query 4: Sales by outlet establishment year
SELECT Outlet_Establishment_Year, SUM(Sales) AS Total_Sales
FROM BlinkitSales
GROUP BY Outlet_Establishment_Year
ORDER BY Total_Sales DESC;

-- Query 5: Total sales and order count by outlet size
SELECT Outlet_Size, SUM(Sales) AS Total_Sales, COUNT(*) AS Num_Orders
FROM BlinkitSales
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- Query 6:  Top 3 Best-Selling Item Types in Each Outlet Type
SELECT 
  Outlet_Type,
  Item_Type,
  SUM(Sales) AS Total_Sales
FROM BlinkitSales
GROUP BY Outlet_Type, Item_Type
ORDER BY Outlet_Type, Total_Sales DESC;

-- Query 7: YOY Sales Growth by Outlet Type
SELECT 
  Outlet_Establishment_Year AS Year,
  SUM(Sales) AS Total_Sales,
  ROUND((SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY Outlet_Establishment_Year)) / LAG(SUM(Sales)) OVER (ORDER BY Outlet_Establishment_Year) * 100, 2) AS YoY_Growth_Percent
FROM BlinkitSales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- Query 8: Fat Content Sales Contribution by Outlet Size
SELECT 
  Outlet_Size,
  Item_Fat_Content,
  SUM(Sales) AS Total_Sales,
  ROUND(SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER (PARTITION BY Outlet_Size), 2) AS Sales_Contribution_Percent
FROM BlinkitSales
GROUP BY Outlet_Size, Item_Fat_Content
ORDER BY Outlet_Size, Sales_Contribution_Percent DESC;


