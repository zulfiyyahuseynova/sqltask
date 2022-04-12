SELECT Sales.WorkersId, Sales.SalesId, Sales.BranchsId, Products.PurchasePrice, Products.SalePrice FROM Sales
INNER JOIN Products
ON
Products.Id=Sales.Id

SELECT COUNT (WorkersId) as ProductsId FROM Sales

SELECT Sum(SalePrice) as Sales FROM Products WHERE Id > 3

SELECT COUNT(SalesId) as WorkersId FROM Sales WHERE Sales.WorkersId = 9

SELECT Sales.SalesDate, Sales.BranchsId FROM Sales WHERE Sales.Id > 8

SELECT Sales.SalesDate, Sales.SalesId FROM Sales WHERE Sales.Id > 6

