INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(111, 'HOTEL', 'SHERATON', 'DIURNO', 'CARRERA 4 #23-04');

INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(121, 'HOSTAL', 'POSADA MAR', 'TODOS', 'CARRERA 5 #23-04');

INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(131, 'EMPRESA', 'VIVE ANDES', 'NOCTURNO', 'CARRERA 6 #23-04');

INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('ALEJANDRO CORTEZ', 141, 'CC', 'EMPLEADO');

INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('MATIAS BERNAL', 151, 'CC');

COMMIT;

-- PRUEBAS---------------------------------

-- 1A.-------------------

-- TABLA DOMNINIO
-- CON PK YA USADA
INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(111, 'HOTEL', 'ALOFT', 'TODOS', 'Calle 26 # 92-32');

-- CON PK NUEVA
INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(161, 'HOTEL', 'ALOFT', 'TODOS', 'Calle 26 # 92-32');


-- TABLA PROPIETARIO
-- CON PK YA USADA
INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('ALBERTO CORTEZ', 141, 'CC', 'ESTUDIANTE');

-- CON PK NUEVA
INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('ALBERTO CORTEZ', 171, 'CC', 'ESTUDIANTE');

-- TABLA VECINOS
-- CON PK YA USADA
INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('MATIAS BERNAL', 151, 'CC');

-- CON PK YA NUEVA
INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('MATIAS BERNAL', 181, 'CC');

-- 1B.-------------------

-- TABLA DOMNINIO
-- CON PK YA USADA
INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(161, 'HOTEL', 'MARRIOTT', 'TODOS', 'Calle 63 # 8-60');

-- TABLA PROPIETARIO
-- CON PK YA USADA
INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('ALEJANDRO PEDRAZA', 141, 'CC', 'ESTUDIANTE');

-- TABLA VECINOS
-- CON PK YA USADA
INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('MARIO MARTINEZ', 151, 'CC');


-- 2A/2B/2C-------------------

-- TABLA DOMNINIO
-- NO TIENE FKs

-- TABLA PROPIETARIO
-- NO TIENE FKs

-- TABLA VECINOS
-- NO TIENE FKs


-- 2A-------------------

-- TABLA DOMNINIO
-- TUPLA QUE CUMPLE EL CHECK
INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(191, 'HOTEL', 'HILTON', 'DIURNO', 'CARRERA 37 #24-29');
-- TUPLA QUE INCUMPLE EL CHECK
INSERT INTO DOMINIO
(REGISTRO, TIPOREGISTRO, NOMBRE, HORARIO, UBICACION)
VALUES
(192, 'BAR', 'HILTON', 'DIURNO', 'CARRERA 37 #24-29');

-- TABLA PROPIETARIO
-- TUPLA QUE INCUMPLE EL CHECK
INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('ALBERTO CORTEZ', 194, 'CC', 'NINGUNO');

-- TUPLA QUE CUMPLE EL CHECK
INSERT INTO PROPIETARIO
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION, TIPOPROPIETARIO)
VALUES
('NICOLAS GARCIA', 194, 'CC', 'EGRESADO');

-- TABLA VECINOS
-- QUE INCUMPLE EL CHECK
INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('ALEX TURNER', 193, 'NINGUNO');

-- QUE CUMPLE EL CHECK
INSERT INTO VECINOS
(NOMBRE, NUMEROIDENTIFICACION, TIPOIDENTIFICACION)
VALUES
('ALEX TURNER', 193, 'PA');