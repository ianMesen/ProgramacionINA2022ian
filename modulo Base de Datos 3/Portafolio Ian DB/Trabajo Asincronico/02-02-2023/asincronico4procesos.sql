--1
create procedure sp_crearTotalVentasPedido
@OrderID int,@Quantity smallint,@UnitPrice money,@disc real,@total decimal(18,2) output
as
if not exists(select * from sales.SalesOrderDetail where  SalesOrderID=@OrderID )
begin
	select 'El id de la order no existe';
	return 0;
end;
set @total= (@Quantity*@UnitPrice)-(@UnitPrice*@disc);
return;
begin
declare @result decimal(18,2)=0
exec sp_crearTotalVentasPedido 4,3.12,3.12,0.14,@total=@result output
print @result;
end;
--2
alter procedure sp_crearTotalVentasPedido
@deparmentId smallint,@startdate date,@endDate date
as
if @endDate is null 
begin
	select 'El empleado no a sido dado de alta';
	return 0;
end;
else
begin
	select * from HumanResources.EmployeeDepartmentHistory
	where StartDate=@startdate and EndDate=@endDate
end;
exec sp_crearTotalVentasPedido @deparmentId =1,@startdate='2009-01-14' ,@endDate=null