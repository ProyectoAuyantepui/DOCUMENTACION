-- CREACON DE ROLES PREESTABLECIDOS DEL SISTEMA

INSERT INTO "TRoles"("codRol", "nombre", "observaciones") VALUES 
('R-001', 'superusuario', 'control total del sistema'),
('R-002', 'administrador', 'acceso a la gestion de horarios'),
('R-003', 'docente', 'acceso solo a su horario(consultar)');

-- CARGA DE PERMISOS PREESTABLECIDOS DEL SISTEMA

INSERT INTO "TPermisos"( "codPer" , "descripcion" ) VALUES 
('P-01', 'crear'),
('P-02', 'modificar'),
('P-03', 'eliminar'),
('P-04', 'listar'),
('P-05', 'consultar'),
('P-06', 'cambiar estado'),
('P-07', 'permiso de acceso');

-- CARGA DE MODULOS PREESTABLECIDOS DEL SISTEMA

INSERT INTO "TModulos"("codMod","nombre") VALUES 
('M-001','iniciar sesion'),
('M-002','cerrar sesion'),
('M-003','consulta de bitacora'),
('M-004','generacion de reportes'),
('M-005','perfil de usuario'),
('M-006','gestion basica'),
('M-007','seguridad'),
('M-008','recuperar contraseña'),
('M-009','horarios'),
('M-010','docentes'),
('M-011','categorias de docentes'),
('M-012','ambientes'),
('M-013','secciones'),
('M-014','pnf'),
('M-015','ejes de formacion'),
('M-016','unidades curriculares'),
('M-017','actividades administrativas'),
('M-018','comisiones'),
('M-019','dependencias'),
('M-020','roles'),
('M-021','permisologia'),
('M-022','modulos'),
('M-023','respaldo de base de datos'),
('M-024','restauracion de base de datos');

-- CARGA DE PERMISOLOGIA POR ROLES DEL SISTEMA

INSERT INTO "TRolPerMod"( "codRol" , "codPer" , "codMod" , "acceso") VALUES 

-- PERMISOLOGIA PARA EL ROL "SUPERUSUARIO"

