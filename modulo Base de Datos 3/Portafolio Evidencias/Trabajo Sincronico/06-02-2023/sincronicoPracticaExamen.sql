--1
alter procedure sp_Top5ProductosVentidos
@year int,@employee int
as
if not exists (select OrderDate from Orders
where year(OrderDate)=@year)
begin;
	select 'El ano ingresado no existe'
	return  0;
end;

if not exists (select EmployeeID from Employees
where EmployeeID=@employee)
begin;
	select 'El ano ingresado no existe'
	return  0;
end;

select top 5 od.ProductID,o.EmployeeID,sum(od.Quantity) as ProductosVendidos from [Order Details] od
inner join Orders o on od.OrderID=o.OrderID
inner join Products p on od.ProductID=p.ProductID
where year(OrderDate)=@year and EmployeeID=@employee
group by od.ProductID,o.EmployeeID
order by sum(od.Quantity) desc

exec sp_Top5ProductosVentidos '1996',1

--2
alter procedure sp_Top10MejoresClientes
as
select top 10 od.OrderID,o.CustomerID,sum((od.UnitPrice*Quantity)-(od.UnitPrice*Quantity)*od.Discount) as mejorCompras from Orders o
inner join [Order Details] od on o.OrderID=od.OrderID
group by  od.OrderID,o.CustomerID
order by mejorCompras desc

exec sp_Top10MejoresClientes 




