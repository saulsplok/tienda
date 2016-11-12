create table productos(id integer auto_increment primary key,
nombre varchar(30),
descripcion varchar(50),
imagen varchar(20),
precio integer
);


create table compras(Id integer auto_increment primary key,
numeroventa integer,
nombre varchar(50),
imagen varchar(20),
precio varchar(10),
cantidad varchar(10),
subtotal varchar(10)
);

create table usuarios(Id integer auto_increment primary key,
Nombre varchar(30),
Apellido varchar(30),
Usuario varchar(20),
Password varchar(20),
Imagen varchar(20),
Nivel varchar(15)
);