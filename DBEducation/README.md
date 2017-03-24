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

