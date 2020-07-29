-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

-- SELECT p.ProductName,
--        c.CategoryName
--   FROM Product AS p
--        JOIN
--        Category AS c ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

-- SELECT o.id,
--        s.CompanyName
--   FROM [Order] AS o
--        JOIN
--        Shipper AS s ON o.ShipVia = s.Id
--  WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

-- SELECT p.productname,
--        o.quantity
--   FROM Product AS p
--        JOIN
--        OrderDetail AS o ON o.productid = p.Id
--  WHERE o.orderid = '10251'
--  ORDER BY p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

-- SELECT o.id AS OrderID,
--        c.companyname AS CompanyName,
--        e.lastname AS LastName
--   FROM [Order] AS o
--        JOIN
--        Customer AS c ON c.id = o.customerid
--        JOIN
--        Employee AS e ON e.id = o.employeeid;

-- STRETCH: Display CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.

-- SELECT c.CategoryName,
--        COUNT(c.CategoryName) AS Count
--   FROM Categories AS c
--        JOIN
--        Products AS p ON c.categoryid = p.categoryid
--  GROUP BY c.categoryname;

-- STRETCH: Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.

-- SELECT o.OrderID,
--        SUM(o.Quantity) as Total 
--   FROM OrderDetails AS o
--  GROUP BY o.OrderID;




