/*
- Table : Orders
- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수
- 결과 표시
*/
/*
-- 판매원, 판매 물품 수량 ...(1)
SELECT EmployeeID, count(*) as SALES_COUNT from orders group by EmployeeID order by count(*) desc;

-- 판매원의 판매 물품 수량 중 최대값
SELECT MAX(SALES_COUNT) from (SELECT count(*) as SALES_COUNT from orders group by EmployeeID);
*/
-- (1) 리스트 중 1등 판매원의 판매수량
SELECt * from (SELECT EmployeeID, count(*) as SALES_COUNT from orders group by EmployeeID) where SALES_COUNT = (SELECT MAX(SALES_COUNT) from (SELECT count(*) as SALES_COUNT from orders group by EmployeeID)) ;
