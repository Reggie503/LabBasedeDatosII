--CREACION DE TABLA DE LOG

CREATE TABLE EmpLog(
	LogID INT IDENTITY(1, 1) NOT NULL,
	EmpID int NOT NULL,
	Operacion nvarchar(10) NOT NULL,
	FechaActualizacion DATETIME NOT NULL
)

--CREACOIN DEL TRIGGER
CREATE OR ALTER TRIGGER trgInsertarEmpLog
ON dbo.Empleados
AFTER INSERT
AS

	SET NOCOUNT ON
	print 'Se han insertado los datos a la tabla EmpLog por medio de un trigger'
	INSERT INTO EmpLog(EmpID, Operacion, FechaActualizacion)
	SELECT idEmpleado, 'INSERTAR', GETDATE() FROM inserted --TABLA TEMPORAL

--exec uspInsertarEmpleado 'Fabricio', 'Molina', '4', '5', '2', '03847256-3', 
						--'63745',  '7836-0384','usuario34@gmail.com', '1998-04-26';