/*12*/
select*from Suppliers
select * from Suppliers where CompanyName not like '[B-G]%' and Country like 'UK' order by CompanyName
/*13*/
select*from Products
select ProductName from Products where Discontinued <> 0 and UnitPrice between 35 and 250 and UnitsInStock =0 and CategoryID in (1,3,4,7,8) and SupplierID in (2,4,6,7,9)
/*14*/
select*from Products where Discontinued =1 and SupplierID in (1,3,7,8,9) and UnitsInStock >0 and UnitPrice between 39 and 190 order by SupplierID ,  UnitPrice asc
/*15*/
select top 7 * from Products where UnitsInStock>0 order by UnitPrice desc 
/*16*/
select top 9 * from Products where CategoryID in (3,5,8) order by UnitsInStock
/*17*/
select * from Orders where EmployeeID between 2 and 5 and CustomerID like '[a% - g&]' and day(OrderDate) =31 and month(OrderDate)=7
/*18*/
select * from Orders where EmployeeID = 3 and month(OrderDate) between 8 and 12 
/*19*/
select * from [Order Details] where Quantity between 10 and 250
/*sacar mitad de registros (50)percent*/ 