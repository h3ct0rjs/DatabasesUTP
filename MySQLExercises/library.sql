#sample exercise, using mysql dbms 
SHOW DATABASES ;
CREATE DATABASE platzi;
CREATE TABLE books(
	book_id INTEGER UNSIGNED  PRIMARY KEY AUTO_INCREMENT,
	publisher_id INTEGER UNSIGNED NOT NULL,
	title VARCHAR(60) NOT NULL,
	author VARCHAR(100) NOT NULL,
	description TEXT,	
	price DECIMAL(5,2),
	copies INT NOT NULL DEFAULT 0
);

CREATE TABLE publishers(
	publisher_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(100) NOT NULL,
	country VARCHAR(20)
);

CREATE TABLE users(
	user_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL, 
	email VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE actions(
	action_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	book_id INTEGER UNSIGNED NOT NULL,
	user_id INTEGER UNSIGNED NOT NULL,
	action_type ENUM('venta', 'prestamo','devolucion') NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO publishers(name,country)				#id 1
	VALUES('Platzi','USA');

INSERT INTO publishers(publisher_id,name,country)	#id asignado 10
	VALUES(10,'Santillana','CO');

INSERT INTO publishers(name,country)				#id asignado 11
	VALUES('Omega','MX');

select count(*) from publishers;					#cardinalidad del conjunto publishers

select count(publisher_id) from publishers;			#cuenta solo la tabla publisher_id 

INSERT INTO users(name,email) VALUES				#My sampledata.	13 tuples.
	('Richard','ricardoq@hotmail.com'),
	('Laura','laura@hotmail.co'),
	('Hector','hectorj@gmail.com'),
	('Andres','andres@utp.edu.co'),
	('Carlos Andres','c4@gmail.com'),
	('Benjurt','ben10@gmail.com'),
	('Andrea','andrea@hotmai.com'),
	('Sara','sarab@utp.edu.co'),
	('Camila','casca@g.com'),
	('Luisa','llatina@google.com'),
	('Juliana','juliana@ymx.com'),
	('Carolina','caroj@carolina.com');

select * from users;								#show all data from users table
truncate publishers									#delete all the data from publishers but save the table definition
delete * from publishers							#delete all the data, keep the metadata for autoincrements

INSERT INTO publishers(publisher_id,name,country) VALUES				#My sampledata.	 5 tuples.
	(1,'Oreilly','USA'),
	(2,'Santillana','Mexico'),
	(3,'Mit Edu','USA'),
	(4,'UTP','Colombia'),
	(6,'Dotbrain','USA');

drop table books 									#elimina  todo la tabla libros
use databasename									#Set database name to work with as default.
show tables ;										#show you all the tables 

INSERT INTO books(publisher_id,title,author,description,price,copies) VALUES
	(1,'Produccion de Marihuana','Jorge Rojas','Marihuana',10.50,4),
	(2,'Caminando en el Valle','Allan West','Tetrico',10.58,3),
	(3,'DevOps para Noobs','LL Fraz','Informatica',10.66,4),
	(4,'Linux una Nueva Experiencia','Hector Jimenez S','Informatica',10.55,4),
	(5,'Todo sobre el Kernel','Almen Chase','Informatica',10.70,4),
	(6,'Hacking en Linux','Gp Morgan','Informatica',10.50,10),
	(7,'Unix Concept Tools','Dennis Richie','Informatica',10.30,11),
	(8,'Mac Users Everything that you need to know','Tim Berners X','Informatica',10.80,4),
	(9,'Minix a History','Hector Jimenez S','Informatica',10.90,4);

select * from books where book_id=9	;				#specific book.	
select * from books where book_id=9 \G 				#cards look.

#An interesting reading in 