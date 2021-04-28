SELECT count(*) 
FROM Orders
INNER JOIN Shippers
ON Orders.ShipperID = Shippers.ShipperID
WHERE ShipperName = "Speedy Express";

/*result is 54 orders*/

SELECT Employees.EmployeeID,Employees.LastName, COUNT(Orders.OrderID) as NumOrd
FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID, LastName
Order BY COUNT(Orders.OrderID) DESC;

/* employee name is Peacock */

SELECT Customers.Country, Products.ProductName, count(Orders.OrderID) as num
FROM (((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID)
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID)
WHERE Country = "Germany"
Group BY ProductName, Country
ORDER BY count(Orders.OrderID) DESC;

/* Gorgonzola Telino */