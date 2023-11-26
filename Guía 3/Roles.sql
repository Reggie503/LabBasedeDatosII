-- Base de Datos Escuela
-- DCL
use Escuela;

-- ROLES
go
create role Administrador;
create role Gerente; 
create role Recepcionista;
create role RecursosHumanos;

-- LOGINS
go
create login login_admin_antony
with password = 'root';
go
create login login_gerente_juanmartinez
with password = 'juan1234';
go
create login login_recepcionista_mariatorrez
with password = 'torez1234';
go
create login login_recursoshum_rafaelgodinez
with password = 'rafa1234';

-- USUARIOS
go
create user admin_antony
for login login_admin_antony;
go
create user gerente_juanmartinez
for login login_gerente_juanmartinez;

create user recepcionista_mariatorrez
for login login_recepcionista_mariatorrez;
go
create user recursoshum_rafaelgodinez
for login login_recursoshum_rafaelgodinez;

-- AGREGAR USUARIOS A ROLES
go
alter role Administrador add member admin_antony;
alter role Gerente add member gerente_juanmartinez;
alter role Recepcionista add member recepcionista_mariatorrez;
alter role RecursosHumanos add member recursoshum_rafaelgodinez;

-- OTORGAR PERMISOS (En base a las opciones)
go
-- Administrador
grant control on database::HOTEL to Administrador;
-- Gerente
grant select, insert, update, delete on dbo.Direcciones to Gerente;
grant select, insert, update, delete on dbo.Clientes to Gerente;
grant select, insert, update, delete on dbo.Empleados to Gerente;
grant select, insert, update, delete on dbo.HorariosTrabajos to Gerente;
grant select, insert, update, delete on dbo.precioHab to Gerente;
grant select, insert, update, delete on dbo.Reservaciones to Gerente;
grant select, insert, update, delete on dbo.tarjetaDebito to Gerente;
grant select, insert, update, delete on dbo.tarjetaCredito to Gerente;
grant select, insert, update, delete on dbo.TipoHabit to Gerente;
grant select, insert, update, delete on dbo.Temporadas to Gerente;
grant select, insert, update, delete on dbo.Cargos to Gerente;
grant select on dbo.Departamentos to Gerente;
grant select on dbo.Municipios to Gerente;
grant select on dbo.Distritos to Gerente;

-- Recepcionista
grant select, insert, update, delete on dbo.Direcciones to Recepcionista;
grant select, insert, update, delete on dbo.Clientes to Recepcionista
grant select, insert, update, delete on dbo.precioHab to Recepcionista;
grant select, insert, update, delete on dbo.Reservaciones to Recepcionista;
grant select, insert, update, delete on dbo.tarjetaDebito to Recepcionista;
grant select, insert, update, delete on dbo.tarjetaCredito to Recepcionista;
grant select, insert, update, delete on dbo.TipoHabit to Recepcionista;
grant select, insert, update, delete on dbo.Temporadas to Recepcionista;
grant select on dbo.Departamentos to Recepcionista;
grant select on dbo.Municipios to Recepcionista;
grant select on dbo.Distritos to Recepcionista;

-- Recursos Humanos
grant select, insert, update, delete on dbo.Direcciones to RecursosHumanos;
grant select, insert, update, delete on dbo.Cargos to RecursosHumanos;
grant select, insert, update, delete on dbo.Empleados to RecursosHumanos;
grant select, insert, update, delete on dbo.HorariosTrabajos to RecursosHumanos;
grant select on dbo.Departamentos to RecursosHumanos;
grant select on dbo.Municipios to RecursosHumanos;
grant select on dbo.Distritos to RecursosHumanos;
-- CONSULTAS
go
-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';


