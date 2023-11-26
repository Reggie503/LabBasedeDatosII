-- ESCALAR
CREATE or ALTER FUNCTION ufnHorasPorDia(@ID_Persona int)
RETURNS int
AS
BEGIN
	declare @HorasTrabajadas int

	SELECT @HorasTrabajadas = DATEDIFF(hour, a.horaEntrada, a.horaSalida)
	FROM HorariosTrabajos a, Empleados b
	WHERE b.idEmpleado = @ID_Persona
	AND a.idHorarioTrabajo = b.idHorarioTrabajo
	return @HorasTrabajadas
END

-- VALORES DE TABLA
CREATE or ALTER FUNCTION ufnCargo(@ID_Persona INT)
RETURNS TABLE
AS
	RETURN SELECT a.nombre, a.apellido, b.cargo
	FROM Empleados a, Cargos b
	WHERE a.idEmpleado = @ID_Persona
	AND a.idCargo = b.idCargo