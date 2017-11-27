
-- BASE DE DATOS SISTEMA DE HORARIOS DEL PNF EN INFORMATICA EN LA UPTAEB

-- drop database horarios;
-- create database horarios;

-- Estructura para la tabla(01) "TDocentes" : Almacena informacion acerca de docentes de la uptaeb

create table "TDocentes"(
"cedDoc" varchar(8),
"codCatDoc" int,
"codRol" varchar(50),
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
"usuario" varchar(12),
"clave" varchar(88) unique,
"estado" boolean,
"observaciones" varchar(120),
primary key("cedDoc")
);

-- Estructura para la tabla(02) "TRoles" : Almacena informacion de los roles del sistema 

create table "TRoles"(
"codRol" varchar(50),
"nombre" varchar(50),
"observaciones" varchar(150),
primary key("codRol")
);

-- Estructura para la tabla(03) "TModulos" : Almacena informacion acerca de los modulos del sistema a los que el rol despues podra acceder

create table "TModulos"(
"codMod" varchar(8),
"nombre" varchar(90),
primary key("codMod")
);


-- Estructura para la tabla(04) "TPermisos" : Almacena informacion acerca de los permisos de los roles de acceso a los modulos del sistema 

create table "TPermisos"(
"codPer" varchar(8),
"descripcion" varchar(90),
primary key("codPer")
);

-- Estructura para la tabla(05) "TRolPerMod" : Tabla detalles entre las tablas "TRoles" , "TPermisos" y "TModulos" que representa la permisologia de los roles del sistema

create table "TRolPerMod"(
"codRol" varchar(50),
"codPer" varchar(8),
"codMod" varchar(8),
"acceso" boolean,
primary key("codPer" , "codRol" , "codMod")
);

-- Estructura para la tabla(06) "TComisiones" : Almacena informacion acerca de comisiones de un docente

create table "TComisiones"(
"codCom" serial,
"cedDoc" varchar(8),
"nombre" varchar(60),
"dependencia" varchar(220),
"descripcion" varchar(120),
primary key("codCom")
);

-- Estructura para la tabla(07) "TCatDoc" : Almacena informacion acerca de categorias de docentes

create table "TCatDoc"(
"codCatDoc" serial,
"nombre" varchar(60),
"descripcion" varchar(120),
primary key("codCatDoc")
);

-- Estructura para la tabla(08) "TDependencias" : Almacena informacion acerca de dependencias a las que esta adscrito un docente o cualquier empleado en la uptaeb

create table "TDependencias"(
"codDep" serial,
"nombre" varchar(50),
"fecIng "date,
"fecSal" date,
primary key("codDep")
);

-- Estructura para la tabla(09) "TDocDep" : Tabla detalles entre las tablas "TDocentes" y Tdependendencia

create table "TDocDep"(
"cedDoc" varchar(8),
"codDep" int,
primary key("cedDoc" , "codDep")
);

-- Estructura para la tabla(10) "TPnf" : Almacena la informacion sobre los PNF o carreras de la uptaeb y esta estrictamente relacionado con las unidades curriculares o materias osea con el pensum 

create table "TPnf"(
"codPnf" serial,
"alias" varchar(6),
"descripcion" varchar(150),
primary key("codPnf")
);

-- Estructura para la tabla(11) "TEjes" : Almacena informacion acerca de los ejes de formacion a los que pertenecen las unidades curriculares por ejemplo eje epistemologico

create table "TEjes"(
"codEje" serial,
"nombre" varchar(60),
"descripcion" varchar(150),
primary key("codEje")
);

-- Estructura para la tabla(12) "TUnidCurr" : Almacena informacion acerca de Unidades curriculares o las materias y esta relacionada con horarios , eje, y pnf

create table "TUnidCurr"(
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

-- Estructura para la tabla(13) "TAmbientes" : Guarda la informacion acerca de los ambientes o aulas de clase 

create table "TAmbientes"(
"codAmb" varchar(8),
"ubicacion" varchar(60),
"tipo" int,
"observaciones" varchar(150),
"estado" boolean,
primary key("codAmb")
);

-- Estructura para la tabla(14) "TSecciones" : Almacena informacion acerca de las secciones de los estudiantes de cada pnf 

create table "TSecciones"(
"codSec" varchar(8),
"trayecto" int,
"matricula" int,
"estado" boolean default 'F',
"tipo" int,
"turno" int,
"observaciones" varchar(150),
primary key("codSec")
);

-- Estructura para la tabla(15) "TActiAdmi" : Almacena informacion acerca de Otras Actividades Administrativas del docente que tambien son tomadas en cuenta para su horario pero no como horas de clase

create table "TActiAdmi"(
"codActAdm" serial,
"titulo" varchar(60),
"observaciones" varchar(150),
"dependencia" varchar(300),
"tipActAdm" int,

-- TIPOS DE ACTIVIDADES

-- 1). Creación Intelectual (CI)
-- 2). Integración Comunidad (IC)
-- 3). Asesoría Académica (AA)
-- 4). Gestión Académica (GA)
-- 5). Otras Act. Académicas (OAA)

