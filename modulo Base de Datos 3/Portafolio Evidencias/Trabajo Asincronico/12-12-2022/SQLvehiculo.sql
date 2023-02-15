create database dbVehiculo 
use dbVehiculo

create table TBEmpresaaa(
idEmpresa int primary key,
telefono int not null,
nombre varchar (20) not null
);
create table tbSucursal(
idSucursales int  primary key,
idEmpresa int,
telefono int not null,
nombre varchar (20) not null,
ubicacion varchar(30) not null,
constraint fkEmpresa foreign key (idEmpresa) references TBEmpresaaa (idEmpresa)
);
create table tbEmpleados(
idEmpleados int  primary key,
telefono int not null,
nombre varchar (20) not null,
NumUsuario int not null,
cedula varchar(20) not null,
puesto varchar(10) not null,
idSucursales int  ,
idPuesto int,
Genero varchar(10) constraint DFGenero default ('no especificado')
constraint fkSucursales foreign key (idSucursales) references tbSucursal (idSucursales),
constraint fkpuesto foreign key (idPuesto) references tbPuesto (idPuesto)
);
create table tbPuesto(
idPuesto int primary key,
contra varchar(20) not null,
usuario varchar(20) not null
);
create table tbVehiculo(
idVehiculo int primary key,
modelo varchar(20) not null,
matricula varchar(20) not null,
color varchar(10) constraint DFColor default ('Negro')
);

create table tbPaquete(
idPaquete int primary key,
fechaAlquiler varchar(20) not null constraint CkFechaAlquiler check (fechaAlquiler>=getdate()),
fechaEntrega varchar(20) not null,
hora int not null,
precioVehiculo int not null,
descuento decimal (20,2),
impuesto decimal (20,2) not null,
idVehiculo int,
constraint fkVehiculo foreign key (idVehiculo) references tbVehiculo (idVehiculo)
);
create table tbFactura(
idPaquete int,
idfactura int ,
idvehiculo int ,
fechaHora int,
idEmpresa int  ,
idCliente int  ,
idSucursales int  ,
idEmpleados int  ,
idPago int, 
constraint fkSucursales2 foreign key (idSucursales) references tbSucursal (idSucursales),
constraint fkEmpresa2 foreign key (idEmpresa) references TBEmpresaaa (idEmpresa),
constraint fkCliente2 foreign key (idCliente) references tbClient (idCliente),
constraint fkTipoPago2 foreign key (idPago) references tbTipoPago (idPago),
constraint fkPaquete2 foreign key (idPaquete) references tbPaquete (idPaquete),
constraint fkVehiculo2 foreign key (idVehiculo) references tbVehiculo (idVehiculo)
);


create table tbClient(
idCliente int primary key,
telefono int,
nombre varchar (20) not null,
cedula varchar(20) not null,
correo int 
constraint UQCliente_Corrreo unique (correo),
Genero varchar(10) constraint CKGenero check (genero='M' and genero='F')
);

create table tbTipoPago(
idPago int  primary key,
efectivo decimal (20,2),
tarjeta decimal (20,2),
simpe decimal (20,2) ,
transferencia decimal
);