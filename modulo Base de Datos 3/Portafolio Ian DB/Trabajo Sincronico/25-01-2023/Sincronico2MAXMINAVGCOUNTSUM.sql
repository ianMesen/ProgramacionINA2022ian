select max(UnitPrice)from Products

select min(UnitPrice)from Products

/*promedio*/
select avg(UnitPrice)as precioMin from Products
/*contar cuantos son*/
select COUNT(*) from Products
/*suma*/
select sum(UnitsInStock) as stockTotal from Products

/*inner join*/
/*datos de la ordern y a su vez el nombre del empleado*/
select O.*,E.FirstName,C.CompanyName from Orders as O
inner join Employees as E on O.EmployeeID=E.EmployeeID
inner join Customers as C on O.CustomerID=C.CustomerID
select*from Orders
select*from Customers
orders deta
produc

categoria
produc
