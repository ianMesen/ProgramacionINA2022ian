--1
--a
select * from Production.ProductCategory
insert productCategoryID ='5'
set productCategoryID='5' , productCategoryID= '6'
--b
select BirthDate,VacationHours from HumanResources.Employee
where year (BirthDate) in (2008,2009)
update HumanResources.Employee 
set VacationHours=VacationHours+10

--c
Select * from sales.Customer
delete CustomerID from sales.Customer
where StoreID is null

--2 vistas
--d
alter view v_promStandarCostProduction
as
select pp.ProductID,pp.name as productName,pp.StandardCost from Production.Product pp
where StandardCost>50.00 

select * from Production.Product
--e
alter view v_ProductosRojoNegro
as
select color, count( color) as cantProductos from Production.Product
where color like upper('Black') or color like upper('RED')
group by color
--f
alter view v_5ProductosTopCaros
as
select top 5 p.ProductID,p.Name as nameProduct,psc.name as nombreSubCategoria,max(distinct p.ListPrice) as productosMasCaros from Production.Product p
inner join Production.ProductSubcategory psc on psc.ProductSubcategoryID=p.ProductSubcategoryID
group by p.ListPrice,p.ProductID,p.Name,psc.name
order by ListPrice desc

--select * from Production.ProductSubcategory
--select * from Production.ProductCategory
--select * from Production.Product

--3
--a
create procedure sp_checkCity
@cityName nvarchar(30)
as
if exists (select City from Person.Address where city=@cityName)
begin;
	select 1
end;
else
begin;
	select 2
end;

exec sp_checkCity 'ottawa'
--b
alter procedure sp_crearCliente
@customers int,@storeId int,@territorio int
as

if not exists (Select StoreID from sales.Customer where @storeId=StoreID)
begin;
	select 'La tienda ingresada no existe ingrese otra'
end;
if not exists (Select StoreID from sales.Customer where @territorio=TerritoryID)
begin;
	select 'El territorio ingresado no existe ingrese otro'
end;
if exists (Select CustomerID from sales.Customer where @customers=CustomerID)
begin;
	select 'El incliente ingredo ya existe ingrese otro'
end;
else (Select CustomerID from sales.Customer where @customers=CustomerID)
begin;
	insert into sales.Customer values (@customers)
	select 'El cliente a sido agregado correctamente'
end;

--c
exec sp_crearCliente 999999,99999999,666666  
exec sp_checkCity 'ottawa'

insert sales.Currency [name] 'hola'

Select * from sales.Customer
select City from Person.Address
select * from Person.Address