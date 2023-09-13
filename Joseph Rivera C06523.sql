--Creaci�n de tablas. Factura
create table Factura(  --Utilizo la funci�n create para hacer la table, dentro de ellas creo las columnas 
--Llave Primaria 
N0factura int PRIMARY KEY, --Idendinfico la llave primaria. En cada una de ellas coloco el tipo de variable que se requiere
Categoria varchar (20),  --caracter, agrego la cantidad m�xima de caracteres aceptados. 
Unidades int, --n�merico
Precio decimal (10,2), --numerico decimal, me acepta cantidades de hasta 10 digitos
Fecha date, --fecha 
Pordescuento int,
Pordimpusto int
);

-- registros para factura 

exec sp_help Factura;--Reviso que tipo de datos puedo ingresar

insert into Factura values(0001,'Electronica',  --Despu�s de crear las tablas inserto valores a ella. uso la funci�n insert dentro de la
10, 6800.00, '2023-08-09', 10,13);    --tabla que quiero, se ordenan de acuerdo al orden de las columnas.

insert into Factura values(0002,'Fisica',
3, 8900.00, '2023-07-12', 00,13);

insert into Factura values(0003,'Electronica',
5, 12700.00, '2023-06-29', 02,13);

insert into Factura values(0004,'Electronica',
6, 24500.00, '2023-07-20', 00,13);

insert into Factura values(0005,'Fisica',
4, 5250.00, '2023-08-09', 00,13);

insert into Factura values(0006,'Fisica',
12, 18950.00, '2023-08-02', 01,13);

insert into Factura values(0007,'Electronica',
2, 6830.00, '2023-04-12', 00,13);

insert into Factura values(0008,'Electronica',
3, 2350.00, '2023-06-14', 03,13);

insert into Factura values(0009,'Fisica',
13, 34500, '2023-08-09', 11,13);

insert into Factura values(0010,'Fisica',
5, 5800.00, '2023-08-10', 10,13);

insert into Factura values(0011,'Electronica',
1, 1300.00, '2023-08-09', 10,13);

insert into Factura values(0012,'Electronica',
4, 2340.00, '2023-06-10', 00,13);

insert into Factura values(0013,'Fisica',
3, 2200.00, '2023-08-12', 00,13);

insert into Factura values(0014,'Fisica',
5, 13450.00, '2023-09-01', 12,13);

insert into Factura values(0015,'Electronica',
1, 1300.00, '2023-08-09', 00,13);

select * from Factura; --selecciono toda la tabla para ver si los registros est�n correctos.

create table Cliente(  --El proceso de arriba se repite para cada una de las tablas 
--Llave Primaria 
Cedula numeric(14) PRIMARY KEY IDENTITY,
Nombrecliente varchar (45), 
Correcliente varchar (45),
Telefonocliente numeric (14),
Direccion varchar(55),
Tipcedula varchar(10)
);

--Registros para clientes 

insert into Cliente values(203440984,'Sara Garc�a', 'sara1234@gamil.com', 
87879090, '300m norte super Maria', 'F�sica')

insert into Cliente values(102459065,'Maria Castro', 'castrom@gamil.com', 
89657890, '800 sur Hospita Mora', 'F�sica')

insert into Cliente values(1020343900,'H&J', 'H&j@gamil.com', 
25607021, '200m parque Mora', 'Juridica')

insert into Cliente values(114560912,'Marta Ruiz', 'mruiz@gamil.com', 
87889190, '100m escuela Paz', 'F�sica')

insert into Cliente values(147800981,'Lorena Monge', 'lorena12@gamil.com', 
60437890, '50m barberia Fredo', 'F�sica')

insert into Cliente values(8912268903,'M&N', 'm&nferreteria@gamil.com', 
25608965, '75 m sur super Carlos', 'Juridica')

insert into Cliente values(309891234,'Maria Reina', 'reina3456@gamil.com', 
89906578, '45 m este parque feliz', 'F�sica')

insert into Cliente values(309450125,'Manuel Lopez', 'lopez34@gamil.com', 
78645690, '30m pulperia flores', 'F�sica')

insert into Cliente values(107890256,'Alex Mora', 'moralex@gamil.com', 
83459087, '900 escuela Sur', 'F�sica')

insert into Cliente values(704583478,'Rafael Corrales', 'corralesrafa@gamil.com', 
88836754, '24m apartamentos este', 'F�sica')

insert into Cliente values(19008764534,'Flores Girasol', 'gflores@gamil.com', 
25118970, 'torre fallas', 'Juridica')

