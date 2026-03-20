create database procurement_project;
use procurement_project;
create table procurement (
	Invoice_ID varchar(20),
    Vendor_Name varchar(100),
    Category varchar(50),
    Department varchar(50),
    Invoice_Date date,
    Amount int,
    Payment_Status varchar(20),
    Region varchar(50),
    Month int
);
select * from procurement
limit 10;
select Vendor_Name,
sum(Amount) as Total_Spend
from procurement
group by Vendor_Name
order by Total_Spend desc;

SELECT Category,
SUM(Amount) AS Total_Spend
FROM procurement
GROUP BY Category
ORDER BY Total_Spend DESC;

SELECT Month,
SUM(Amount) as Monthly_Spend
FROM procurement
group by Month
order by Month;

SELECT Vendor_Name,
SUM(Amount) as Total_Spend
FROM procurement
GROUP BY Vendor_Name
order by Total_Spend DESC
LIMIT 10;

SELECT Department,
SUM(Amount) AS Total_Spend
FROM procurement
GROUP BY Department
ORDER BY Total_Spend DESC;

SELECT Invoice_ID,
COUNT(*) AS Duplicate_Count
FROM procurement
GROUP BY Invoice_ID
HAVING COUNT(*) > 1;