create database dbInstituto
use dbInstituto

create table tbAlumnos(
codAlunmos int,
nombre nvarchar(30),
especialidad nvarchar(30),
codCurso nvarchar(30),
constraint PKCodAlunmosCosCurso primary key (codAlunmos,codCurso),
constraint FkCursoAlumnos foreign key (codCurso) references tbCurso(codCurso)
);
create table tbCurso(
codCurso nvarchar(30) primary key,
nombreCurso nvarchar(30)
);
alter table tbCurso drop column nombreCurso
alter table tbCurso add nombreCurso nvarchar(100)


create table tbDocentes(
oficina nvarchar(30),
nombreDocente nvarchar(30),
especialidad nvarchar(30),
curso nvarchar(30),
constraint curso check (curso='U' or curso='W' or curso='V' or curso='Y' or curso='Z'),
constraint PKCursoNombreDocente primary key (nombreDocente,curso)
);

alter table tbDocentes ADD  default ('U') for curso

create table tbDRelacionCursoDocente(
codCurso nvarchar(30),
nombreDocente nvarchar(30),
especialidad nvarchar(30),
curso nvarchar(30),
constraint PKCursoNombreDocenteCodCurso primary key (nombreDocente,curso,codCurso),
constraint FkCursoRelacionCursoDocente foreign key (codCurso) references tbCurso(codCurso),
constraint FkDocenteRelacionCursoDocente foreign key (nombreDocente,curso) references tbDocentes (nombreDocente,curso)
);