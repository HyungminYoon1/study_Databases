/*
- Table : Customers, Orders
- 조건 : CustomerName 별로 주문 갯수 표시
- 연결 키는 각자 찾기
- 결과 표시
*/

/*
-- Products 테이블 출력
SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price from Products

-- Orders 테이블 출력
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShipperID from orders;

-- OrderDetails 테이블 출력
SELECT OrderDetailID, OrderID, ProductID, Quantity from orderDetails;

-- Customers 테이블 출력
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country from Customers;

-- 주문갯수: Orders 와 OrderDetails 를 OrderID 를 공통으로 join 한다.
*/

SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS OrderCount
FROM Customers
         LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY COUNT(Orders.OrderID) DESC;


