USE [LAB_BASE_DATOS]

/****** AREA PARA INSERCION DE DATOS ******/

Select * from CLIENTE
INSERT INTO CLIENTE values ( newid(), 'Howard Abraham', 'Jasso Arce', '8117809832', 'Embarcadero 3340 Riberas del río', 'akajazzo18@yopmail.com', newid())
INSERT INTO CLIENTE values ( newid(), 'Daniel', 'Monteverde Treviño', '8126267362', 'Union 453 Hacienda los Morales', 'eldanitrevi@yopmail.com', newid())
INSERT INTO CLIENTE values ( newid(), 'Marco Antonio', 'Almaguer Cavazos', '8152636763', 'Las villitas', 'maqrquito@yopmail.com', newid())
INSERT INTO CLIENTE values ( newid(), 'Axel Bryan', 'Flores Beltrán', '8162635238', 'Camaraca 634 El Juvenal', 'elbrayan@yopmail.com', newid())
go

Select * from PROVEEDOR
INSERT INTO PROVEEDOR VALUES( newid(), 'Unilever', '8215684436', '26 de Marzo 1055 Esperanza', 'Paquetería DHL', 0, 'entregasesp@unilcomp.com', newid())
INSERT INTO PROVEEDOR VALUES( newid(), 'P&G', '8134720648', 'Ricardo Margaen S/N Galerìas', 'Camión personal', 0, 'pedidospyg@networks.com', newid())
INSERT INTO PROVEEDOR VALUES( newid(), 'Nestlé', '4463729501', '1rst Avenue besides Central Park', 'Envío FedEx', 1, 'allfamily@nestle.com', newid())

/****** ACCIDENTALMENTE SE LE DIO COMO 3 VECES QUE SE EJECUTARA EL MISMO COMANDO DE INSERTAR VALORES, POR ESO SE ELIMINARON ******/
DELETE FROM PROVEEDOR WHERE [ID_PROVEEDOR] = '7A395F5C-2647-45D3-8C5C-9BAE3F0D5644'
DELETE FROM PROVEEDOR WHERE [ID_PROVEEDOR] = 'E0BCBAC1-9198-4209-B705-6011FE8DE821' OR [ID_PROVEEDOR] = '473A9F0C-D9D7-4255-AC1A-FA12A422D6EB' OR [ID_PROVEEDOR] = '5BC6DAA2-076B-49C0-852B-2F5796F38D9D'

Select * from PRODUCTO
INSERT INTO PRODUCTO VALUES (NEWID(), 'Paracetamol', 'Alivia dolores de cabeza', 30, '5A05FF19-6D12-487F-8771-6B84884E4A52')
INSERT INTO PRODUCTO VALUES (NEWID(), 'Ibuprofeno', 'Analgésico para dolor muscula', 24, '5A05FF19-6D12-487F-8771-6B84884E4A52')
INSERT INTO PRODUCTO VALUES (NEWID(), 'Leche NIDO', 'Leche en polvo para niños', 25, '7C8F5047-8DF4-4323-9466-07AB277E3578')
INSERT INTO PRODUCTO VALUES (NEWID(), 'Ambroxol', 'Relaja el ardor de garganta', 35, '075D5754-9284-4A00-BB8F-8E212DDAE385')
/****** AREA PARA ACTUALIZACION DE DATOS ******/

Select * FROM CLIENTE
UPDATE CLIENTE SET [MUNICIPIO] = 'Guadalupe' WHERE APELLIDOS = 'Jasso Arce' OR APELLIDOS = 'Monteverde Treviño'
UPDATE CLIENTE SET [MUNICIPIO] = 'Santiago' WHERE APELLIDOS = 'Almaguer Cavazos'
UPDATE PRODUCTO SET [PRECIO] = 70 WHERE ID_DETALLE_COMPRA = '7C8F5047-8DF4-4323-9466-07AB277E3578'
UPDATE PRODUCTO SET [PRECIO] = 45 WHERE ID_DETALLE_COMPRA = '075D5754-9284-4A00-BB8F-8E212DDAE385' 

/****** AREA PARA BORRADO DE DATOS ******/
DELETE FROM [PRODUCTO] WHERE [NOMBRE_PRODUCTO] = 'Paracetamol'
DELETE FROM [CLIENTE] WHERE [Municipio] is NULL
DELETE FROM [PROVEEDOR] WHERE [IMPORTACION] = 1
DELETE FROM [PRODUCTO] WHERE [NOMBRE_PRODUCTO] = 'Ibuprofeno'
