/*
- Table : OrderDetails
- 조건 : 제품명,가격, 주문 갯수, 고객명 표시
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


-- Product 테이블과 OrderDetails 테이블은  ProductID 로 묶여 있음
-- OrderDetails 테이블과 Orders 테이블은  OrderID 로 묶여 있음
-- Orders 테이블과 Customers 테이블은 CustomerID 로 묶여있음

-- OrderDetails 테이블과 Orders 테이블 조인

-- 요구사항: 제품명(Products.ProductName), 가격(Products.Product.Price), 주문 갯수(OrderDetails.Quantity), 고객명(Customers.CustomerName) 표시

-- SELECT P.ProductName, P.Price, OD.Quantity, CustomerName from (??);
-- ?? 안에 조인한 테이블을 넣는다.

-- 필요한 조인:
-- Products 와 OrderDetails 테이블은 Products 가 기준이 되어 LEFT 조인을 한다.  ---(3)
-- OrderDetails 와 Orders 테이블은 OrderDetails 가 기준이 되어 LEFT 조인을 한다.  ---(2)
-- Orders 와 Customers 테이블은 Orders 가 기준이 되어 LEFT 조인을 한다. ---(1)
-- 4개의 테이블을 (1), (2), (3) 순서대로 LEFT 조인을 한다.

--(1)
SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--(2)
SELECT * FROM OrderDetails LEFT JOIN Orders ON OrderDetails.OrderID = Orders.OrderID;

--(3)
SELECT * FROM Products LEFT JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID;

-- (2)에 (1)을 집어넣음 ---(4)
SELECT * FROM OrderDetails LEFT JOIN (SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID) O ON OrderDetails.OrderID = O.OrderID;

-- (3)에 (4)를 집어넣음 ---(5) // 전체 산출물 테이블
SELECT * FROM Products LEFT JOIN (SELECT * FROM OrderDetails LEFT JOIN (SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID) O ON OrderDetails.OrderID = O.OrderID) OD ON Products.ProductID = OD.ProductID;
*/

-- 요구사항 테이블 : (5) 를 ??에 넣는다.
SELECT P.ProductName, P.Price, OD.Quantity, CustomerName from (SELECT * FROM Products LEFT JOIN (SELECT * FROM OrderDetails LEFT JOIN (SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID) O ON OrderDetails.OrderID = O.OrderID) OD ON Products.ProductID = OD.ProductID) P;


-- 상동 쿼리
SELECT
    P.ProductName,
    P.Price,
    OD.Quantity,
    C.CustomerName
FROM
    ((OrderDetails OD
        INNER JOIN Products P ON OD.ProductID = P.ProductID)
        INNER JOIN Orders O ON OD.OrderID = O.OrderID)
        INNER JOIN Customers C ON O.CustomerID = C.CustomerID;