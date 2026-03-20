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