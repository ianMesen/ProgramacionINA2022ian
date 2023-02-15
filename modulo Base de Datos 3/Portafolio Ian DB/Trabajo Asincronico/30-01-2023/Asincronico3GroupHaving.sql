/*1*/
select C.CategoryName,max(UnitPrice) as precioMayor,Min(UnitPrice)as precioMenor
from Products P
Inner join Categories C on P.CategoryID=C.CategoryID
group by C.CategoryName
/*2*/
select S.CompanyName,max(UnitPrice) as precioMayor,Min(UnitPrice)as precioMenor
from Products P
Inner join Suppliers S on P.SupplierID=S.SupplierID
group by S.CompanyName
/*3*/
Select C.CategoryName, count(P.CategoryID) as total from Categories as C
inner join Products as P on C.CategoryID=P.CategoryID
Group by C.CategoryID, C.CategoryName
/*4*/
select C.Country, count(Country) as total from Customers as C
Group by C.Country
/*5*/
select C.City, count(City) as total from Customers as C
Group by C.City
/*7*/
Select C.CategoryName, Sum(UnitsInStock ) as StockTotal from Products as P
inner join Categories as C on P.CategoryID=C.CategoryID
Group by C.CategoryName
/*8*/
Select C.CategoryName,C.CategoryID, Sum(UnitsInStock ) as Stock from Products as P
inner join Categories as C on P.CategoryID=C.CategoryID
where C.CategoryID in (2,5,8)
Group by C.CategoryName,C.CategoryID
/*9*/
Select Cu.ContactName,CU.CompanyName,E.FirstName as Empleado,P.ProductName,O.OrderID from [Order Details] as OD
inner join Products as P on OD.ProductID=P.ProductID
Inner join Orders as O on OD.OrderID=O.OrderID
inner join Employees as E on O.EmployeeID=E.EmployeeID
inner join Customers as CU on O.CustomerID=CU.CustomerID
where O.OrderID=10250
/*10*/
Select CU.Companyname, count(year(OrderDate)) as TotalOrdenesAño from Orders as O
inner join Customers as CU on Cu.CustomerID=O.CustomerID
Group by Cu.CompanyName, year(O.OrderDate)
/*11*/
Select E.FirstName, count(year(OrderDate)) as TotalOrdenesAño from Orders as O
inner join Employees as E on E.Employeeid=O.Employeeid
Group by E.FirstName, year(O.OrderDate)
/*12*/
Select CU.Companyname, count(year(OrderDate))as TotalOrdenesAño,count(month(OrderDate)) as TotalOrdenesMes from Orders as O
inner join Customers as CU on Cu.CustomerID=O.CustomerID
Group by Cu.CompanyName, year(O.OrderDate)
order by Cu.CompanyName asc



select*from [Order Details]
select*from Orders
order by CustomerID asc
select*from Products
select*from Categories
select*from Suppliers
select*from Customers
select*from Employees