/*
- Table : Categories
- 조건 : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
- 결과 표시
- where 완료 후 가상 Table로 group by 진행
예) SELECT COUNT(*) AS EMPLOYEE_CNT, T_OUTER_ORS.EmployeeID
   FROM (
            SELECT T_INNER_ORS.*
            FROM ORDERS AS T_INNER_ORS
            WHERE T_INNER_ORS.EmployeeID IN (7,9)
        ) AS T_OUTER_ORS
   GROUP BY T_OUTER_ORS.EmployeeID;
*/

select CategoryName, Produce, Beverages

-- 카테고리
select CategoryID, CategoryName, Description from categories;


