use HOTEL

create sequence LogID
	start with 1
	increment by 1
	minvalue 1
	maxvalue 99999999

CREATE TABLE EmpLog(
	LogID int primary key NOT NULL,
	EmpID int NOT NULL,
	Operacion nvarchar(10) NOT NULL,
	FechaActualizacion DATETIME NOT NULL
)


CREATE OR ALTER TRIGGER trgInsertarEmpLog
ON dbo.Empleados
AFTER INSERT
AS
begin

    declare @EmpID int
	declare @Operacion nvarchar(10)
	declare @FechaActualizacion DATETIME
	
    select top 1 
	@EmpID = idEmpleado,
	@Operacion = 'INSERTAR',
	@FechaActualizacion = getdate()
    from inserted

    -- Inserta la información en la tabla ReporteMatriculas
    insert into EmpLog values
    (next value for LogID, @EmpID, @Operacion, @FechaActualizacion)

	SET NOCOUNT ON
	print 'Se realizó un nuevo Empleado con Fecha y Hora: ' + 
	cast(@FechaActualizacion as varchar(100))

end

exec uspInsertarEmpleado 'Mirna', 'Galicia', '3', '6', '1', '04823945-4', 
						'03746',  '7624-3452','usuario35@gmail.com', '1978-03-16';

select * from Empleados
select * from EmpLog