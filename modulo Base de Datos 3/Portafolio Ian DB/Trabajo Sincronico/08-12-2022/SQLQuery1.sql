/*create-drop-alter*/

create DATABASE dbEjemplo
drop DATABASE dbEjemplo
alter DATABASE dbEjemplo modify name= dbEjemplo1
use dbEjemplo1

create table tbPersona(
	cedula varchar(20) primary key,
	nombre varchar(20)not null,
	apellido1 varchar(20)not null,
	apellido2 varchar(20)not null,
	fechaNaciomiento datetime not null,
	estado bit not null,
	telefono int,
	/*precio decimal(12,3)*/
	/*constraint tbPersonaPK primary key(cedula,nombre)*/
);
/*alter table tbPersona add precio decimal(18,2)*/