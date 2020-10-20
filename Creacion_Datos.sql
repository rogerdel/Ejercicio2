create table identificador(
	ci integer primary key,
	nombrecom varchar(50),
	fechanac date,
	lugarrsidencia integer
);

create table usuario(
	ci integer primary key,
	clave varchar(50)
);

create table login(
 	ci integer primary key,
 	fotoSecion varchar(255),
 	color varchar(15)
 );

insert into identificador values
(1, "Clark Kent Allen", "1999-01-20", 2),
(2, "Bruce Wayne Banner", "1999-01-20", 2),
(3, "Dayana Prince Gadot", "1999-01-20", 1),
(4, "Natasha Romanoff Jhoanson", "1999-01-20", 6);

insert into usuario values
(1, "Contraseña1"),
(2, "Contraseña2"),
(3, "Contraseña3"),
(4, "Contraseña4");

insert into login values
(1,"user1.jpg","#eb4034"),
(2,"user2.jpg","#4287f5"),
(3,"user3.jpg","#32a852"),
(4,"user4.jpg","#ff8000");