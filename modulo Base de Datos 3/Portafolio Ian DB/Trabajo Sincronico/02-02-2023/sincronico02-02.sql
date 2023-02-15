--1
create procedure sp_actualizarPrecioProductReduccion
@productId int
as
if not exists (select productId from [Order Details]
where ProductID=@productId)
begin;
	select 'El producto no existe'
	return  0;
end;

else if (select sum(Quantity) from [Order Details]
where ProductID=@productId) >50
begin; 
	update products
	set UnitPrice= (UnitPrice-(UnitPrice*0.05))
	where ProductID=@productID
	return  1;
end;

exec sp_actualizarPrecioProductReduccion 12
--2
create procedure sp_CambioJefeEmpleado5
@jefe int,@empleado int
as
if not exists (select EmployeeID from Employees where EmployeeID=@empleado)
begin
	select 'El id del empleado ingresado no existe'
end;
if not exists (select ReportsTo from Employees where ReportsTo=@jefe)
begin
	select 'El id del jefe que desea cambiar no existe'
end;
if (select count(ReportsTo) from Employees where ReportsTo=@jefe)>5
begin
	update Employees
	set ReportsTo=@jefe
	where EmployeeID=@empleado
end;
else
begin
 select 'El jefe tiene menos de 5 personas a su cargo no se puede cambiar'
end;
	
exec sp_CambioJefeEmpleado5 5,8
--3
alter procedure sp_CancularOrdenesAño
@year int
as
declare @employees int, @cantOrdenesYear int,@promedio decimal (18,5)

set @cantOrdenesYear=(select count(orderid) from Orders where year(OrderDate)=@year);

SET @employees = (SELECT COUNT(distinct EmployeeID) FROM Orders where year(OrderDate)=@year);

set @promedio= (@cantOrdenesYear/@employees);

select EmployeeID,count(*) as cantOrdenes,iif(count(*)>@promedio,'25%','10%') as comision from Orders 
where year(OrderDate)=@year
group by EmployeeID

exec sp_CancularOrdenesAño '1996'
--26 1996

select * from [Order Details]
select * from Orders
select * from Employees


