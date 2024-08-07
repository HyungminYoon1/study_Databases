-- 주문을 받지 못한 종업원(담장자) 찾기 => 리스트 출력

-- SELECT * FROM Employees;
-- SELECT * FROM Orders;

SELECT *
FROM Employees Emp
    LEFT JOIN Orders Ord
        on Emp.EmployeeID = Ord.EmployeeID
where Ord.CustomerID is null;
