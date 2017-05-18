# Problem Statement :

>Se pretende gestionar un proceso educativo con las siguientes caracteristicas:Controlar la informacion del personal, profesores, estudiantes, y centros educativos.Del personal, los profesores y los estudiantes queremos almacenar informacion.sobre su Nombre completo, direccion y telefono. Ademas de los profesores y del personal almacenaremos su salario y su formacion. De los profesores queremos saber su especialidad. De los estduaitens queremos saber en que curso está matriculado. Del personal queremos almacenar su puesto. De los centros queremos almacenar su nombre, direccion, localidad, y telefono. La tabla curso contiene informacion sobre: Nombre, profesor que la imparte. La tabla de las notas contiene informacion sobre alumno, curso y nota.

Sobre lo expuesto especificar las sentencias SQL siguientes    
>1. Creacion de la base de datos con las restricciones que considere oportunas 
>2. Añadir la tabla de los cursos que contendra el curso y el centro donde se impartira. 
>3. Añadir  a la tabla de profesores un campo que haga referencia al curso que imparte cada profesor. Añadir las restricciones que considere oportunas. 
>4. Añadir una tabla nueva que contendra la relacion entre profesores y cursos sabiendo que un curso lo imparte nu profesor y nu profesor puede impartir varios cursos y ademas los cursos puede llamarse igual.
After reading the previous problem statement I just identify the posible tables and his atributes as follows:

# Tables :
### Estudiante Table 
| Nombre 1 | Nombre 2 | Apellido 1 | Apellido 2 | Direccion | Telefono | Curso Matriculado |
|----------|----------|------------|------------|-----------|----------|-------------------|
|          |          |            |            |           |          |                   |
|          |          |            |            |           |          |                   |

### Profesor  Table

| Nombre 1 | Nombre 2 | Apellido 1 | Apellido 2 | Direccion | Telefono | Especialidad | Salario | Formacion |
|----------|----------|------------|------------|-----------|----------|--------------|---------|-----------|
|          |          |            |            |           |          |              |         |           |
|          |          |            |            |           |          |              |         |           |

### Personal Table 

| Nombre 1 | Nombre 2 | Apellido 1 | Apellido 2 | Direccion | Telefono | Puesto | Salario | Formacion |
|----------|----------|------------|------------|-----------|----------|--------|---------|-----------|
|          |          |            |            |           |          |        |         |           |
|          |          |            |            |           |          |        |         |           |

### Centro Educativo Table 
| Nombre  | Direccion | Localidad | Telefono |
|---------|-----------|-----------|----------|
|         |           |           |          |
|         |           |           |          |

### Notas Table
| Alumno | Curso | Nota |
|--------|-------|------|
|        |       |      |
|        |       |      |

### Curso:
| Nombre | Profesor |
|--------|----------|
|        |          |
|        |          |

From the previous tables and his atributes for the Personal,Estudiante, and profesor tables we just add a new 
atribute call identificacion, this will identify each person individually based on cedula,ti,..etc. 

```sql
#hfjimenez@utp.edu.co 
SHOW DATABASES ;
CREATE DATABASE Educacion;
USE Educacion;
CREATE TABLE estudiante(
	id_est INTEGER UNSIGNED AUTO_INCREMENT,
	cc_id INTEGER UNSIGNED  PRIMARY KEY AUTO_INCREMENT,
	nombre1 VARCHAR(20) NOT NULL,
	nombre2 VARCHAR(20) NOT NULL,
	apellido1 VARCHAR(20) NOT NULL,
	apellido2 VARCHAR(20) NOT NULL,
	direccion TEXT,
	tel_cel TEXT,	
	curso_matriculado TEXT NOT NULL DEFAULT 0	
);

CREATE TABLE profesor(
	id_prof INTEGER UNSIGNED AUTO_INCREMENT,
	cc_id INTEGER UNSIGNED  PRIMARY KEY AUTO_INCREMENT,		#Primary Key !
	nombre1 VARCHAR(20) NOT NULL,
	nombre2 VARCHAR(20) NOT NULL,
	apellido1 VARCHAR(20) NOT NULL,
	apellido2 VARCHAR(20) NOT NULL,
	direccion TEXT,
	tel_cel TEXT,	
	especialidad TEXT,	
	salario DECIMAL(5,2),
	formacion VARCHAR(30),
);

CREATE TABLE personal(
	id_prof INTEGER UNSIGNED AUTO_INCREMENT,
	cc_id INTEGER UNSIGNED  PRIMARY KEY AUTO_INCREMENT,		#Primary Key !
	nombre1 VARCHAR(20) NOT NULL,
	nombre2 VARCHAR(20) NOT NULL,
	apellido1 VARCHAR(20) NOT NULL,
	apellido2 VARCHAR(20) NOT NULL,
	direccion TEXT,
	tel_cel TEXT,	
	puesto TEXT,	
	salario DECIMAL(5,2),
	formacion VARCHAR(30),
); 

CREATE TABLE curso(
	nombrecurso VARCHAR(20) NOT NULL,
	curso_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	#How do you express relationships ? in this way, search on internet,its necesary to add the 
	#the profesor 
);

CREATE TABLE nota(
	id_nota INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nota INTEGER UNSIGNED NOT NULL,
	#How do you express relationships ? in this way, search on internet.Alumno Relationship.
);

```sql


Inserting test data to the database :
```sql
INSERT INTO estudiante(cc_id,nombre1,nombre2,apellido1,apellido2,direccion,tel_cel) VALUES		
('1088993434','Richard','Andres','Martinez','Pelaez','Cs 30','3120000000'),
('1116331245','Leiver','Andres','Martinez','Saenz','Cs 28','312076344000'),
('10119456494','Robert','Camilo','Carmina','Sanchez','Cs 50','3120000000');

```

