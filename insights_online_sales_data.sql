use summertraining;
select * from online_sales_data;

SELECT Region, SUM(Total_Revenue) AS Total_Revenue
FROM Online_Sales_Data
GROUP BY Region;

select Product_Name, max(Units_Sold)
from online_sales_data
group by Product_Name;


SELECT Product_Category, SUM(Units_Sold) AS Total_Units_Sold
FROM online_sales_data
GROUP BY Product_Category;

select Product_Category, avg(Unit_Price)
as Avg_Unit_Price 
from online_sales_data
group by Product_Category;

SELECT Payment_Method, count(Product_Name)  
from online_sales_data
group by Payment_Method;
 
SELECT Payment_Method, SUM(Total_Revenue) AS Total_Revenue
FROM online_sales_data
GROUP BY Payment_Method;

SELECT Product_Name, SUM(Total_Revenue) AS Total_Revenue
FROM Online_Sales_Data
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 3;

select sum(Units_Sold) as total_units_sold
from online_sales_data;

-- SELECT To_Date, SUM(Total_Revenue) AS Total_Revenue
-- FROM online_sales_data
-- GROUP BY To_Date
-- ORDER BY To_Date;

SELECT Product_Name, SUM(Total_Revenue) AS Total_Revenue
FROM Online_Sales_Data
GROUP BY Product_Name
ORDER BY Total_Revenue 
LIMIT 3;

select Product_Name, sum(Units_Sold) as total_units_sold
from online_sales_data
group by Product_Name
order by total_units_sold DESC
limit 5;

select Product_Category,Region, Payment_Method,sum(Units_Sold)
as total_unit_sold
from online_sales_data
group by Product_Category,Region,Payment_Method
order by total_unit_sold DESC;

alter table online_sales_data
add Month varchar(20);
alter table online_sales_data
rename column R_Date to Sale_Date;

-- SELECT 
--     EXTRACT(MONTH FROM TO_DATE(R_Date, 'DD-MM-YYYY')) AS Month, 
--     SUM(Total_Revenue) AS total_revenue
-- FROM online_sales_data
-- GROUP BY EXTRACT(MONTH FROM TO_DATE(R_Date, 'DD-MM-YYYY'))
-- ORDER BY Month;

