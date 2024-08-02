/*
- Table : Customers, Orders
- 조건 : CustomerName별로 주문 갯수 표시
- 연결 키는 각자 찾기
- 결과 표시
*/


-- Products 테이블 출력
SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price from Products

-- Orders 테이블 출력
SELECT OrderID, CustomerID, EmployeeID, OrderDate, ShipperID from orders;

-- OrderDetails 테이블 출력
SELECT OrderDetailID, OrderID, ProductID, Quantity from orderDetails;

-- Customers 테이블 출력
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country from Customers;

-- 주문갯수: Orders 와 OrderDetails 를 OrderID 를 공통으로 join 한다.

-- 요구사항:  SELECT CustomerID, CustomerName, OD.Quantity,  FROM (??) GROUP BY CustomerName;
-- 절대적 기준: Customers 테이블 의 CustomerID --- (3)
-- 다음으로 Orders을 확인하여 CustomerID 당 갖고 있는 OrderID를 확인한다.  --- (2)
-- 다음으로 OrderID에 할당된 Quantity를 합산한다. --- (1)

-- 1, 2, 3 순서대로 조인한다.


