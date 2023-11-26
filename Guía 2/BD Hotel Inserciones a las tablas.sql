use HOTEL

-- Departamentos
insert into Departamentos values
	('Sonsonate','El Salvador'),
	('Ahuachapan', 'El Salvador'),
	('Santa Ana', 'El Salvador');

select * from Departamentos;

-- Municipios
insert into Municipios values
	('Sonsonate Norte', '1'),
	('Sonsonate Este', '3'),
	('Sonsonate Oeste', '3'),
	('Sonsonate Centro', '1'),
	('Ahuachapan Sur', '3'),
	('Ahuachapan Centro', '2'),
	('Santa Ana Centro', '3');

select * from Municipios;

-- Distritos
insert into Distritos values
	('Nahuizalco', '1'),
	('Izalco', '2'),
	('Acajutla', '3'),
	('Sonsonate', '4'),
	('Guaymango', '5'),
	('Ahuachapan', '6'),
	('Santa Ana', '7');

select * from Distritos;

-- Direcciones 
insert into Direcciones values
	('Col Madera, Calle 1, #1N', 'Frente al parque', '1', '02302'),
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', '2', '02306'),
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', '3', '02304'),
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', '4', '02301'),
	('Col La Frontera, Calle 5, #5G', 'Km 10', '5', '03350'),
	('Res Buenavista, Calle 6, #6A', 'Contiguo a alcaldia', '6', '03351'),
	('Barrio Altavista, Av 7, #7S', 'Contiguo a SERTRACEN', '7', '02090');

select * from Direcciones;

-- Horario de Trabajo
insert into HorariosTrabajos values
	('7:00','19:00'),
	('19:00','7:00')

select * from HorariosTrabajos

-- Cargos
insert into Cargos values
	('SysAdmin'),			--1
	('Director General'),	--2
	('Recepcionista'),		--3
	('Recursos humanos'),	--4
	('Botones'),			--5
	('Ama de llaves'),		--6
	('Barman'),				--7
	('Cocinero'),			--8
	('Auxiliar de cocina'),	--9
	('Seguridad'),			--10
	('Socorrista'),			--11	
	('Masajistas')			--12

select * from Cargos