-- MODULO : INICIAR SESION
( 'R-001' , 'P-07' , 'M-001' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : PERFIL
( 'R-001' , 'P-07' , 'M-005' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : CERRAR SESION
( 'R-001' , 'P-07' , 'M-002' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : GESTION BASICA
( 'R-001' , 'P-07' , 'M-006' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : SEGURIDAD
( 'R-001' , 'P-07' , 'M-007' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : REESTABLECER CLAVE
( 'R-001' , 'P-07' , 'M-008' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : BITACORA
( 'R-001' , 'P-05' , 'M-003' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : REPORTES
( 'R-001' , 'P-07' , 'M-004' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : HORARIOS
( 'R-001' , 'P-01' , 'M-009' , TRUE ), -- PERMISO : CREAR   
( 'R-001' , 'P-02' , 'M-009' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-06' , 'M-009' , TRUE ), -- PERMISO : CAMBIAR ESTADO
( 'R-001' , 'P-04' , 'M-009' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05' , 'M-009' , TRUE ), -- PERMISO : CONSULTAR 

-- MODULO : DOCENTES
( 'R-001' , 'P-01'  , 'M-010' , TRUE ), -- PERMISO : CREAR   
( 'R-001' , 'P-02'  , 'M-010' , TRUE ), -- PERMISO : MODIFICAR   
( 'R-001' , 'P-03'  , 'M-010' , TRUE ), -- PERMISO : ELIMINAR   
( 'R-001' , 'P-04'  , 'M-010' , TRUE ), -- PERMISO : LISTAR  
( 'R-001' , 'P-05'  , 'M-010' , TRUE ), -- PERMISO : CONSULTAR   
( 'R-001' , 'P-06'  , 'M-010' , TRUE ), -- PERMISO : CAMBIAR ESTADO   

-- MODULO : CATEGORIAS DE DOCENTES
( 'R-001' , 'P-01'  , 'M-011' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-011' , TRUE ), -- PERMISO : MODIFICAR   
( 'R-001' , 'P-03'  , 'M-011' , TRUE ), -- PERMISO : ELIMINAR   
( 'R-001' , 'P-04'  , 'M-011' , TRUE ), -- PERMISO : LISTAR  
( 'R-001' , 'P-05'  , 'M-011' , TRUE ), -- PERMISO : CONSULTAR   

-- MODULO : ACTIVIDADES ADMINISTRATIVAS
( 'R-001' , 'P-01'  , 'M-017' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-017' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-017' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-017' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-017' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : UNIDADES CURRICULARES
( 'R-001' , 'P-01'  , 'M-016' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-016' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-016' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-016' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-016' , TRUE ), -- PERMISO : CONSULTAR

--  MODULO : DEPENDENCIAS
( 'R-001' , 'P-01'  , 'M-019' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-019' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-019' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-019' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-019' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : PNF
( 'R-001' , 'P-01'  , 'M-014' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-014' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-014' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-014' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-014' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : EJES
( 'R-001' , 'P-01'  , 'M-015' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-015' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-015' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-015' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-015' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : SECCIONES
( 'R-001' , 'P-01'  , 'M-013' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-013' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-013' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-013' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-013' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : AMBIENTES
( 'R-001' , 'P-01'  , 'M-012' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-012' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-012' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-012' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-012' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : ROLES
( 'R-001' , 'P-01'  , 'M-020' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-020' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-020' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-020' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-020' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : MODULOS
( 'R-001' , 'P-04'  , 'M-022' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-022' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : PERMISOLOGIA
( 'R-001' , 'P-01'  , 'M-021' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-021' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-021' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-021' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-021' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : COMISIONES
( 'R-001' , 'P-01'  , 'M-018' , TRUE ), -- PERMISO : CREAR 
( 'R-001' , 'P-02'  , 'M-018' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-001' , 'P-03'  , 'M-018' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-001' , 'P-04'  , 'M-018' , TRUE ), -- PERMISO : LISTAR 
( 'R-001' , 'P-05'  , 'M-018' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : RESTAURACION DE BASE DE DATOS
( 'R-001' , 'P-07'  , 'M-024' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : RESPALDO DE BASE DE DATOS
( 'R-001' , 'P-07'  , 'M-023' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- PERMISOLOGIA PARA EL ROL "ADMINISTRADOR"

-- MODULO : INICIAR SESION
( 'R-002' , 'P-07' , 'M-001' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : PERFIL
( 'R-002' , 'P-07' , 'M-005' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : CERRAR SESION
( 'R-002' , 'P-07' , 'M-002' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : GESTION BASICA
( 'R-002' , 'P-07' , 'M-006' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : SEGURIDAD
( 'R-002' , 'P-07' , 'M-007' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : REESTABLECER CLAVE
( 'R-002' , 'P-07' , 'M-008' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : BITACORA
( 'R-002' , 'P-05' , 'M-003' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : REPORTES
( 'R-002' , 'P-07' , 'M-004' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : HORARIOS
( 'R-002' , 'P-01' , 'M-009' , TRUE ), -- PERMISO : CREAR   
( 'R-002' , 'P-02' , 'M-009' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-06' , 'M-009' , TRUE ), -- PERMISO : CAMBIAR ESTADO
( 'R-002' , 'P-04' , 'M-009' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05' , 'M-009' , TRUE ), -- PERMISO : CONSULTAR 

-- MODULO : DOCENTES
( 'R-002' , 'P-01'  , 'M-010' , TRUE ), -- PERMISO : CREAR   
( 'R-002' , 'P-02'  , 'M-010' , TRUE ), -- PERMISO : MODIFICAR   
( 'R-002' , 'P-03'  , 'M-010' , TRUE ), -- PERMISO : ELIMINAR   
( 'R-002' , 'P-04'  , 'M-010' , TRUE ), -- PERMISO : LISTAR  
( 'R-002' , 'P-05'  , 'M-010' , TRUE ), -- PERMISO : CONSULTAR   
( 'R-002' , 'P-06'  , 'M-010' , TRUE ), -- PERMISO : CAMBIAR ESTADO   

-- MODULO : CATEGORIAS DE DOCENTES
( 'R-002' , 'P-01'  , 'M-011' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-011' , TRUE ), -- PERMISO : MODIFICAR   
( 'R-002' , 'P-03'  , 'M-011' , TRUE ), -- PERMISO : ELIMINAR   
( 'R-002' , 'P-04'  , 'M-011' , TRUE ), -- PERMISO : LISTAR  
( 'R-002' , 'P-05'  , 'M-011' , TRUE ), -- PERMISO : CONSULTAR   

-- MODULO : ACTIVIDADES ADMINISTRATIVAS
( 'R-002' , 'P-01'  , 'M-017' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-017' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-017' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-017' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-017' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : UNIDADES CURRICULARES
( 'R-002' , 'P-01'  , 'M-016' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-016' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-016' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-016' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-016' , TRUE ), -- PERMISO : CONSULTAR

--  MODULO : DEPENDENCIAS
( 'R-002' , 'P-01'  , 'M-019' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-019' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-019' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-019' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-019' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : PNF
( 'R-002' , 'P-01'  , 'M-014' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-014' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-014' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-014' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-014' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : EJES
( 'R-002' , 'P-01'  , 'M-015' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-015' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-015' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-015' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-015' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : SECCIONES
( 'R-002' , 'P-01'  , 'M-013' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-013' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-013' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-013' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-013' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : AMBIENTES
( 'R-002' , 'P-01'  , 'M-012' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-012' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-012' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-012' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-012' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : ROLES
( 'R-002' , 'P-01'  , 'M-020' , 'F' ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-020' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-020' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-020' , 'F' ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-020' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : MODULOS
( 'R-002' , 'P-04'  , 'M-022' , 'F' ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-022' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : PERMISOLOGIA
( 'R-002' , 'P-01'  , 'M-021' , 'F' ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-021' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-021' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-021' , 'F' ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-021' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : COMISIONES
( 'R-002' , 'P-01'  , 'M-018' , TRUE ), -- PERMISO : CREAR 
( 'R-002' , 'P-02'  , 'M-018' , TRUE ), -- PERMISO : MODIFICAR 
( 'R-002' , 'P-03'  , 'M-018' , TRUE ), -- PERMISO : ELIMINAR 
( 'R-002' , 'P-04'  , 'M-018' , TRUE ), -- PERMISO : LISTAR 
( 'R-002' , 'P-05'  , 'M-018' , TRUE ), -- PERMISO : CONSULTAR

-- MODULO : RESTAURACION DE BASE DE DATOS
( 'R-002' , 'P-07'  , 'M-024' , 'F' ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : RESPALDO DE BASE DE DATOS
( 'R-002' , 'P-07'  , 'M-023' , 'F' ), -- PERMISO : PERMISO DE ACCESO

-- PERMISOLOGIA PARA EL ROL "DOCENTE"

-- MODULO : INICIAR SESION
( 'R-003' , 'P-07' , 'M-001' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : PERFIL
( 'R-003' , 'P-07' , 'M-005' , TRUE ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : CERRAR SESION
( 'R-003' , 'P-07' , 'M-002' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : GESTION BASICA
( 'R-003' , 'P-07' , 'M-006' , 'F' ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : SEGURIDAD
( 'R-003' , 'P-07' , 'M-007' , 'F' ), -- PERMISO : PERMISO DE ACCESO 

-- MODULO : REESTABLECER CLAVE
( 'R-003' , 'P-07' , 'M-008' , TRUE ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : BITACORA
( 'R-003' , 'P-05' , 'M-003' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : REPORTES
( 'R-003' , 'P-07' , 'M-004' , 'F' ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : HORARIOS
( 'R-003' , 'P-01' , 'M-009' , 'F' ), -- PERMISO : CREAR   
( 'R-003' , 'P-02' , 'M-009' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-06' , 'M-009' , 'F' ), -- PERMISO : CAMBIAR ESTADO
( 'R-003' , 'P-04' , 'M-009' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05' , 'M-009' , 'F' ), -- PERMISO : CONSULTAR 

-- MODULO : DOCENTES
( 'R-003' , 'P-01'  , 'M-010' , 'F' ), -- PERMISO : CREAR   
( 'R-003' , 'P-02'  , 'M-010' , 'F' ), -- PERMISO : MODIFICAR   
( 'R-003' , 'P-03'  , 'M-010' , 'F' ), -- PERMISO : ELIMINAR   
( 'R-003' , 'P-04'  , 'M-010' , 'F' ), -- PERMISO : LISTAR  
( 'R-003' , 'P-05'  , 'M-010' , 'F' ), -- PERMISO : CONSULTAR   
( 'R-003' , 'P-06'  , 'M-010' , 'F' ), -- PERMISO : CAMBIAR ESTADO   

-- MODULO : CATEGORIAS DE DOCENTES
( 'R-003' , 'P-01'  , 'M-011' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-011' , 'F' ), -- PERMISO : MODIFICAR   
( 'R-003' , 'P-03'  , 'M-011' , 'F' ), -- PERMISO : ELIMINAR   
( 'R-003' , 'P-04'  , 'M-011' , 'F' ), -- PERMISO : LISTAR  
( 'R-003' , 'P-05'  , 'M-011' , 'F' ), -- PERMISO : CONSULTAR   

-- MODULO : ACTIVIDADES ADMINISTRATIVAS
( 'R-003' , 'P-01'  , 'M-017' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-017' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-017' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-017' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-017' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : UNIDADES CURRICULARES
( 'R-003' , 'P-01'  , 'M-016' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-016' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-016' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-016' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-016' , 'F' ), -- PERMISO : CONSULTAR

--  MODULO : DEPENDENCIAS
( 'R-003' , 'P-01'  , 'M-019' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-019' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-019' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-019' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-019' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : PNF
( 'R-003' , 'P-01'  , 'M-014' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-014' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-014' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-014' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-014' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : EJES
( 'R-003' , 'P-01'  , 'M-015' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-015' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-015' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-015' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-015' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : SECCIONES
( 'R-003' , 'P-01'  , 'M-013' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-013' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-013' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-013' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-013' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : AMBIENTES
( 'R-003' , 'P-01'  , 'M-012' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-012' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-012' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-012' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-012' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : ROLES
( 'R-003' , 'P-01'  , 'M-020' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-020' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-020' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-020' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-020' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : MODULOS
( 'R-003' , 'P-04'  , 'M-022' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-022' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : PERMISOLOGIA
( 'R-003' , 'P-01'  , 'M-021' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-021' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-021' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-021' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-021' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : COMISIONES
( 'R-003' , 'P-01'  , 'M-018' , 'F' ), -- PERMISO : CREAR 
( 'R-003' , 'P-02'  , 'M-018' , 'F' ), -- PERMISO : MODIFICAR 
( 'R-003' , 'P-03'  , 'M-018' , 'F' ), -- PERMISO : ELIMINAR 
( 'R-003' , 'P-04'  , 'M-018' , 'F' ), -- PERMISO : LISTAR 
( 'R-003' , 'P-05'  , 'M-018' , 'F' ), -- PERMISO : CONSULTAR

-- MODULO : RESTAURACION DE BASE DE DATOS
( 'R-003' , 'P-07'  , 'M-024' , 'F' ), -- PERMISO : PERMISO DE ACCESO

-- MODULO : RESPALDO DE BASE DE DATOS
( 'R-003' , 'P-07'  , 'M-023' , 'F' ); -- PERMISO : PERMISO DE ACCESO

-- CREACION DE UNA CATEGORIA

INSERT INTO "TCatDoc"( "codCatDoc" , "nombre" , "descripcion" )
    VALUES ( default , 'dssd', 'dssd' );


-- CREACION DE UN DOCENTE CON ROL DE SUPER USUARIO

INSERT INTO "TDocentes"("cedDoc", "codRol", "nombre", "correo", "usuario","clave")
    VALUES ('25627918', 'R-001', 'root', 'admin@admin.com', 'admin','admin');

-- CARGA DE DIAS PREESTABLECIDOS DEL SISTEMA

INSERT INTO "TDias"("codDia", nombre) VALUES 
('D-001','lunes'),
('D-002','martes'),
('D-003','miercoles'),
('D-004','jueves'),
('D-005','viernes'),
('D-006','sabado'),
('D-007','domingo');

-- CARGA DE HORAS PREESTABLECIDAS DEL SISTEMA PARA LOS HORARIOS

INSERT INTO "THoras"( "codHor", "horEnt", "horSal") VALUES 
--Horas del Turno de la mañana
('H-01','07:20', '08:05'),
('H-02','08:05', '08:50'),
('H-03','08:55', '09:40'),
('H-04','09:40', '10:25'),
('H-05','10:30', '11:15'),
('H-06','11:15', '12:00'),
--Horas del turno de la tarde
('H-07','13:20', '14:05'),
('H-08','14:05', '14:50'),
('H-09','14:55', '15:40'),
('H-10','15:40', '16:25'),
('H-11','16:30', '17:15'),
('H-12','17:15', '18:00'),
--Horas del turno de la noche
('H-13','18:00', '18:45'),
('H-14','18:45', '17:30'),
('H-15','19:35', '20:20'),
('H-16','20:20', '21:05'),
('H-17','21:10', '21:55'),
('H-18','21:55', '22:40');

-- RELACIONANDO DIAS Y HORAS

-- DIA LUNES
INSERT INTO "TTiempo"( "codTie", "codDia", "codHor") VALUES 
('T-01','D-001','H-01'),
('T-02','D-001','H-02'),
('T-03','D-001','H-03'),
('T-04','D-001','H-04'),
('T-05','D-001','H-05'),
('T-06','D-001','H-06'),
('T-07','D-001','H-07'),
('T-08','D-001','H-08'),
('T-09','D-001','H-09'),
('T-10','D-001','H-10'),
('T-11','D-001','H-11'),
('T-12','D-001','H-12'),
('T-13','D-001','H-13'),
('T-14','D-001','H-14'),
('T-15','D-001','H-15'),
('T-16','D-001','H-16'),
('T-17','D-001','H-17'),
('T-18','D-001','H-18'),
-- DIA MARTES
('T-19','D-002','H-01'),
('T-20','D-002','H-02'),
('T-21','D-002','H-03'),
('T-22','D-002','H-04'),
('T-23','D-002','H-05'),
('T-24','D-002','H-06'),
('T-25','D-002','H-07'),
('T-26','D-002','H-08'),
('T-27','D-002','H-09'),
('T-28','D-002','H-10'),
('T-29','D-002','H-11'),
('T-30','D-002','H-12'),
('T-31','D-002','H-13'),
('T-32','D-002','H-14'),
('T-33','D-002','H-15'),
('T-34','D-002','H-16'),
('T-35','D-002','H-17'),
('T-36','D-002','H-18'),
--DIA MIERCOLES
('T-37','D-003','H-01'),
('T-38','D-003','H-02'),
('T-39','D-003','H-03'),
('T-40','D-003','H-04'),
('T-41','D-003','H-05'),
('T-42','D-003','H-06'),
('T-43','D-003','H-07'),
('T-44','D-003','H-08'),
('T-45','D-003','H-09'),
('T-46','D-003','H-10'),
('T-47','D-003','H-11'),
('T-48','D-003','H-12'),
('T-49','D-003','H-13'),
('T-50','D-003','H-14'),
('T-51','D-003','H-15'),
('T-52','D-003','H-16'),
('T-53','D-003','H-17'),
('T-54','D-003','H-18'),
--DIA JUEVES
('T-55','D-004','H-01'),
('T-56','D-004','H-02'),
('T-57','D-004','H-03'),
('T-58','D-004','H-04'),
('T-59','D-004','H-05'),
('T-60','D-004','H-06'),
('T-61','D-004','H-07'),
('T-62','D-004','H-08'),
('T-63','D-004','H-09'),
('T-64','D-004','H-10'),
('T-65','D-004','H-11'),
('T-66','D-004','H-12'),
('T-67','D-004','H-13'),
('T-68','D-004','H-14'),
('T-69','D-004','H-15'),
('T-70','D-004','H-16'),
('T-71','D-004','H-17'),
('T-72','D-004','H-18'),
--DIA VIERNES
('T-73','D-005','H-01'),
('T-74','D-005','H-02'),
('T-75','D-005','H-03'),
('T-76','D-005','H-04'),
('T-77','D-005','H-05'),
('T-78','D-005','H-06'),
('T-79','D-005','H-07'),
('T-80','D-005','H-08'),
('T-81','D-005','H-09'),
('T-82','D-005','H-10'),
('T-83','D-005','H-11'),
('T-84','D-005','H-12'),
('T-85','D-005','H-13'),
('T-86','D-005','H-14'),
('T-87','D-005','H-15'),
('T-89','D-005','H-16'),
('T-90','D-005','H-17'),
('T-91','D-005','H-18'),
--DIA SABADO
('T-92','D-006','H-01'),
('T-93','D-006','H-02'),
('T-94','D-006','H-03'),
('T-95','D-006','H-04'),
('T-96','D-006','H-05'),
('T-97','D-006','H-06'),
('T-98','D-006','H-07'),
('T-99','D-006','H-08'),
('T-100','D-006','H-09'),
('T-101','D-006','H-10'),
('T-102','D-006','H-11'),
('T-103','D-006','H-12'),
('T-104','D-006','H-13'),
('T-105','D-006','H-14'),
('T-106','D-006','H-15'),
('T-107','D-006','H-16'),
('T-108','D-006','H-17'),
('T-109','D-006','H-18'),
--DIA DOMINGO
('T-110','D-007','H-01'),
('T-111','D-007','H-02'),
('T-112','D-007','H-03'),
('T-113','D-007','H-04'),
('T-114','D-007','H-05'),
('T-115','D-007','H-06'),
('T-116','D-007','H-07'),
('T-117','D-007','H-08'),
('T-118','D-007','H-09'),
('T-119','D-007','H-10'),
('T-120','D-007','H-11'),
('T-121','D-007','H-12'),
('T-122','D-007','H-13'),
('T-123','D-007','H-14'),
('T-124','D-007','H-15'),
('T-125','D-007','H-16'),
('T-126','D-007','H-17'),
('T-127','D-007','H-18');


