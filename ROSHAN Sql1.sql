create database productdet;
use productdet;
create table prod(InvoiceID varchar (80),	Branch varchar(30),	City varchar(20),Customertype varchar(40),	Gender varchar(20),Productline varchar(40),Unitprice dec(10,2)
,Quantity float,Tax5percent dec(10,2),Sales Dec(10,2),	Dates Date,	Times Time,	Payment	varchar(30),cogs dec(10,2),grossmarginpercentage dec(10,2),
	grossincome dec(10,2),Rating dec(3,1));
    select * from prod;
   drop table purchase;
   drop schema purchasing;
   #retrieve data showing invoice id ,unique product taken ,n0 of quantity with toal sales
   SELECT InvoiceId, SUM(sales) AS Totalsales,quantity, COUNT( productline) AS unique_products
FROM prod
GROUP BY InvoiceId;
