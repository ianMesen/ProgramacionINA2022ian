select p.ProductName,c.CategoryName,p.UnitPrice from Products as P
inner join Categories as C on C.CategoryID=p.CategoryID

select p.ProductName,c.CategoryName,p.UnitPrice from Products p, Categories c
where p.CategoryID=c.CategoryID

select * from Categories

update Categories
set CategoryName='cloht',Description='cloth summer, winter, etc'
where CategoryID=9

delete Categories where CategoryID=9

/*1*/
select * from Employees
delete Employees where EmployeeID=9
/*2*/
select * from Customers
delete Customers where  upper(LastName) like 'desconocido'
/*3*/
select * from Products
select * from Categories
delete Categories where CategoryName='beverages'
/*4*/
select * from Products
select * from Categories
delete Products where CategoryID=1 and UnitPrice>50
/*5*/
select UnitPrice,(UnitPrice+(UnitPrice*0.10)) as nuevoprecio from Products 
update Products
set UnitPrice= (UnitPrice+(UnitPrice*0.10))
where CategoryID=3
/*6*/
select UnitPrice,(UnitsInStock+5) as nuevoStock from Products 
where CategoryID in (2,4)
update Products
set UnitsInStock= (UnitsInStock+5)
where CategoryID in (2,4)
/*7*/
select OrderDate from Orders
where month(OrderDate)<8 and year(OrderDate)<1996
update Orders
set OrderDate=getdate()
where month(OrderDate)<8 and year(OrderDate)<1996
/*8*/

select Region from Employees
where Region is null
update Employees
set Region='DW'
where Region is null

drop view vProducts

create view vProducts as
select p.ProductID,p.ProductName,p.UnitPrice,c.CategoryName,s.CompanyName
from products p
inner join Categories c on p.CategoryID=c.CategoryID
inner join Suppliers s on s.SupplierID=p.SupplierID

select od.OrderID,od.ProductID,vp.ProductName,od.UnitPrice as precioventa,vp.UnitPrice as precioActual from vProducts vp
inner join [Order Details] OD on vp.ProductID=OD.ProductID
where vp.UnitPrice>10

select * from [Order Subtotals]

create view vProducts as
select p.ProductID,p.ProductName,p.UnitPrice,c.CategoryName,s.CompanyName
from products p
inner join Categories c on p.CategoryID=c.CategoryID
inner join Suppliers s on s.SupplierID=p.SupplierID

select od.OrderID,od.ProductID,vp.ProductName,od.UnitPrice as precioventa,vp.UnitPrice as precioActual from vProducts vp
inner join [Order Details] OD on vp.ProductID=OD.ProductID
where vp.UnitPrice>10