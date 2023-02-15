/*1*/
select O.OrderID,O.OrderDate, round( sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)),2) as totalOrden From Orders as O
inner join [Order Details] as OD on OD.OrderID=O.OrderID
group by O.OrderID,OrderDate
/*2*/
Select C.CategoryName,p.ProductName, Sum(UnitsInStock ) as Stock from Products as P
inner join Categories as C on C.CategoryID=P.CategoryID
where C.CategoryID in (2,5,8)
Group by C.CategoryName,p.ProductName
order by C.CategoryName
/*3*/
Select P.ProductName, count(o.OrderID) as TotalOrdenes from Products as P
inner join [Order Details] as OD on OD.ProductID=P.ProductID
inner join Orders as O on o.OrderID = od.OrderID
Group by P.ProductName


select * from Categories
where CategoryID not in (Select distinct CategoryID from Products)

select * from Categories
where  not exists (Select distinct CategoryID from Products)
