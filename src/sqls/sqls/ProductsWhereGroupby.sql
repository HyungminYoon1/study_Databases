/*
- Table : Products
- 조건 : CategoryID 가 10개 이상
- 결과 표시
*/
/*
-- Products 테이블 출력
SELECT * from Products;
*/
-- 위의 테이블에서 CategoryID = 1 인 부분만 출력
SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price from Products where CategoryID = 1;



