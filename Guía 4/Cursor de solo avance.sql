use HOTEL;

declare CursorSoloAvance cursor for
select EMP.nombre, EMP.apellido, CAR.Cargo 
from Empleados EMP, Cargos CAR
where CAR.idCargo = EMP.idCargo
order by EMP.idCargo

open CursorSoloAvance

declare @NombresEmpleado varchar(60)
declare	@ApellidosEmpleado varchar(60)
declare @Cargo varchar(45)

fetch next from CursorSoloAvance into @NombresEmpleado, @ApellidosEmpleado, @Cargo
print 'Empleados registrados:'

while @@FETCH_STATUS = 0
begin
	print 'Nombre: ' + @NombresEmpleado + ' ' + @ApellidosEmpleado + ' - ' + @Cargo
    fetch next from CursorSoloAvance into @NombresEmpleado, @ApellidosEmpleado, @Cargo
end

close CursorSoloAvance
deallocate CursorSoloAvance