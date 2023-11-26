--Insercion
create or alter procedure uspInsertarEmpleado(
	@nombre varchar(255),
	@apellido varchar(255),
	@idDireccion varchar(255),
	@idCargo int,
	@idHorarioTrabajo int,
	@DUI varchar(50),
	@ISSS varchar(100),
	@tel varchar(30),
	@Email varchar(100),
	@fechaNacimineto date
)
as
begin
	insert into Empleados
	values (@nombre, @apellido, @idDireccion, @idCargo,
	@idHorarioTrabajo, @DUI, @ISSS, @tel, @Email, @fechaNacimineto)
end

--exec uspInsertarEmpleado 'alicia', 'lopez', '2', '3', '1', '07642765-7', 
						--'98465',  '7293-8374','usuario33@gmail.com', '1999-03-26';

select * from Empleados;

--Consulta
create or alter procedure ObtenerDireccionEmpleados
as
begin

	select a.nombre, a.apellido, b.linea_1
	from Empleados a, Direcciones b
	where a.idDireccion = b.idDireccion

end;

--execute dbo.ObtenerDireccionEmpleados;