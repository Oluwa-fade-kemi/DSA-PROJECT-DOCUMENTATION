Create database DSA_DB

Select * from [KMS Customer]

Select * from [KMS Orders]

1
Select Top 1 Product_Category, SUM(Sales) As TotalSales
from [KMS Customer]
group by Product_Category
order by TotalSales desc;

2
Select Top 3 Region, SUM(Sales) As TotalSales
from [KMS Customer]
group by Region
Order by TotalSales desc;

Select Top 3 Region, SUM(Sales) As TotalSales
from [KMS Customer]
group by Region
Order by TotalSales asc;

3
Select 
   SUM(Sales) As TotalSales
   from [KMS Customer]
Where Product_Sub_Category = 'Appliances' AND Region = 'Ontario';

4
Select Top 10 Customer_Name, SUM(Sales) As TotalSales
From [KMS Customer]
Group by Customer_Name
Order by TotalSales asc;

Advice to management: Price Skimming, Product diversification, Discount sales, Recognition of loyal customers.

5
Select Shipping_mode,SUM(Shipping_Cost) As TotalCost
from [KMS Customer]
group by Shipping_mode
order by TotalCost desc;

6
----Most Valuable Customers----
Select Top 3 Customer_Name,SUM(Sales) As TotalSales
From [KMS Customer]
Group by Customer_Name
Order by TotalSales desc;

----Purchase Frequency Of vauable Customers----
Select Customer_Name, Product_Category, COUNT(*) As Purchase_Frequency
From [KMS Customer]
Where Customer_Name IN (
    Select Top 3 Customer_Name
    From [KMS Customer]
    Group by Customer_Name
    Order by  SUM(Sales) desc
)
Group by Customer_Name, Product_Category
Order by Customer_Name, Purchase_Frequency desc;

7
Select Top 1 Customer_Name, SUM(Sales) As TotalSales
From [KMS Customer]
Where Customer_Segment = 'Small Business'
Group by Customer_Name
Order by TotalSales desc;

8
Select Top 1 Customer_Name, COUNT(DISTINCT Order_ID) AS OrderCount
From [KMS Customer]
Where Customer_Segment = 'Corporate'
AND Order_Date BETWEEN '2009-01-01' AND '2012-12-31'
Group by Customer_Name
Order by OrderCount desc;

9
Select Top 1 Customer_Name, SUM(profit) As TotalProfit
From [KMS Customer]
Where Customer_Segment = 'Consumer'
Group by Customer_Name
Order by TotalProfit desc;

10
Select (Order_ID,  Customer_Name, Customer_Segment ) As Customer
From [KMS Customer]
Join (Order_ID, Status) As Orders 
From [KMS Orders] 
Where Returned = 'Yes';
ON customer.Order_ID = orders.Order_ID

11
Select Order_Priority, Shipping_Mode, COUNT(*) As OrderCount, SUM(Shipping_Cost) As TotalCost
From [KMS Customer]
Group by Order_Priority, Shipping_mode
Order by Order_Priority, Shipping_mode;







