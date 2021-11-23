
/* ----------------------------
 * ------ SISTEMA DE ENVIOS---------
 * ----------------------------
 * 
 * 
 * ========= DDL =============
 */

-- https://www.tutorialspoint.com/sqlite/sqlite_check.htm
-- https://stackoverflow.com/questions/1884818/how-do-i-add-a-foreign-key-to-an-existing-sqlite-table


-- Tablas
drop table if exists clientes;
drop table if exists clientes_detalles;
drop table if exists productos;
drop table if exists productos_detalles;
drop table if exists facturas ;
drop table if exists facturas_detalles ;
drop table if exists pedidos ;
drop table if exists envios ;
drop table if exists reposicion_stock ;






-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA CLIENTES ===========

create table clientes(
	
id int primary key 						unique,
cod_cliente varchar(30) not null 		unique, -- j76i9 
nombre varchar(60) not null,
apellido varchar(40) not null,
edad int(3) not null 					check(edad > 0)


);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA CLIENTES_DETALLES ===========

create table clientes_detalles(
	
id int primary key						unique,
id_cliente int 							unique,
tipo_doc varchar(30) not null, 						
nro_doc varchar(60) not null, 
nro_tel varchar(30) not null,
email varchar (60) not null,

foreign key(id_cliente) references clientes(id)


);


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PRODUCTOS ===========

create table productos(
	
id int primary key					unique,
codigo  varchar(30) 				unique,
nombre 	varchar(30)					not null, 						
precio decimal(8,2) not null 		check( precio > 0)


);


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PRODUCTOS_DETALLES ===========

create table productos_detalles(
	
id int primary key					unique,
id_producto int 					unique,
marca 	varchar(50) 				not null,
descripcion varchar(100) 			not null,
peso decimal(8,2) not null			check (peso > 0),
stock int not null 					check (stock > 5),

foreign key(id_producto) references productos(id)


);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA REPOSICION_STOCK ===========

create table reposicion_stock(
	
id 			int 					primary key,
id_producto int 					not null,
cantidad 	int 					not null,
estado		varchar(20)				not null, -- Reposicion concretada, pendiente, etc
fecha		date 					not null,-- ej '2001-10-07'
hora 		time					not null, -- ej  '09:00:07'

foreign key(id_producto) references productos(id)


);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PEDIDOS ===========

create table pedidos(
	
id 			int 					not null,-- repetible, varios pedidos de mismo cliente/producto
id_producto int 					not null,
id_cliente	int 					not null,
detalles 	varchar(100)			not null,
cantidad 	int 					not null,
estado		varchar(20)				not null, -- Pedido concretado, pendiente, etc
fecha		date 					not null,-- ej '2001-10-07'
hora 		time					not null, -- ej  '09:00:07'

foreign key(id_producto) references productos(id),
foreign key(id_cliente) references clientes(id)


);




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA FACTURAS ===========

create table facturas(
	
id 				int 					not null,-- repetible, una misma factura para varios pedidos
id_pedido 		int 					not null,
precio_total 	decimal(8,2)			not null	check(precio_total >=0),


foreign key(id_pedido) references pedidos(id)


);




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA FACTURAS_DETALLES ===========

create table facturas_detalles(
	
id 				int	primary key			unique,-- No repetible, detalle para una factura unica
id_factura 		int 					unique, -- No repetible, detalle para una factura unica
tipo_pago 		varchar(20) 			not null,--efectivo, contado, etc
descripcion 	varchar(60)				not null,
descuento		decimal(8,2)			not null	check(descuento >=0),
precio_final 	decimal(8,2)			not null	check(precio_final >=0),


foreign key(id_factura) references facturas(id)


);




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA ENVIOS ===========

create table envios(
	
id 				int	primary key			unique,-- No repetible
id_factura 		int 					unique, -- No repetible, envio con una sola factura
estado 			varchar(20) 			not null,--enviado, pendiente, etc
tipo			varchar(30)				not null,-- envio express, normal, lo que sea
fecha			date 					not null,-- ej '2001-10-07'
hora 			time					not null, -- ej  '09:00:07'

foreign key(id_factura) references facturas(id)


);