-- Empleados
insert into Empleados values
	-- SysAdmin
	('Antony','Rodriguez','1', '1','1', '06067310-6', '03746', '76584-6743', 'usuario1@ejem.com','2000-06-17'),
	-- Director general
	('Juan', 'Martinez', '2', '2','1', '07654321-3', '03350', '7865-0987', 'usuario2@ejem.com', '1971-01-01'),
	('Jose', 'Perez', '2', '2','2', '08901234-2',  '09463', '7384-0374', 'usuario3@ejem.com', '1974-04-04'),
	-- Recepcionista
	('Maria', 'Torres', '3', '3','1', '06789012-7', '09767', '7263-0936', 'usuario4@ejem.com', '1972-02-02'),
	('Ana', 'Gonzalez', '7', '3','1', '02345678-4', '04756', '7584-1036', 'usuario5@ejem.com', '1973-03-03'),
	('Alma', 'Lopez', '5', '3','2', '04545678-8', '05432', '7854-0000', 'usuario6@ejem.com', '1989-08-24'),
	('Fatima', 'Portillo', '6', '3','2', '04628495-6', '04564', '7664-8364', 'usuario7@ejem.com', '1984-09-17'),
	-- Recursos humanos
	('Rafael', 'Godinez', '6', '4','1', '05628495-7', '04556', '7865-9765', 'usuario8@ejem.com', '1984-05-25'),
	-- Botones
	('Carlos', 'Perez', '3', '5','1', '02735481-0', '04736', '7054-7654', 'usuario9@ejem.com', '1995-02-01'),
	('Natanael', 'Godoy', '2', '5','1', '09463218-0', '05325', '7777-8765', 'usuario10@ejem.com', '1989-12-25'),
	('Milton', 'Aguirre', '1', '5','2', '05293049-8', '05342', '7096-9474', 'usuario11@ejem.com', '1974-09-14'),
	('Jose', 'Juarez', '1', '5','2', '07930452-2', '65433', '7788-9944', 'usuario12@ejem.com', '1984-05-24'),
	-- Ama de llaves
	('Daniela', 'Aguilar', '7', '6','1', '05826445-9', '93428', '7654-9876', 'usuario13@ejem.com', '1980-04-30'),
	('Kimberly', 'Galindo', '4', '6','1', '03648264-4', '47343', '7634-7865', 'usuario14@ejem.com', '1989-03-31'),
	('Ingrid', 'Castro', '7', '6','2', '08443846-9', '04326', '7547-7865', 'usuario15@ejem.com', '1977-03-28'),
	('Isabel', 'Maravilla', '1', '6','2', '03728744-4', '07645', '7348-5895', 'usuario16@ejem.com', '1985-03-23'),
	-- Barman
	('Oscar', 'Godinez', '1', '7','1', '02345678-9', '09643', '7656-7687', 'usuario17@ejem.com', '1989-08-19'),
	('Marcos', 'Pocasangre', '1', '7','2', '04532546-6', '09746', '7755-0987', 'usuario18@ejem.com', '1993-09-27'),
	-- Cocinero
	('Marcos', 'Pocasangre', '3', '8','1', '09563857-0', '04653', '7878-3519', 'usuario19@ejem.com', '1992-11-07'),
	('Marcos', 'Pocasangre', '5', '8','2', '08256856-6', '08438', '7625-5511', 'usuario20@ejem.com', '1994-07-03'),
	-- Auxiliar de cocina
	('Mayra', 'Galicia', '5', '9','1', '03495646-7', '08746', '7055-7756', 'usuario21@ejem.com', '1983-02-28'),
	('Alexander', 'Flores', '4', '9','1', '02545213-5', '07452', '7135-0035', 'usuario22@ejem.com', '1981-04-17'),
	('Luis', 'Lopez', '2', '9','2', '03647582-1', '08762', '7954-5434', 'usuario23@ejem.com', '1996-06-10'),
	('Otoniel', 'Perez', '3', '9','2', '04635483-8', '09874', '7059-9354', 'usuario24@ejem.com', '1990-01-01'),
	-- Seguridad
	('Isaias', 'Gomez', '1', '10','1', '04628376-1', '06452', '7846-0735', 'usuario25@ejem.com', '1994-01-13'),
	('Roberto', 'Cruz', '1', '10','2', '02078324-9', '08635', '7846-0934', 'usuario26@ejem.com', '1999-06-28'),
	-- Socorrista
	('Bryan', 'Guadalupe', '1', '11','1', '03425677-7', '093645', '7835-0878', 'usuario27@ejem.com', '1995-03-15'),
	('Flor', 'Mesa', '1', '11','1', '09974534-0', '09465', '7835-0834', 'usuario28@ejem.com', '1998-06-27'),
	-- Masajistas
	('Luisa', 'Perez', '1', '12','1', '09432456-3', '04538', '7864-0983', 'usuario29@ejem.com', '1989-02-05'),
	('Monica', 'Armado', '1', '12','1', '04235435-0', '08537', '7859-0845', 'usuario30@ejem.com', '1979-04-03'),
	('Silvia', 'Flores', '1', '12','2', '02543278-4', '08465', '7845-0935', 'usuario31@ejem.com', '2004-06-06'),
	('Arely', 'Aguirre', '1', '12','2', '02356786-4', '08648', '7420-0163', 'usuario32@ejem.com', '2002-10-08')
	
select * from Empleados

-- Tarjeta credito
insert into tarjetaCredito values
	('0'),
	('9845-9784-0863-9946'),
	('7834-9745-0365-3525'),
	('7585-0375-0034-2546'),
	('7439-8465-9375-0957'),
	('8835-0874-3566-0375')

