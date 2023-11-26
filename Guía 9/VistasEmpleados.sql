create view VistaEmpleados as
Select emp.idEmpleado, emp.nombre, emp.apellido, dir.linea_1, car.cargo, horas.jornada,
	   emp.DUI, emp.ISSS, emp.tel, emp.Email, emp.fechaNacimineto
from Empleados emp
inner join Direcciones dir on emp.idDireccion = dir.idDireccion
inner join Cargos car on emp.idCargo = car.idCargo
inner join HorariosTrabajos horas on emp.idHorarioTrabajo = horas.idHorarioTrabajo;

select * from VistaEmpleados