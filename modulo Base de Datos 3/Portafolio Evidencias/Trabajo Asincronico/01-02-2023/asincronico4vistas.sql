
/*1*/
create view vEmployeesEdadGenero as
select e.BirthDate,e.FirstName,e.LastName,e.TitleOfCourtesy as genero,((2023-year(e.BirthDate))) as edad from Employees as e
where year(e.BirthDate)<1982 
update Employees
set TitleOfCourtesy='Ms.',TitleOfCourtesy='Mrs.'
where TitleOfCourtesy like 'femenino'
update Employees
set TitleOfCourtesy='Mr.'
where TitleOfCourtesy like 'masculino'
/*2*/
create view vEmployeesGenero as
select TitleOfCourtesy as genero, count(TitleOfCourtesy) as total from Employees
where TitleOfCourtesy like 'Ms.' or TitleOfCourtesy like 'Mrs.' or TitleOfCourtesy like 'Mr.'
group by TitleOfCourtesy
/*3*/
create view vCantEmployeesDepartamento as
select title as departamento,ReportsTo , count(title) as cantEmpleados,count(ReportsTo) as cantGrupoTrabajo from Employees
group by title,ReportsTo
having ReportsTo=2
/*4*/
create view vProductsSales  as
select count(so.SalesOrderID) as cantidadOrdenes,sp.Name,sp.Color,so.OrderQty from SalesLT.SalesOrderDetail as so
inner join SalesLT.Product as sp on so.ProductID=sp.ProductID
group by sp.Name,sp.Color,so.OrderQty
order by so.OrderQty desc