select * from tarjetaCredito

-- Tarjeta debito
insert into tarjetaDebito values
	('0'),
	('9484-9305-4554-5344-5365'),
	('9749-0835-3567-3455-7432'),
	('9375-7238-9375-8365-8356'),
	('7846-9476-8376-0264-0485'),
	('7845-9874-6538-9746-9366')

select * from tarjetaDebito

-- Cliente
insert into Clientes values
	('6','1','Lester', 'Ortega', '1', '06757310-0', '7564-0374', 'cliente1@ejem.com', '1998-09-18'),
	('1','6','Ernesto', 'Maye', '1', '05736474-0', '7564-0374', 'cliente2@ejem.com', '1999-07-17'),
	('3','1','Roberto', 'Alas', '3', '09463748-5', '7835-0264', 'cliente3@ejem.com', '1993-08-02'),
	('1','4','Jordan', 'Lopez', '3', '04735264-4', '7483-2846', 'cliente4@ejem.com', '1995-06-20'),
	('5','5','Carlos', 'Galicia', '5', '05735495-4', '7849-3746', 'cliente5@ejem.com', '2000-09-06'),
	('2','1','Jorje', 'Messa', '7', '08366475-4', '7264-0945', 'cliente6@ejem.com', '1995-05-26'),
	('1','3','Armando', 'Piñata', '3', '09468574-5', '7836-0924', 'cliente7@ejem.com', '1984-09-16'),
	('1','2','Obvidio', 'Sanches', '2', '09374045-4', '7836-0924', 'cliente8@ejem.com', '1995-10-14'),
	('4','1','Cruz', 'Lopez', '4', '05836405-0', '7093-0983', 'cliente9@ejem.com', '1991-06-19')

select * from Clientes

-- Temporada
insert into Temporadas values
	('Primavera','16 de Marzo','15 de Junio','5%'),
	('Verano','16 de Junio','15 de Septiembre','10%'),
	('Otoño','16 de Septiembre','15 de Diciembre','15%'),
	('Invierno','16 de Diciembre','15 de Marzo','20%')

select * from Temporadas

-- Tipo Hanitaciones
insert into TipoHabit values
	('Normal', '2', '11', 'Reservada'),			
	('Normal', '2', '12', 'Disponible'),		
	('Normal', '2', '13', 'Ocupada'),			
	('Dobles', '4', '21', 'Disponible'),
	('Dobles', '4', '22', 'Ocupada'),
	('Dobles', '4', '23', 'Disponible'),
	('Matrimoniales', '1', '31', 'Reservada'),	
	('Matrimonial', '1', '32', 'Reservada'),	
	('Matrimoniales', '1', '33','Ocupada'),
	('Suite', '3', '41', 'Reservada'),			
	('Suite', '3', '42', 'Reservada'),			
	('Suite', '3', '43', 'Disponible')

select * from TipoHabit

-- Precio Habitacion
insert into precioHab values
	('1','20.00'),
	('2','35.00'),
	('3','25.00'),
	('4','50.00')

select * from precioHab

-- Tipo Pago
insert into tipoPago values
	('Efectivo'),
	('Tarjeta'),
	('mixto')

select * from tipoPago

-- Recervaciones
insert into Reservaciones values
	('1', '1', '4', '1', '2023-12-22', '2023-12-30', '7:00', '17:00'),
	('3', '7', '4', '2',  '2024-01-30', '2024-02-05', '11:00', '20:00'),
	('2', '8', '3', '2', '2023-09-25', '2023-10-10', '8:00', '8:00'),
	('7', '11', '2', '1', '2023-07-17', '2023-07-25', '15:00', '17:00'),
	('5', '10', '1', '3', '2023-04-04', '2023-04-15', '20:00', '20:00')

select * from Reservaciones