---------- CREATE DATABASE -----------
CREATE DATABASE KMS_DB;

------------- IMPORT TABLE -------------
-----INSERT KMS SQL CASE STUDY
SELECT * FROM KMS

UPDATE KMS
SET Sales = ROUND(Sales, 2);


-------- PRODUCT CATEGORY WITH THE HIGHEST SALES ----------
SELECT TOP 1 Product_category, ROUND(SUM(sales), 2) AS Highest_sales 
FROM KMS
GROUP BY Product_category
ORDER BY Highest_sales;

-------- TOP 3 AND BOTTOM 3 REGIONS IN TERMS OF SALES -------
WITH Ranked_regions AS (
SELECT Region,
ROUND(SUM(Sales), 2) AS Total_sales,
RANK() OVER (ORDER BY SUM(Sales) DESC) AS Top_ranked,
RANK() OVER (ORDER BY SUM(Sales) ASC) AS Bottom_ranked
FROM KMS
GROUP BY Region)
SELECT *
FROM Ranked_regions
WHERE Top_ranked <= 3 OR Bottom_ranked <= 3
ORDER BY Total_sales DESC;

------ TOTAL SALES OF APPLIANCES IN ONTARIO -------
SELECT Province, ROUND(SUM(Sales), 2) AS Total_sales
FROM KMS
WHERE Province = 'Ontario'
GROUP BY Province
ORDER BY Total_sales DESC;

------ BOTTOM 10 CUSTOMERS -------
WITH CustomerTotals AS (
    SELECT 
        Customer_name, 
        SUM(Sales) AS Total_revenue
    FROM KMS
    GROUP BY Customer_name
),

RankedCustomers AS (
    SELECT 
        Customer_name,
        Total_revenue,
        RANK() OVER (ORDER BY Total_revenue ASC) AS Least_customers
    FROM CustomerTotals
)
SELECT *
FROM RankedCustomers
WHERE Least_customers <= 10
ORDER BY Total_revenue ASC;

--------- SOLUTIONS TO IMPROVE THE REVENUE FROM THE BOTTOM 10 CUSTOMERS --------
---1. Survey or Feedback - A survey can be carried out by these customers to find out what could have been done to improve theior shopping experience
---2. Additional Discounts - Introduce more discounts on products which will encourage repeated purchases

---------- SHIPPING METHOD WITH THE MOST COST ---------
SELECT TOP 1 Ship_mode, ROUND(SUM(shipping_cost), 2) AS Total_shipping_cost
FROM KMS
GROUP BY Ship_mode
ORDER BY Total_shipping_cost DESC;


SELECT * FROM KMS

-------- MOST VALUABLE CUSTOMERS AND SERVICES PURCHASED -------

WITH Customer_Sales AS (
    SELECT 
        Customer_Name,
        Product_category,
        SUM(Sales) AS Total_Sales
    FROM KMS  
    GROUP BY Customer_Name, Product_Category
),
Top_Customers AS (
    SELECT TOP 10 Customer_Name
    FROM Customer_Sales
    GROUP BY Customer_Name
    ORDER BY SUM(Total_Sales) DESC
)
SELECT 
    CS.Customer_Name,
    CS.Product_category,
    CS.Total_Sales
FROM Customer_Sales CS
JOIN Top_Customers TC ON CS.Customer_Name = TC.Customer_Name
ORDER BY CS.Total_Sales DESC;

SELECT * FROM KMS
--------- SMALL BUSINESS CUSTOMER WITH THE HIGHEST SALES --------
SELECT TOP 1 Customer_name, Customer_segment,  SUM(Sales) AS Highest_sale
FROM KMS
where customer_segment = 'Small Business'
GROUP BY Customer_name, customer_segment
ORDER BY Highest_sale DESC;

--------- CORPORATE CUSTOMER WHO HAD THE MOST NUMBER OF ORDERS IN 2009 - 2012 --------
SELECT TOP 1 Customer_name, Customer_segment, COUNT(order_id) AS Total_orders
FROM KMS
WHERE YEAR(Order_date) BETWEEN 2009 AND 2012
  AND Customer_segment = 'Corporate'
GROUP BY Customer_name, Customer_segment
ORDER BY Total_orders DESC;

-------- THE MOST PROFITABLE CONSUMER CUSTOMER ---------

SELECT TOP 1 Customer_name, SUM(sales) AS Amount_spent
FROM KMS
WHERE Customer_segment = 'Consumer'
GROUP BY Customer_name
ORDER BY Amount_spent DESC;

------ If the delivery truck is the most economical but the slowest shipping method and 
--Express Air is the fastest but the most expensive one, do you think the company 
--appropriately spent shipping costs based on the Order Priority? Explain your answer

------ Yes, they did. The amount the company spent on delivery trucks was way more than what it spent on express air
-- And yet, express air made a lot more profit from the services rendered based on the total amount spent
---- Queried Example On The Above Explaination:

SELECT 
    Ship_mode, 
    SUM(Shipping_cost) AS Total_cost, 
    SUM(Profit) AS Total_profit_made,
    ROUND((SUM(Profit) / NULLIF(SUM(Shipping_cost), 0)) * 100, 2) AS Profit_Percent
FROM KMS
GROUP BY Ship_mode
ORDER BY Total_cost DESC;
