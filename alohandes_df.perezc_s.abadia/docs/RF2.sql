--oferta proveedor hotel
INSERT INTO HABITACION
(ID, CAPACIDAD,COMPARTIDACONCUANTOS,DIASUSADA,NUMEROESTRELLAS,NUMEROHAB,PRECIO,SERVICIOS,TAMANO,CATEGORIA,IDDOMINIO,TIPOREGDOMINIO)
VALUES
(211, 3, 0, 0, 5,201, 80000, 'LUZ, AGUA, GAS', '50X50', 'SUITE',111, 'HOTEL');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA, FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(221, 10, 1, 1, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAHABITACION
(IDOFERTA, IDHABITACION)
VALUES
(221, 211);

COMMIT;

--oferta proveedor hostal
INSERT INTO HABITACION
(ID, CAPACIDAD,COMPARTIDACONCUANTOS,DIASUSADA,NUMEROESTRELLAS,NUMEROHAB,PRECIO,SERVICIOS,TAMANO,CATEGORIA,IDDOMINIO,TIPOREGDOMINIO)
VALUES
(231, 5, 4, 0, 1,101, 30000, 'ninguno', '10 X 10', 'STANDAR', 121, 'HOSTAL');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA,FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(232, 0, 0, 0, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAHABITACION
(IDOFERTA, IDHABITACION)
VALUES
(232, 231);

COMMIT;

--oferta proveedor EMPRESA
INSERT INTO HABITACION
(ID, CAPACIDAD,COMPARTIDACONCUANTOS,DIASUSADA,NUMEROESTRELLAS,NUMEROHAB,PRECIO,SERVICIOS,TAMANO,CATEGORIA,IDDOMINIO,TIPOREGDOMINIO)
VALUES
(241, 1, 0, 0, 1,101, 40000, 'LUZ, AGUA', '20 X 10', 'DOBLE', 131, 'EMPRESA');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA,FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(242, 0, 3,2, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAHABITACION
(IDOFERTA, IDHABITACION)
VALUES
(242, 241);

COMMIT;


--oferta proveedor PERSONANATURAL
INSERT INTO HABITACION
(ID, CAPACIDAD,COMPARTIDACONCUANTOS,DIASUSADA,NUMEROESTRELLAS,NUMEROHAB,PRECIO,SERVICIOS,TAMANO,CATEGORIA,IDDOMINIO,TIPOREGDOMINIO)
VALUES
(251, 1, 0, 0, 1,101, 40000, 'LUZ, AGUA', '20 X 10', 'DOBLE', 144, 'CC');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA,FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(252, 0, 5,3, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAHABITACION
(IDOFERTA, IDHABITACION)
VALUES
(252, 251);

COMMIT;


--oferta proveedor PROPIETARIO
INSERT INTO APARTAMENTO
(NUMEROHABITACIONES, SERVICIOS,UBICACION,IDPROPIETARIO,TIPOIDENTIFICACION)
VALUES
(2, 'LUZ, AGUA', 'CRA 3 # 21-46 TORRE 2 APTO 2903', 141, 'CC');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA,FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(262, 0, 0,0, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAAPARTAMENTO
(IDOFERTA, IDAPARTAMENTO)
VALUES
(262, 'CRA 3 # 21-46 TORRE 2 APTO 2903');

COMMIT;

--oferta proveedor VECINOS
INSERT INTO VIVIENDA
(CARACTERISTICASSEGURO, MENAJE,NUMERODIASUSADA,NUMEROHABITACIONES,SERVICIOS,UBICACION,IDVECINO,TIPOIDENTIFICACION)
VALUES
('SEGURO CONTRA INCENDIOS', '2 CAMAS,2 ARMARIOS', 3, 2, 'LUZ, AGUA','CRA 4 # 21-46', 151, 'CC');

INSERT INTO OFERTA
(ID, DESCUENTO,DIASACTIVA,DIASUSADA,FECHAFIN,FECHAINICIO,TIEMPOCONTRATO)
VALUES
(272, 0, 6,3, '20/03/2020', '19/03/2020', 'UNA SEMANA');

INSERT INTO OFERTAVIVIENDA
(IDOFERTA, IDVIVIENDA)
VALUES
(272, 'CRA 4 # 21-46');

COMMIT;