/*1*/
select*from Customers
select*from Products

/*2*/
select*from Orders order by OrderDate desc
/*3*/
select*from [Order Details] 
select Discount,UnitPrice,Quantity,ProductID,OrderID from [Order Details] order by Discount asc
/*4*/
select ProductName,UnitPrice from Products where ProductName like 'p%' and UnitPrice between 10 and 120
/*5*/
select ShipCountry,ShipName from Orders where ShipCountry like 'USA' or ShipCountry like 'France' or ShipCountry like 'Uk'
/*6*/
select ProductName Discontinued, UnitsInStock from Products where Discontinued=1 and UnitsInStock=0 and CategoryID in (1,3,4,7)
/*7*/
select*from Orders where EmployeeID in(2,5,7) and year(OrderDate)=1996

/*8*/
select * from Customers where fax is not null
/*9*/
select * from Customers where fax is null and Country like 'USA'
/*10*/
select * from Employees where ReportsTo is not null
select*from Employees

/*11*/
select * from Customers where CompanyName like '[a-d]' and Country like 'USA' order by [Address]