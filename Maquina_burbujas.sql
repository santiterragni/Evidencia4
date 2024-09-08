CREATE DATABASE Maquina_burbujas

USE Maquina_burbujas

CREATE TABLE Maquina
(
	id_maquina int NOT NULL,
	Altura int NOT NULL,
	Ancho int NOT NULL,
	Largo int NOT NULL,
	Capacidad int NOT NULL,
CONSTRAINT id_maquina PRIMARY KEY (id_maquina)
);

CREATE TABLE Produccion
(
	Id_produccion int NOT NULL,
	Fecha date NOT NULL,
	Cant_producida int NOT NULL, 
    id_maquina int NOT NULL,
CONSTRAINT id_produccion PRIMARY KEY (id_produccion),
CONSTRAINT F_id_maquina FOREIGN KEY (id_maquina) REFERENCES Maquina (id_maquina)
);

INSERT Maquina (id_maquina, altura, ancho, largo, capacidad) VALUES 
('1', '13','15','29','300'),
('2','15','18','32','500'),
('3','17','21','35','700'),
('4','19','24','38','900'),
('5','21','27','41','1100');

INSERT Produccion (id_produccion, fecha, Cant_producida, id_maquina) VALUES
('1','2024-11-04','6000','1'),
('2','2020-12-23','3000','2'),
('3','2024-03-04','5550','3'),
('4','2024-06-22','7650','4'),
('5','1997-05-30','8765','5');

SELECT id_maquina, capacidad
FROM Maquina;

SELECT id_maquina, fecha 
FROM Produccion;

SELECT id_maquina, capacidad, capacidad/2
FROM Maquina;

SELECT id_produccion, cant_producida, cant_producida*2 as Doble_produccion
FROM Produccion;

SELECT * FROM Produccion
WHERE cant_producida >= 7500