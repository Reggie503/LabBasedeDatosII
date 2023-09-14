use HOTEL;

-- Departamentos
insert into hotel.departamento values
	('Sonsonate'),
	('Ahuachapan'),
	('Santa Ana');

select * from hotel.departamento;

-- Municipios
insert into hotel.municipio values
	('Sonsonate Norte', '1'),
	('Sonsonate Este', '1'),
	('Sonsonate Oeste', '1'),
	('Sonsonate Centro', '1'),
	('Ahuachapan Sur', '2'),
	('Ahuachapan Centro', '2'),
	('Santa Ana Centro', '3');

select * from hotel.municipio;

--DISTRITOS
insert into hotel.distrito values
	('Nahuizalco', '1'),
	('Izalco', '2'),
	('Acajutla', '3'),
	('Sonsonate', '4'),
	('Guaymango', '5'),
	('Ahuachapan', '6'),
	('Santa Ana', '7');

select * from hotel.distrito;

--DIRECCIONES
insert into hotel.direcciones values
	('Hotel buena vista Sonsonate', ' ', '4', 'El Salvador', '03001'),
	('Hotel buena vista Ahauachapan', ' ', '6', 'El Salvador', '01008'),
	('Hotel buena vista Santa Ana', ' ', '7', 'El Salvador', '02011'),
	('Hotel buena vista Acajutla', ' ', '3', 'El Salvador', '03005'),
	('Hotel buena vista Izalco', ' ', '2', 'El Salvador', '03002')

select * from hotel.direcciones

--EMPLEADOS
insert into hotel.empleado values
	('Antony','Rodriguez','1', '0606730', '03746', '76584-6743', 'usuario1@ejem.com','2000-06-17'),
	('Juan', 'Martinez', '2', '07654321-3', '03350', '7865-0987', 'usuario2@ejem.com', '1971-01-01'),
	('Maria', 'Torres', '3', '06789012-7', '09767', '7263-0936', 'usuario3@ejem.com', '1972-02-02'),
	('Ana', 'Gonzalez', '4', '02345678-4', '04756', '7584-1036', 'usuario4@ejem.com', '1973-03-03'),
	('Jose', 'Perez', '5', '08901234-2',  '09463', '7384-0374', 'usuario5@ejem.com', '1974-04-04')

select * from hotel.empleado

--HABITACIONES
insert into hotel.abitaciones values
	('1', 'Normal', '20.00', 'Reservada'),
	('1', 'Normal', '20.00', 'Disponible'),
	('1', 'Normal', '20.00', 'Ocupada'),
	('2', 'Dobles', '35.00', 'Disponible'),
	('2', 'Dobles', '35.00', 'Ocupada'),
	('2', 'Dobles', '35.00', 'Disponible'),
	('4', 'Suite', '50.00', 'Reservada'),
	('4', 'Suite', '50.00', 'Reservada'),
	('4', 'Suite', '50.00', 'Disponible'),
	('3', 'Matrimoniales', '25.00', 'Reservada'),
	('3', 'Matrimonial', '25.00', 'Reservada'),
	('3', 'Matrimoniales', '25.00', 'Ocupada')

select * from hotel.abitaciones

--CLIENTES
insert into hotel.cliente values
	('Lester', 'Ortega', '1', '06757310-0', '7564-0374', 'cliente1@ejem.com', '1998-09-18'),
	('Ernesto', 'Maye', '1', '05736474-0', '7564-0374', 'cliente2@ejem.com', '1999-07-17'),
	('Roberto', 'Alas', '3', '09463748-5', '7835-0264', 'cliente3@ejem.com', '1993-08-02'),
	('Jordan', 'Lopez', '3', '04735264-4', '7483-2846', 'cliente4@ejem.com', '1995-06-20'),
	('Carlos', 'Galicia', '5', '05735495-4', '7849-3746', 'cliente5@ejem.com', '1994-09-06')

select * from hotel.cliente

--RESERVACIONES
insert hotel.reservacion values
	('20:00:00', '08:00:00', '5', '1', '2023-09-16'), 
	('18:00:00', '12:00:00', '6', '3', '2023-09-20'), 
	('17:00:00', '05:00:00', '7', '3', '2023-09-23'), 
	('14:00:00', '12:00:00', '8', '4', '2023-10-5'), 
	('08:00:00', '20:00:00', '9', '5', '2023-10-01') 

select * from hotel.reservacion

--CONSULTAS NORMALES
--                           1
select b.Nombre, b.Apellido, c.tipoAbitacion
From hotel.reservacion a, hotel.cliente b, hotel.abitaciones c
WHERE a.idAbitacion = c.idAbitacion
AND a.idCliente = b.idCliente

--                           2
-----------------------------------------------------------------
select c.idCliente, c.Nombre, b.tipoAbitacion, DATEDIFF(hour,a.horaSalida, a.horaEntrada) AS HoraRest
from hotel.reservacion a, hotel.abitaciones b, hotel.cliente c
Where a.idAbitacion = b.idAbitacion
AND a.idCliente = c.idCliente

--                           3
-----------------------------------------------------------------
select SUM(b.precio) DineroReservacion
from hotel.reservacion a, hotel.abitaciones b
where a.idAbitacion = b.idAbitacion

--                           4
-----------------------------------------------------------------
select count(b.idAbitacion) Disponibles
from hotel.abitaciones b
where b.Estado = 'Disponible'

--                           5
-----------------------------------------------------------------
select a.idAbitacion, a.precio, a.tipoAbitacion
from hotel.abitaciones a
where a.Estado = 'Disponible'


-----------------------------------------------------------------
--CONSULTAS MULTITABLAS, SUBCONSULTAS, JOINS	
-----------------------------------------------------------------
--                           1
-----------------------------------------------------------------
select concat(b.Nombre, ' ', b.Apellido) as Cliente,
concat(c.tipoAbitacion, ' $', c.precio)
from hotel.cliente b
join hotel.reservacion a on b.idCliente = a.idCliente
join hotel.abitaciones c on a.idAbitacion = c.idAbitacion

--                           2
-----------------------------------------------------------------
select Nombre, Apellido, DUI, fechaNacimineto, 
	(
		Select id_direccion
		from hotel.direcciones
		where hotel.cliente.id_direccion = hotel.direcciones.id_direccion
	) AS Direccion
from hotel.cliente

--                           3
-----------------------------------------------------------------
select c.idCliente , c.Nombre, b.tipoAbitacion, a.horaEntrada, a.horaSalida
from hotel.reservacion a, hotel.abitaciones b, hotel.cliente c
where a.idAbitacion = b.idAbitacion
and a.idCliente = c.idCliente

--                           4
-----------------------------------------------------------------
select a.idEmpleado, a.Nombre, a.Apellido, a.ISSS, a.fechaNacimineto, b.linea_1
from hotel.empleado a, hotel.direcciones b
where a.id_direccion = b.id_direccion

--                           5
-----------------------------------------------------------------
select c.municipio, 
	(
		select b.departamento
		from hotel.departamento b
		where c.id_departamento = b.id_departamento
	)
from hotel.municipio c
