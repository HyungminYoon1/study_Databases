-- 주문을 받은 횟수가 높은 담당자 순서로 리스트 출력

-- SELECT * FROM Employees;
-- SELECT * FROM Orders;
/*
-- 1) outer join
SELECT *
FROM Employees Emp
    LEFT JOIN Orders Ord
    on Emp.EmployeeID = Ord.EmployeeID
;


-- 2) 판매건이 없는 항목을 제외
SELECT *
FROM Employees Emp
    LEFT JOIN Orders Ord
    on Emp.EmployeeID = Ord.EmployeeID
    where Ord.OrderId is not null
;

-- 3) 2)번을 EmployeeID 로 그룹화
SELECT Emp.EmployeeID, count(*) as salescount
FROM Employees Emp
    LEFT JOIN Orders Ord
    on Emp.EmployeeID = Ord.EmployeeID
    where Ord.OrderId is not null
group by Emp.EmployeeID
;
*/
-- 4) 3)번을 주문 순서로 출력

SELECT Emp.EmployeeID, count(*) as salescount
FROM Employees Emp
         LEFT JOIN Orders Ord
                   on Emp.EmployeeID = Ord.EmployeeID
where Ord.OrderId is not null
group by Emp.EmployeeID
order by count(*) DESC
;