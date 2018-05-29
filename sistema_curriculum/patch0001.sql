/**********************I-PATCH-YAC-CURR-0-08-05-2018**********************/

--------------- SQL ---------------

CREATE SCHEMA curr AUTHORIZATION postgres;


--------------- SQL ---------------

CREATE TABLE curr.institucion_educativa (
  id_institucion_educativa SERIAL NOT NULL,
  instituccion_educativa VARCHAR NOT NULL,
  direccion VARCHAR,
  telefono VARCHAR(10),
  PRIMARY KEY(id_institucion_educativa)
) 
WITH (oids = false);

ALTER TABLE curr.instuccion_educativa
  ALTER COLUMN id_institucion_educativa SET STATISTICS 0;

--------------- SQL ---------------

CREATE TABLE curr.dato_personal (
  id_dato_personal SERIAL NOT NULL,
  nombres VARCHAR NOT NULL,
  apellido_paterno VARCHAR NOT NULL,
  apellido_materno VARCHAR NOT NULL,
  ci INTEGER NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  fecha_registro TIMESTAMP WITHOUT TIME ZONE DEFAULT now() NOT NULL,
  PRIMARY KEY(id_dato_personal)
) 
WITH (oids = false);



--------------- SQL ---------------

CREATE TABLE curr.estudio (
  fecha_graduacion DATE,
  nivel_academico VARCHAR,
  fecha_inicio DATE,
  fecha_fin DATE,
  mencion VARCHAR,
  id_dato_personal INTEGER,
  id_institucion_educativa INTEGER
) 
WITH (oids = false);


--------------- SQL ---------------

CREATE TABLE curr.experiencia (
  fecha_ingreso DATE NOT NULL,
  cargo_laboral VARCHAR(30) NOT NULL,
  fecha_fin DATE NOT NULL, 
  id_dato_personal INTEGER,
  id_empresa INTEGER
) 

WITH (oids = false);

--------------- SQL ---------------

CREATE TABLE curr.empresa (
   id_empresa SERIAL NOT NULL,
   nombre_empresa VARCHAR NOT NULL,
   detalle_empresa VARCHAR NOT NULL,
   PRIMARY KEY(id_empresa)
)
   
WITH (oids = false);   

--------------- SQL ---------------

CREATE TABLE curr.certificado (
   id_certificado SERIAL NOT NULL,
   fecha_emision DATE,
   id_dato_personal INTEGER,
   PRIMARY KEY(id_certificacion)
)

WITH (oids = false); 

--------------- SQL ---------------

CREATE TABLE curr.tipo_certificado (
   id_certificado INTERGER,
   tipo_certificado VARCHAR NOT NULL
)


WITH (oids = false); 


/**********************F-PATCH-YAC-CURR-0-08-05-2018**********************/
