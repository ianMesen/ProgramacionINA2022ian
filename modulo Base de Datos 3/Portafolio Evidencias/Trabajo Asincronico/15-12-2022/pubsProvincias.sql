create database dbPracticarExamen1

use dbPracticarExamen1

create table tbPub(
codPub varchar(30) primary key not null,
nombre varchar(20) not null,
licenciaFiscal varchar(20) not null,
Domicilio varchar(20) ,
fechaApertura datetime not null,
horario varchar(20) not null,
codLocalidad int not null,
constraint CkHorario check (horario='HOR1' or horario='HOR2' or horario='HOR3' )
);

alter table tbPub add codLocalidad int not null 
alter table tbPub add constraint fkCodLocalidad foreign key (codLocalidad) references tbLocalidad (codLocalidad)
create table tbTitular(
DNITirular varchar (30) primary key not null,
nombre varchar(20) not null,
Domicilio varchar(20) ,
codPub varchar(30) not null,
constraint FkDNITitularCodPub foreign key (codPub) references tbPub (codPub)
);
create table tbEmpleado(
DNIEmpleado varchar (30) primary key not null,
nombre varchar(20) not null,
Domicilio varchar(20) 
);
create table tbExistencias(
codArticulo varchar (30) primary key not null,
nombre varchar(20) not null,
cantidad int not null,
precio decimal (18,2) not null,
codPub varchar(30) not null,
constraint CkPrecio check (precio>0),
constraint FkDNITitularCodPubTbExistencias foreign key (codPub) references tbPub (codPub)
);
create table tbLocalidad(
codLocalidad int primary key not null,
nombre varchar(20) not null
);
create table tbPubEmpleado(
codPub varchar(30) not null,
DNIEmpleado varchar (30) not null,
funcion varchar(30) not null ,
constraint PKPuBEmpleadoFuncion primary key (funcion,DNIEmpleado,codPub),
constraint CkFuncion check (funcion='camarero' or funcion='segurirdad' or funcion='limpieza'),
constraint FkPubEmpleadoPub foreign key (codPub) references tbPub (codPub),
constraint FkEmpleadoPubEmpleado foreign key (DNIEmpleado) references tbEmpleado (DNIEmpleado)

);