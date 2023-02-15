create database dbPuntoVenta

Use dbPuntoVenta

create table tbCategoria(
codigo int primary key identity (1,1),
nombre varchar(50) not null,
estado bit not null
)

create table tbProducto(
codigo int primary key,
nombre varchar(50) not null,
precio decimal (18,5) not null,
idCategoria int  not null,
estado bit not null,
constraint fkCategoriaProducto foreign key (idCategoria) references tbCategoria (codigo)
)
alter table tbProducto add  descripcion varchar(500)

/*insert*/
/*todos los campos de la tabla*/

insert into tbCategoria values('libreria',2)
select*from tbCategoria
select*from tbProducto
insert into tbProducto values(2,'lapiz',500,1,1,null)
insert into tbProducto values(14,'lapiz',10000,1,1,null)

/*inserter columna es especifico en el orden que guste*/
insert into tbProducto(codigo,nombre,precio,idCategoria,estado,descripcion) values (4,'portafolio',200,1,1,(select nombre from tbCategoria where codigo=1))

/*3 categorias mas diferentes, 3 productos con cada categoria*/ 
insert into tbCategoria values('panaderia',2)
insert into tbCategoria values('carniceria',3)
insert into tbCategoria values('verdureria',4)
insert into tbProducto values(5,'baguet',1000,2,1,null)
insert into tbProducto values(6,'pastel pollo',700,2,1,null)
insert into tbProducto values(7,'pastel carne',750,2,1,null)
insert into tbProducto values(8,'pechuga pollo',2500,3,1,null)
insert into tbProducto values(9,'costilla res',6000,3,1,null)
insert into tbProducto values(10,'tocino',3000,3,1,null)
insert into tbProducto values(11,'tomate',1300,4,1,null)
insert into tbProducto values(12,'zanahoria',1200,4,1,null)
insert into tbProducto values(13,'chayote',1000,4,1,null)


/*select*/
select*from tbCategoria /* asterisco ** es para mostrar todas las columnas*/
/*distinct solo selecciona diferentes*/
select distinct codigo,nombre,precio
from tbProducto
order by nombre,precio desc/*asc*/

select codigo
from tbProducto
where codigo in (3,10)

select codigo
from tbProducto
where codigo=3 or codigo=10

select codigo, nombre
from tbProducto
where codigo between 2 and 4

select nombre
from tbProducto
where nombre like 'c%'
