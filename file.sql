CREATE DATABASE db_university_schema;
USE db_university_schema;


CREATE TABLE departments (
    id_departments INT AUTO_INCREMENT,
    nome VARCHAR(255),
    luogo VARCHAR(50),
    facoltà VARCHAR(255),
    student VARCHAR(255),
    PRIMARY KEY (id);
    FOREIGN KEY (student) REFERENCES students(nome)
);

CREATE TABLE degrees (
    id_degrees INT AUTO_INCREMENT,
    facoltà VARCHAR(255),
    categoria VARCHAR(50),
    voto SMALL_INT,
    PRIMARY KEY (id);
);

CREATE TABLE students (
    id_students INT AUTO_INCREMENT,
    nome VARCHAR(255),
    matricola VARCHAR(50),
    department VARCHAR(255),
    età INT
    PRIMARY KEY (id);
    FOREIGN KEY (department) REFERENCES departments(nome)
);


DELETE FROM students WHERE id_students=1;

UPDATE degrees
SET facoltà = 'economia'
WHERE id_degrees = 1;




