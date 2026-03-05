
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
select count(*) as Totalnumberofsale
from [PCdata_db].[dbo].[1772542271737_pc_data]
-- 2. Count the number of sales per Continent.
SELECT CONTINENT,COUNT(*) AS Number_sales_Continent
from [PCdata_db].[dbo].[1772542271737_pc_data]
group by CONTINENT
-- 3. Count the number of sales per Country or State.
SELECT Country_or_State,COUNT(*) AS Number_sales_Country
from [PCdata_db].[dbo].[1772542271737_pc_data]
group by Country_or_State
-- 4. List all distinct Shop Name values.
select distinct Shop_name
from [PCdata_db].[dbo].[1772542271737_pc_data]
-- 5. Find the average Sale Price.
-- 6. Find the highest and lowest Sale Price.
SELECT MAX(cast(Sale_price as bigint))as Highest,Min(cast(Sale_price as bigint)) as lowest
from [PCdata_db].[dbo].[1772542271737_pc_data]

-- 7. Count the number of sales by Payment Method.
SELECT COUNT (Payment_Method) AS number_of_sales_paymethod 
FROM [PCdata_db].[dbo].[1772542271737_pc_data]

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT Channel,COUNT (*) AS number_of_sales_Channel 
FROM [PCdata_db].[dbo].[1772542271737_pc_data]
GROUP BY Channel
-- 9. Count the number of sales by Priority level.
SELECT [Priority],COUNT (*) AS number_of_sales_Priority
FROM [PCdata_db].[dbo].[1772542271737_pc_data]
GROUP BY [Priority]
-- 10. Count the number of distinct PC Make values.

select count (distinct(PC_make)) as number_of_distinct
FROM [PCdata_db].[dbo].[1772542271737_pc_data]


-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
Select Sum(sale_price) as TotalRevenue
from  [PCdata_db].[dbo].[1772542271737_pc_data]
-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
Select Sum(sale_price-Cost_Price) as  Total_profit
from  [PCdata_db].[dbo].[1772542271737_pc_data]
-- 13. Find the average Discount Amount.
select AVG(Discount_Amount) as Discount_Amount
from [PCdata_db].[dbo].[1772542271737_pc_data]
-- 14. Calculate total Finance Amount issued.
SELECT SUM(cast (Finance_Amount as bigint)) as Total_Finance_Amount
from  [PCdata_db].[dbo].[1772542271737_pc_data]
-- 15. Find total revenue per PC Make.
SELECT SUM(Sale_Price)  AS Total_revenue_PC_Make,PC_Make
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by PC_Make
-- 16. Find average Sale Price per Storage Type.
SELECT AVG(Sale_Price) as Average_Sale_Price ,Storage_Type
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by Storage_Type

-- 17. Calculate total revenue per Shop Name.
SELECT SUM(Sale_Price) as Total_revenue_per_Shop_Name,Shop_name
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by Shop_name

-- 18. Calculate total revenue per Sales Person Name.
SELECT SUM(Sale_Price) as Total_revenue_per_Sales_Person_Name,Shop_name
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by Shop_name
-- 19. Find average Credit Score per Payment Method.
SELECT AVG(Credit_Score) as Average_Credit_Score_per_Payment_Method,Payment_Method
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by Payment_Method
-- 20. Calculate total Cost of Repairs per Sales Person Department.
SELECT SUM(cast(Cost_of_Repairs as bigint)) as total_Cost_of_Repairs_per_Sales_PersonDepaertment,Sales_Person_Department
from  [PCdata_db].[dbo].[1772542271737_pc_data]
group by Sales_Person_Department
-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

