CREATE DATABASE HOTEL;
GO
USE HOTEL;

CREATE schema hotel;

create table hotel.departamento(
	id_departamento int identity (1,1) primary key,
	departamento varchar(255) not null,)
)
  
create table hotel.municipio(
	id_municipio int identity (1, 1) primary key,
	municipio varchar(255) not null,
	id_departamento int not null,
	foreign key (id_departamento) references hotel.departamento(id_departamento) 
)

create table hotel.distrito(
	id_distrito int identity (1,1) primary key,
	distrito varchar(255) not null,
	id_municipio int not null,
	foreign key (id_municipio) references hotel.municipio(id_municipio)
)

create table hotel.direcciones(
	id_direccion int identity (1,1) primary key,
	linea_1 varchar(255) not null,
	linea_2 varchar(255),
	id_distrito int not null,
	pais varchar(255) not null,
	C_P varchar(100) not null,
	foreign key (id_distrito) references hotel.distrito(id_distrito)
)

create table hotel.empleado(
	idEmpleado int identity(1, 1) primary key,
	Nombre varchar(255),
	Apellido varchar(255),
	id_direccion int,
	DUI varchar(50),
	ISSS varchar(100),
	tel varchar(30),
	Email varchar(100),
	fechaNacimineto date not null,
	foreign key (id_direccion) references hotel.direcciones(id_direccion)
)

create table hotel.cliente(
	idCliente int identity(1, 1) primary key,
	Nombre varchar(255),
	Apellido varchar(255),
	id_direccion int,
	DUI varchar(50),
	tel varchar(30),
	Email varchar(100),
	fechaNacimineto date not null,
	foreign key (id_direccion) references hotel.direcciones(id_direccion)
)

create table hotel.abitaciones(
	idAbitacion int identity (1, 1) primary key,
	piso int not null,
	tipoAbitacion varchar(255) not null,
	precio decimal (10, 5) not null
)

create table hotel.reservacion(
	idReservacion int identity (1, 1) primary key,
	horaEntrada time not null,
	horaSalida time not null,
	idCliente int not null,
	idAbitacion int not null,
	foreign key (idCliente) references hotel.cliente(idCliente),
	foreign key (idAbitacion) references hotel.abitaciones(idAbitacion)
)