insert into Cliente values(509567812,'Estela Porras', 'porrase@gamil.com', 
78652345, '80m norte torre fallas','F�sica')

insert into Cliente values(114590223,'Flor Lindo', 'lindof@gamil.com', 
86701256, '1km cafeteria cafe', 'F�sica')

insert into Cliente values(203440986,'Sara Gomez', 'sarag12@gamil.com', 
87897567, 'hacienda hermanas', 'F�sica')

insert into Cliente values(204560790,'Elizabeth Rojas', 'rojaseliz@gamil.com', 
75693456, 'apartamentos castro', 'F�sica')

select * from Cliente

create table Producto(
--Llave Primaria 
Iduniversal int Primary Key,
Nombreproduc varchar(30),
Precioproduc decimal (10,2),
Colorprod varchar(20),
Tamanoprod varchar(10)
);

--Registros de producto

insert into Producto values(456732, 'camisa hombre', 7500.00, 'roja',
'S')

insert into Producto values(899000, 'medias ni�o', 700.00, 'azul',
'12')

insert into Producto values(899100, 'medias adulto', 9200.00, 'negras',
'40')

insert into Producto values(123590, 'jeans hombre', 25000.00, 'azul',
'32')

insert into Producto values(123591, 'jeans mujer', 22000.00, 'azul',
'M')

insert into Producto values(678090, 'camsa mujer', 2000.00, 'blanca',
'S')

insert into Producto values(456733, 'camisa larga hombre', 6700.00, 'blanca',
'L')

insert into Producto values(456734, 'camiseta hombre', 3200.00, 'blanca',
'XS')

insert into Producto values(569012, 'camiseta ni�o', 1300.00, 'blanca',
'4 meses')

insert into Producto values(569013, 'camiseta ni�a', 1300.00, 'blanca',
'5 meses')

insert into Producto values(123490, 'aretes', 450.00, 'dorados',
'1')

insert into Producto values(123491, 'aretes', 650.00, 'plateados',
'3')

insert into Producto values(456090, 'gorra', 12450.00, 'verde',
'S')

insert into Producto values(456091, 'gorra', 12450.00, 'naranja',
'M')

insert into Producto values(223090, 'camisa personalizada', 8900.00, 'blanca',
'L')

select * from Producto

create table Subcategoria(
--Llave Primaria 
Idsubcategoria int Primary Key,
Tiposubcat varchar(100)
);

--Registros de Subcategoria 
INSERT INTO Subcategoria (Idsubcategoria, Tiposubcat) VALUES --forma de agregar los valores sin necesidad de estar escribiendo la misma funcion
    (001, 'Camisetas'), --varias veces
    (002, 'jeans hombre'),
    (003, 'Camisas hombre'),
    (004, 'Camisas mujer'),
    (005, 'Ropa de Ba�o'),
    (006, 'Shorts'),
    (007, 'Ropa Interior'),
    (008, 'Gorras'),
    (009, 'Accesorios'),
    (010, 'Trajes Formales'),
    (011, 'tenis para Ni�os'),
    (012, 'Beb�s'),
    (013, 'Camisetas de Dormir'),
    (014, 'Camisetas infantil'),
    (015, 'Jeans mujer');

Select * from Subcategoria

CREATE TABLE Categoria (
--Llave primaria
    Idcategoria INT PRIMARY KEY,
    Nombrecat VARCHAR(100)
);

INSERT INTO Categoria (Idcategoria, Nombrecat) VALUES(011, 'Unisex'),
    (012, 'Ropa de Invierno'),
    (013, 'Ropa Deportiva'),
    (014, 'Ropa de verano'),
    (015, 'Ropa Formal'),
    (016, 'Ropa infantil'),
    (017, 'Mezclilla'),
    (018, 'Zandalias'),
    (019, 'Tenis'),
    (020, 'Ropa escolar'),
    (021, 'Moda Urbana'),
    (022, 'Ropa para Beb�s'),
    (023, 'Ropa primavera'),
    (024, 'Zapatos'),
    (025, 'Ropa de Dormir');

Select * from Categoria

create table Proveedor(
--Llave Primaria 
Cedulaprov int Primary Key,
Nombreprov varchar(50),
Correoprov varchar(70),
Telefonoprov int,
Tipcedulaprov varchar(10)
);

INSERT INTO Proveedor VALUES(20010129, 'Fashion Distributors Inc.', 'info@fashiondistributors.com', 555-123-4567, 'Juridica');

INSERT INTO Proveedor VALUES(13029043, 'Elegant Styles Wholesale', 'sales@elegantstyleswholesale.com', 555-987-6543, 'Juridica');

