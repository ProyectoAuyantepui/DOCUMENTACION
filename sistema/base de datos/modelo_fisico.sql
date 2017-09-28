-------
--- BASE DE DATOS SISTEMA DE HORARIOS DEL PNF EN INFORMATICA EN LA UPTAEB
------
--drop database horarios;
--create database horarios;
--
--Estructura para la tabla(03) TDocente : Almacena informacion acerca de docentes de la uptaeb
--
create table TDocente(
"cedDoc" varchar(8),
"codCatDoc" int,
"codRol" int,
"nombre" varchar(20),
"apellido" varchar(20),
"fecNac" date,
"sexo" int,
"telefono" varchar(12),
"correo" varchar(40),
"direccion" varchar(120),
"fecIng" date,
"fecCon" date,
"dedicacion" varchar(60),
"condicion" varchar(60),
"pregrado" varchar(200),
"postgrado" varchar(200),
"perPro" varchar(200),
"usuario" varchar(12),
"clave" varchar(88) unique,
"estado" boolean,
"observaciones" varchar(120),
primary key("cedDoc")
);
--
--Estructura para la tabla(06) TRol : Almacena informacion de los roles del sistema 
--
create table TRol(
"codRol" serial,
"nombre" varchar(50),
"observaciones" varchar(150),
primary key("codRol")
);
--
--Estructura para la tabla(07) TModulo : Almacena informacion acerca de los modulos , actividades u Operaciones del sistema a los que el rol despues podra acceder
--
create table TModulo(
"codMod" serial,
"nombre" varchar(90),
primary key("codMod")
);
--
--Estructura para la tabla(08) TPermisologia : Tabla detalles entre las tablas TRol y TModulo
--
create table TPermisologia(
"codPer" serial,
"codRol" int,
"codMod" int,
primary key("codPer")
);
--
--Estructura para la tabla(01) TComisiones : Almacena informacion acerca de comisiones de un docente
--
create table TComisiones(
"codCom" serial,
"cedDoc" varchar(8),
"nombre" varchar(60),
"dependencia" varchar(220),
"descripcion" varchar(120),
primary key("codCom")
);
--
--Estructura para la tabla(02) TCatDoc : Almacena informacion acerca de categorias de docentes
--
create table TCatDoc(
"codCatDoc" serial,
"nombre" varchar(60),
"descripcion" varchar(120),
primary key("codCatDoc")
);
--
--Estructura para la tabla(04) TDependencia : Almacena informacion acerca de dependencias a las que esta adscrito un docente o cualquier empleado en la uptaeb
--
create table TDependencia(
"codDep" serial,
"nombre" varchar(50),
"fecIng "date,
"fecSal" date,
primary key("codDep")
);
--
--Estructura para la tabla(05) TDocDep : Tabla detalles entre las tablas TDocente y Tdependendencia
--
create table TDocDep(
"cedDocDep" serial,
"cedDoc" varchar(8),
"codDep" int,
primary key("cedDocDep")
);
--
--Estructura para la tabla(09) TPnf : Almacena la informacion sobre los PNF o carreras de la uptaeb y esta estrictamente relacionado con las unidades curriculares o materias osea con el pensum 
--
create table TPnf(
"codPnf" serial,
"alias" varchar(6),
"descripcion" varchar(150),
primary key("codPnf")
);
--
--Estructura para la tabla(10) TEje : Almacena informacion acerca de los ejes a los que pertenecen las unidades curriculares por ejemplo eje epistemologico
--
create table TEje(
"codEje" serial,
"nombre" varchar(60),
"descripcion" varchar(150),
primary key("codEje")
);
--
--Estructura para la tabla(11) TUnidCurr : Almacena informacion acerca de Unidades curriculares o las materias y esta relacionada con horarios , eje, y pnf
--
create table TUnidCurr(
"codUniCur" serial,
"codPnf" int,
"codEje" int,
"nombre" varchar(60),
"alias" varchar(10),
"uniCre" int,
"fase" int,
"htas" int,
"htis" int,
"observaciones" varchar(150),
primary key("codUniCur")
);
--
--Estructura para la tabla(12) TAmbiente : Guarda la informacion acerca de los ambientes o aulas de clase 
--
create table TAmbiente(
"codAmb" varchar(4),
"ubicacion" varchar(60),
"tipo" int,
"observaciones" varchar(150),
"estado" boolean,
primary key("codAmb")
);
--
--Estructura para la tabla(13) TSeccion : Almacena informacion acerca de las secciones de los estudiantes de cada pnf 
--
create table TSeccion(
"codSec" varchar(6),
"trayecto" int,
"matricula" int,
"estado" boolean default 'F',
"tipo" int,
"turno" int,
"observaciones" varchar(150),
primary key("codSec")
);
--
--Estructura para la tabla(14) TActiComp : Almacena informacion acerca de Otras Actividades Academicas del docente que tambien son tomadas en cuenta para su horario pero no como horas de clase
--
create table TActiComp(
"codActCom" serial,
"titulo" varchar(60),
"observaciones" varchar(150),
"dependencia" varchar(300),
"tipActCom" int,
primary key("codActCom")
);
--
--Estructura para la tabla(15) TDia : Almacena informacion acerca de los dias de la semana 
--
create table TDia(
"codDia" serial,
"nombre" varchar(10),
primary key("codDia")
);
--
--Estructura para la tabla(16) THora : Almacena informacion acerca de las horas de inicio y de salida de cada actividad
--
create table THora(
"codHor" serial,
"horEnt" time,
"horSal" time,
primary key("codHor")
);
--
--Estructura para la tabla(17) TTiempo : Tabla Puente entre las tablas TDia y THora y esta relacionada tambien con horario
--
create table TTiempo(
"codTie" serial,
"codDia" int,
"codHor" int,
primary key("codTie")
);
--
--Estructura para la tabla(18) THorario : Tabla principal que generara los horarios de secciones , docentes , aulas y unidades curriculares ademas de otros reportes y consultas
--
create table THorario(
"codHor" serial,
"cedDoc" varchar(8),
"codSec" varchar(6),
"codUniCur" int,
"codActCom" int,
"codTie" int,
"codAmb" varchar(4),
"lapso" varchar(12),
"estado" boolean,
"observaciones" varchar(300),
primary key("codHor")
);

