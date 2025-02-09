-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select 
    productname, categoryname
from product as p
left join category as c
    on categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select
    o.id,
    companyname
from [order] as o
left join shipper as s
    on o.shipvia = s.id
where orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select
    productname,
    quantity
from orderdetail as od
left join product as p
    on od.productid = p.id
where orderid = 10251;    

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select
    o.id as order_id,
    c.companyname as CompanyName,
    e.lastname as LastName
from [order] as o
join customer as c
    on o.customerid = c.id
join employee as e
    on employeeid = e.id;    