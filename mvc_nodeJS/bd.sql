DROP DATABASE IF EXISTS clases;
CREATE DATABASE clases CHARACTER SET utf8mb4;
USE clases;


CREATE TABLE materia ( 
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL
);


CREATE TABLE alumno (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL, 
    promedio DOUBLE NOT NULL, 
    id_materia INT UNSIGNED NOT NULL, 
    FOREIGN KEY (id_materia) REFERENCES materia(id)
);


INSERT INTO materia VALUES(1, 'Redes');
INSERT INTO materia VALUES(2,'Sistemas Operativos');
INSERT INTO materia VALUES(3,'Programacion');
INSERT INTO materia VALUES(4,'Bases de datos');
INSERT INTO materia VALUES(5,'Tecnologias web');
INSERT INTO materia VALUES(6,'Estructuras de datos');
INSERT INTO materia VALUES(7,'Integracion de soluciones');
INSERT INTO materia VALUES(8,'Organizacion de computadoras');
INSERT INTO materia VALUES(9,'Matematicas discretas');

INSERT INTO alumno VALUES(1, 'Integracion de soluciones',9.2,5);
INSERT INTO alumno VALUES(2, 'Miguel Angel Torres Ruiz', 8.5, 6);
INSERT INTO alumno VALUES(3, 'Carolina Herrera Gutierrez', 9.8,4);
INSERT INTO alumno VALUES(4, 'Laura Gonzalez Sanchez', 8.0, 7);
INSERT INTO alumno VALUES(5, 'Ricardo Fernandez Moreno',7.8,6);
INSERT INTO alumno VALUES(6, 'Ana Maria Sanchez Martin',9.5,1);
INSERT INTO alumno VALUES(8, 'Juan Carlos Navarro Jimenez', 6.9, 1);
INSERT INTO alumno VALUES(9, 'Beatriz Molina Castro',8.3,2);
INSERT INTO alumno VALUES(10, 'Fernando Gomez Velasco',7.6,2);
INSERT INTO alumno VALUES(11, 'Jose Luis Rodriguez Perez', 7.4, 3);
INSERT INTO alumno VALUES(12, 'Claudia Jimenez Rivas', 9.1, 3);