--- 
-- CLAVES FORANEAS DE LAS TABLAS : TComisiones,TDocente,TDocDep,TPermisologia,TTiempo,THorario,TUnidCurr
---

--
-- Claves foraneas para la tabla (01) "TComisiones"
--
alter table TComisiones 
add constraint fk_cedDoc_TDocente
foreign key("cedDoc") 
references TDocente("cedDoc");
--
-- Claves foraneas para la tabla (03) "TDocente"
--
alter table TDocente
add constraint fk_codCatDoc_TCatDoc
foreign key("codCatDoc") 
references TCatDoc("codCatDoc");

alter table TDocente
add constraint fk_codRol_TRol
foreign key("codRol") 
references TRol("codRol");
--
-- Claves foraneas para la tabla (05) "TDocDep"
--
alter table TDocDep
add constraint fk_cedDoc_TDocente
foreign key("cedDoc") 
references TDocente("cedDoc");

alter table TDocDep
add constraint fk_codDep_TDependencia
foreign key("codDep") 
references TDependencia("codDep");
--
-- Claves foraneas para la tabla (08) "TPermisologia"
--
alter table TPermisologia
add constraint fk_codRol_TRol
foreign key("codRol") 
references TRol("codRol");

alter table TPermisologia
add constraint fk_codMod_TModulo
foreign key("codMod") 
references TModulo("codMod");
--
-- Claves foraneas para la tabla (11) "TTiempo"
--
alter table TTiempo
add constraint fk_codDia_TDia
foreign key("codDia") 
references TDia("codDia");

alter table TTiempo
add constraint fk_codHor_THora
foreign key("codHor") 
references THora("codHor");
--
-- Claves foraneas para la tabla (17) "THorario"
--
alter table THorario
add constraint fk_cedDoc_TDocente
foreign key("cedDoc") 
references TDocente("cedDoc");

alter table THorario
add constraint fk_codSec_TSeccion
foreign key("codSec") 
references TSeccion("codSec");

alter table THorario
add constraint fk_codUniCur_TUnidCurr
foreign key("codUniCur") 
references TUnidCurr("codUniCur");

alter table THorario
add constraint fk_codActCom_TActiComp
foreign key("codActCom") 
references TActiComp("codActCom");

alter table THorario
add constraint fk_codTie_TTiempo
foreign key("codTie") 
references TTiempo("codTie");

alter table THorario
add constraint fk_codAmb_TAmbiente
foreign key("codAmb") 
references TAmbiente("codAmb");
--
-- Claves foraneas para la tabla (18) "TUnidCurr"
--
alter table TUnidCurr
add constraint fk_codPnf_TPnf
foreign key("codPnf") 
references TPnf("codPnf");

alter table TUnidCurr
add constraint fk_codEje_TEje
foreign key("codEje") 
references TEje("codEje");
---
--
