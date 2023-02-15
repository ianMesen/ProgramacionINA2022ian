/*1*/
select OD.OrderID,O.OrderDate,OD.ProductID,OD.Quantity,P.ProductName from Orders as O
inner join  [Order Details] as OD on O.OrderID =O.OrderID
inner join Products as P on P.ProductID=P.ProductID
/*2*/
Select C.CategoryID,C.CategoryName,P.ProductName,P.ProductID,P.UnitPrice from Categories as C
inner join Products as P on P.ProductID=P.CategoryID
/*3*/
select O.OrderID,O.OrderDate,P.ProductID,OD.Quantity,P.UnitPrice,O.Freight from Products as P
inner join Orders as O on O.OrderID=O.OrderID
inner join  [Order Details] as OD on OD.Quantity =OD.Quantity
/*4*/
select S.SupplierID,S.CompanyName,S.City,S.Region,P.ProductID,P.ProductName,P.UnitPrice,P.UnitsInStock from Suppliers as S
inner join Products as P on P.ProductID=P.ProductID
/*5*/
select C.CategoryID,C.CategoryName,P.ProductID,P.ProductName,P.UnitPrice,P.UnitsInStock,P.UnitPrice,S.SupplierID,S.ContactName  from Categories as C
inner join Products as P on P.ProductID=P.ProductID
Inner join Suppliers as S on S.SupplierID=S.SupplierID
/*6*/
Select O.OrderID,O.OrderDate,P.ProductName,C.CategoryName from Orders as O
inner join Products as P on P.ProductName=P.ProductName
Inner join Categories as C on  C.CategoryName=C.CategoryName
Inner join Suppliers as S on S.ContactName=S.ContactName
/*7*/
Select O.OrderID,O.OrderDate,CU.ContactName,Cu.Address,O.ShipAddress,E.FirstName,E.LastName,P.ProductName,S.CompanyName from Orders as O
inner join Customers as CU on Cu.ContactName=Cu.ContactName
Inner join Employees as E on E.FirstName=E.FirstName
inner join Products as P on P.ProductName=P.ProductName
inner join Suppliers as S on S.CompanyName=S.CompanyName
/*8*/

Select C.CategoryID,C.CategoryName,P.ProductName,P.ProductID,P.UnitPrice from Categories as C 
inner join Products as P on P.ProductID=P.CategoryID where C.CategoryID in (2,4,5,7)
/*9*/
select O.OrderID,O.OrderDate,P.ProductID,OD.Quantity,P.UnitPrice,O.Freight from Products as P
inner join Orders as O on O.OrderID=O.OrderID
inner join  [Order Details] as OD on OD.Quantity =OD.Quantity
where   month(O.OrderDate)=1 and year(O.OrderDate)=1996
/*10*/
select S.SupplierID,S.CompanyName,S.City,S.Region,P.ProductID,P.ProductName,P.UnitPrice,P.UnitsInStock from Suppliers as S
inner join Products as P on P.ProductID=P.ProductID
where P.UnitsInStock = 0
/*11*/
select C.CategoryID,C.CategoryName,P.ProductID,P.ProductName,P.UnitPrice,P.UnitsInStock,P.UnitPrice,S.SupplierID,S.ContactName  from Categories as C
inner join Products as P on P.ProductID=P.ProductID
Inner join Suppliers as S on S.SupplierID=S.SupplierID
where P.UnitPrice between 50 and 100
/*12*/
Select O.OrderID,O.OrderDate,P.ProductName,C.CategoryName from Orders as O
inner join Products as P on P.ProductName=P.ProductName
Inner join Categories as C on  C.CategoryName=C.CategoryName
Inner join Suppliers as S on S.ContactName=S.ContactName
where  MONTH(O.OrderDate) in (1,2,3)