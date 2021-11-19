-- CREATE DB
CREATE DATABASE IF6201_EX2_B97452
GO

USE IF6201_EX2_B97452
GO

-- CREACI�N DE ESQUEMAS -> FUENTES DE INFORMACI�N Y ALMACEND DE DATOS

CREATE SCHEMA PELICULAS
GO

CREATE SCHEMA DW
GO

-- CREACI�N DE TABLAS -> FUENTES DE INFORMACI�N 

CREATE TABLE PELICULAS.tb_CATEGORIA
(
	 ID INT PRIMARY KEY
	,NOMBRE VARCHAR(50) NOT NULL
	,DETALLES VARCHAR(200) NOT NULL
)
GO

CREATE TABLE PELICULAS.tb_PELICULAS
(	
     ID INT PRIMARY KEY
	,CODIGO VARCHAR(100) NOT NULL
	,NOMBRE VARCHAR(75) NOT NULL
	,DURACION VARCHAR(50) NOT NULL
	,IDIOMA VARCHAR(50) NOT NULL
	,LANZAMIENTO DATE NOT NULL
	,SINOPSIS VARCHAR(200) NULL
	,CANTIDAD_ACTUAL INT NOT NULL
	,PRECIO varchar(15) NOT NULL
	,ID_CATEGORIA INT
	,CONSTRAINT FK_ID_CATEGORIA FOREIGN KEY (ID_CATEGORIA) REFERENCES PELICULAS.tb_CATEGORIA(ID)
)
GO

CREATE TABLE PELICULAS.tb_CLIENTE
(
	  ID INT IDENTITY(1,1) PRIMARY KEY
	 ,CEDULA VARCHAR(50) NOT NULL
	 ,NOMBRE VARCHAR(50) NOT NULL
	 ,APELLIDO VARCHAR(50) NOT NULL
	 ,CORREO VARCHAR(50) NOT NULL
	 ,NUMERO_TELEFONO VARCHAR(50) NOT NULL
	 ,DIRECCION VARCHAR(100) NOT NULL
)
GO

CREATE TABLE PELICULAS.tb_VENTAS
(
	 ID INT IDENTITY(1,1) PRIMARY KEY
	,ID_PELICULA INT NOT NULL
	,ID_CLIENTE INT NOT NULL
	,CANTIDAD INT NOT NULL
	,TOTAL VARCHAR(50) NOT NULL
	,FECHA DATE NOT NULL
	,CONSTRAINT FK_ID_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES PELICULAS.tb_PELICULAS(ID)
	,CONSTRAINT FK_ID_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES PELICULAS.tb_CLIENTE(ID)
)
GO