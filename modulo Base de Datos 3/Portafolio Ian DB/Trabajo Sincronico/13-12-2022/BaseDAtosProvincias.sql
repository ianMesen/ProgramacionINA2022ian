create database dbProvincias
use dbProvincias
create table tbProvincias(
idProvincias int primary key,
nombre varchar(20)
);

drop table tbProvincias

create table tbCantones(
nombre varchar(20),
idProvincias int,
idCantones int,
constraint fkProvinciaCantones foreign key (idProvincias) references tbProvincias (idProvincias),
constraint PKProvinciaCantones primary key (idProvincias,idCantones)
);

create table tbDistritos(
idDistritos int,
nombre varchar(20),
idProvincias int,
idCantones int,
constraint PKProvinciaCantonesDistritos primary key (idProvincias,idCantones,idDistritos),
constraint fkProvinciaDistritos foreign key (idProvincias,idCantones) references tbCantones (idProvincias,idCantones)
);

create table tbBarrios(
nombre varchar(20),
idProvincias int,
idCantones int,
idDistritos int,
idBarrios int,
constraint PKProvinciaCantonesDistrosBarrios primary key (idProvincias,idCantones,idDistritos,idBarrios),
constraint fkProvinciaDistritosbarrios foreign key (idProvincias,idCantones,idDistritos) references tbDistritos (idProvincias,idCantones,idDistritos)
);
