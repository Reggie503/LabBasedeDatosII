CREATE DATABASE HOTEL
GO

USE HOTEL
GO 

CREATE TABLE Departamentos(
	idDepartamento int identity (1, 1) primary key,
	departamento varchar(100) not null,
    pais varchar(100) not null
)

create table Municipios(
	idMunicipio int identity (1, 1) primary key,
	municipio varchar(100) not null,
	idDepartamento int not null,
	foreign key (idDepartamento) references Departamentos(idDepartamento) 
)

create table Distritos(
	idDistrito int identity (1, 1) primary key,
	distrito varchar(100) not null,
	idMunicipio int not null,
	foreign key (idMunicipio) references Municipios(idMunicipio)
)

create table Direcciones(
	idDireccion int identity (1, 1) primary key,
	linea_1 varchar(255) not null,
	linea_2 varchar(255),
	idDistrito int not null,
	C_P varchar(100) not null,
	foreign key (idDistrito) references Distritos(idDistrito)
)

create table HorariosTrabajos(
idHorarioTrabajo int identity(1, 1) primary key,
horaEntrada time(0) not null,
horaSalida time(0) not null
)

create table Cargos(
	idCargo int identity(1, 1) primary key,
	cargo varchar(255)
)

create table Empleados(
	idEmpleado int identity(1, 1) primary key,
	nombre varchar(255),
	apellido varchar(255),
	idDireccion int,
	idCargo int,
	idHorarioTrabajo int,
	DUI varchar(50),
	ISSS varchar(100),
	tel varchar(30),
	Email varchar(100),
	fechaNacimineto date not null,
	foreign key (idDireccion) references Direcciones(idDireccion),
	foreign key (idCargo) references Cargos(idCargo),
	foreign key (idHorarioTrabajo) references HorariosTrabajos(idhorarioTrabajo)
)

create table tarjetaCredito(
	idTarjCredito int identity(1, 1) primary key,
	NumTarjetaCred varchar(30)  not null
)

create table tarjetaDebito(
	idTarjDebito int identity(1, 1) primary key,
	NumTarjetaDeb varchar(30)  not null
)

create table Clientes(
	idCliente int identity(1, 1) primary key,
	idTarjDebito int,
	idTarjCredito int,
	Nombre varchar(255)  not null,
	Apellido varchar(255) not null,
	idDireccion int not null,
	DUI varchar(50) not null,
	tel varchar(30) not null,
	Email varchar(100),
	fechaNacimineto date not null,
	foreign key (idDireccion) references Direcciones(idDireccion),
	foreign key (idTarjDebito) references tarjetaDebito(idTarjDebito),	
	foreign key (idTarjCredito) references tarjetaCredito(idTarjCredito),
)

create table Temporadas(
	idTemporada int identity(1, 1) primary key,
	temporada varchar(100) not null,
	fechaInicio varchar(30) not null,
	fechaFinal varchar(30) not null,
	descuento varchar(10) not null
)

create table TipoHabit(
	idTipoHabitacion int identity(1, 1) primary key,
	tipoHabitacion varchar(100) not null,
	camas int,
	numeroHabitacion int,
    estado varchar(100) not null
)

create table precioHab(
	idPrecioHab int identity(1, 1) primary key,
	idTipoHabitacion int,
	Precio float
)

create table tipoPago(
	idTipopago int identity(1, 1) primary key,
	tipoPago varchar(100)
)

create table Reservaciones(
	idReservacion int identity(1, 1) primary key,
	idCliente int,
	idTipoHabitacion int,
	idTemporada int,
	idTipoPago int,
	fechaEntrada date,
	fechaSalida date,
	horaEntrada time,
	horaSalida time,
	foreign key (idCliente) references Clientes(idCliente),
	foreign key (idTipoHabitacion) references TipoHabit(idTipoHabitacion),
	foreign key (idTemporada) references Temporadas(idTemporada),
	foreign key (idTipoPago) references tipoPago(idTipoPago),
	)

create table Opciones(
	idOpcion int identity(1, 1) primary key,
	opcion varchar(100) not null
)

create table Roles(
	idRol int identity(1, 1) primary key,
	rol varchar(100)
)

create table AsignacionRolesOpciones(
	idAsignacionRol int identity(1, 1) primary key,
	idOpcion int,
	idRol int,
	foreign key (idOpcion) references Opciones(idOpcion),
	foreign key (idRol) references Roles(idrol)
)

create table Usuarios(
	idUsuario int identity(1, 1) primary key,
	idEmpleado int,
	idRol int,
	usuario varchar(100)not null,
	clave varchar(100) not null,
	foreign key (idEmpleado) references Empleados(idEmpleado),
	foreign key (idRol) references Roles(idRol)
)