primary key("codActAdm")
);

-- Estructura para la tabla(16) "TDias" : Almacena informacion acerca de los dias de la semana 

create table "TDias"(
"codDia" varchar(8),
"nombre" varchar(10),
primary key("codDia")
);

-- Estructura para la tabla(17) "THoras" : Almacena informacion acerca de las horas de inicio y de salida de cada actividad

create table "THoras"(
"codHor" varchar(8),
"horEnt" time,
"horSal" time,
primary key("codHor")
);

-- Estructura para la tabla(18) "TTiempo" : Tabla Puente entre las tablas "TDias" y "THoras" y esta relacionada tambien con horario

create table "TTiempo"(
"codTie" varchar(8),
"codDia" varchar(8),
"codHor" varchar(8),
primary key("codTie")
);

-- Estructura para la tabla(19) "THorarios" : Tabla principal que generara los horarios de secciones , docentes , aulas y unidades curriculares ademas de otros reportes y consultas

create table "THorarios"(
"codHor" serial,
"cedDoc" varchar(8),
"codSec" varchar(8),
"codUniCur" int,
"codActAdm" int,
"codTie" varchar(8),
"codAmb" varchar(8),
"lapso" varchar(12),
"estado" boolean,
"observaciones" varchar(300),
primary key("codHor")
);

-- Estructura para la tabla(20) "TBitacora" : Almacena informacion acerca de todas las transacciones de los usuarios dentro del sistema

create table "TBitacora"(
"codBit" serial,
"cedDoc" varchar(8),
"modulo" varchar(60),
"accion" varchar(60),
"fecha" date,
"hora" time,
"descripcion" varchar(120),
primary key("codBit")
);
 
-- CREACION DE RESTRICCIONES DE LLAVES FORANEAS DE LAS TABLAS DE LA BASE DE DATOS

-- Llaves Foraneas para la tabla(06) "TComisiones"

alter table "TComisiones" 
add constraint "fk_cedDoc_TDocentes"
foreign key("cedDoc") 
references "TDocentes"("cedDoc");

-- Llaves Foraneas para la tabla(01) "TDocentes"

alter table "TDocentes"
add constraint "fk_codCatDoc_TCatDoc"
foreign key("codCatDoc") 
references "TCatDoc"("codCatDoc");

alter table "TDocentes"
add constraint "fk_codRol_TRoles"
foreign key("codRol") 
references "TRoles"("codRol");

-- Llaves Foraneas para la tabla(09) "TDocDep"

alter table "TDocDep"
add constraint "fk_cedDoc_TDocentes"
foreign key("cedDoc") 
references "TDocentes"("cedDoc");

alter table "TDocDep"
add constraint "fk_codDep_TDependencias"
foreign key("codDep") 
references "TDependencias"("codDep");

-- Llaves Foraneas para la tabla(05) "TRolPerMod"

alter table "TRolPerMod"
add constraint "fk_codRol_TRoles"
foreign key("codRol") 
references "TRoles"("codRol");

alter table "TRolPerMod"
add constraint "fk_codPer_TPermisos"
foreign key("codPer") 
references "TPermisos"("codPer");

alter table "TRolPerMod"
add constraint "fk_codMod_TModulos"
foreign key("codMod") 
references "TModulos"("codMod");


-- Llaves Foraneas para la tabla(18) "TTiempo"

alter table "TTiempo"
add constraint "fk_codDia_TDias"
foreign key("codDia") 
references "TDias"("codDia");

alter table "TTiempo"
add constraint "fk_codHor_THoras"
foreign key("codHor") 
references "THoras"("codHor");

-- Llaves Foraneas para la tabla(19) "THorarios"

alter table "THorarios"
add constraint "fk_cedDoc_TDocentes"
foreign key("cedDoc") 
references "TDocentes"("cedDoc");

alter table "THorarios"
add constraint "fk_codSec_TSecciones"
foreign key("codSec") 
references "TSecciones"("codSec");

alter table "THorarios"
add constraint "fk_codUniCur_TUnidCurr"
foreign key("codUniCur") 
references "TUnidCurr"("codUniCur");

alter table "THorarios"
add constraint "fk_codActAdm_TActiAdmi"
foreign key("codActAdm") 
references "TActiAdmi"("codActAdm");

alter table "THorarios"
add constraint "fk_codTie_TTiempo"
foreign key("codTie") 
references "TTiempo"("codTie");

alter table "THorarios"
add constraint "fk_codAmb_TAmbientes"
foreign key("codAmb") 
references "TAmbientes"("codAmb");

-- Llaves Foraneas para la tabla(12) "TUnidCurr"

alter table "TUnidCurr"
add constraint "fk_codPnf_TPnf"
foreign key("codPnf") 
references "TPnf"("codPnf");

alter table "TUnidCurr"
add constraint "fk_codEje_TEjes"
foreign key("codEje") 
references "TEjes"("codEje");

-- Llaves Foraneas para la tabla(20) "TBitacora"

alter table "TBitacora"
add constraint "fk_cedDoc_TDocente"
foreign key("cedDoc") 
references "TDocentes"("cedDoc");