INSERT INTO Proveedor VALUES(11456890, 'Trendy Threads Suppliers', 'info@trendythreads.com', 555-555-5555, 'Juridica');

INSERT INTO Proveedor VALUES(90127839, 'Chic Couture Wholesalers', 'sales@chiccouturewholesalers.com', 555-111-2222, 'Juridica');

INSERT INTO Proveedor VALUES(67893578, 'Urban Streetwear Enterprises', 'info@urbanstreetwear.com', 555-888-9999, 'Juridica');

INSERT INTO Proveedor VALUES(90123589, 'Designer Fashion Hub', 'sales@designerfashionhub.com', 555-666-7777, 'Juridica');

INSERT INTO Proveedor VALUES(19034643, 'Casual Chic Apparel Co.', 'info@casualchicapparel.com', 555-777-8888, 'Juridica');

INSERT INTO Proveedor VALUES(13578390, 'Luxury Boutique Collections', 'sales@luxuryboutiquecollections.com', 555-999-8888, 'Juridica');

INSERT INTO Proveedor VALUES(12902350, 'Sportswear Pro', 'info@sportswearpro.com', 555-444-3333, 'Juridica');

INSERT INTO Proveedor VALUES(12345891, 'Trendy Teens Fashion', 'sales@trendyteensfashion.com', 555-666-1111, 'Juridica');

INSERT INTO Proveedor VALUES(56342987, 'Boho Chic Wholesalers', 'info@bohochicwholesalers.com', 555-777-3333, 'Juridica');

INSERT INTO Proveedor VALUES(98712345, 'Denim Dreams Suppliers', 'sales@denimdreams.com', 555-555-9999, 'Juridica');

INSERT INTO Proveedor VALUES(90813563, 'Vintage Vibes Emporium', 'info@vintagevibesemporium.com', 555-888-7777, 'Fisica');

INSERT INTO Proveedor VALUES(90823456, 'Active Lifestyle Apparel', 'sales@activelifestyleapparel.com', 555-444-7777, 'Fisica');

INSERT INTO Proveedor VALUES(12469001, 'Fashion Forward Distributors', 'info@fashionforwarddistributors.com', 555-888-5555, 'Fisica');

Select * from Proveedor

create table Territorio(
--Llave Primaria 
Idterritorio int Primary Key,
Provincia varchar(60),
Canton varchar(60),
Distrito varchar(60),
);

-- Registros de Territorio 
INSERT INTO Territorio (Idterritorio, Provincia, Canton, Distrito) VALUES (1, 'San Jose', 'San Jose', 'Carmen'),
    (2, 'San Jose', 'San Jose', 'Merced'),
    (3, 'San Jose', 'Escazu', 'Escazu Centro'),
    (4, 'Alajuela', 'Alajuela', 'Alajuela Centro'),
    (5, 'Alajuela', 'Alajuela', 'San Rafael'),
    (6, 'Alajuela', 'Atenas', 'Atenas Centro'),
    (7, 'Cartago', 'Cartago', 'Cartago Centro'),
    (8, 'Cartago', 'Cartago', 'Oriental'),
    (9, 'Cartago', 'La Union', 'Tres Rios'),
    (10, 'Heredia', 'Heredia', 'Heredia Centro'),
    (11, 'Heredia', 'Heredia', 'Mercedes'),
    (12, 'Guanacaste', 'Liberia', 'Liberia Centro'),
    (13, 'Guanacaste', 'Liberia', 'Ca�as Dulces'),
    (14, 'San Jose', 'Aserri', 'Salitrillos'),
    (15, 'San Jose', 'Desamparados', 'San Miguel'),
	(16, 'Alajuela', 'Upala', 'Upala centro')
	(17, 'Alajuela', 'Guatuso', 'Katira')
    (18, 'Alajuela', 'Los Chiles', 'Cano Negro')
    (19, 'Guanacaste', 'Nicoya', 'Nicoya centro')
    (20, 'Guanacaste', 'Bagases', 'Bagases centro')
    (21, 'Puntarenas', 'Esparza', 'Esparza centro');

Select * from Territorio


CREATE TABLE dFactura (
    Iduniversal INT NOT NULL,
    N0Factura INT NOT NULL,
	Unidades INT NOT NULL,
	Precio FLOAT NOT NULL,
    CONSTRAINT FK_DETALLEPRODUCTO FOREIGN KEY (Idunivesal) REFERENCES Producto(ProductoID),
    CONSTRAINT FK_DETALLEFACTURA FOREIGN KEY (N0Factura) REFERENCES Factura(ID)
);