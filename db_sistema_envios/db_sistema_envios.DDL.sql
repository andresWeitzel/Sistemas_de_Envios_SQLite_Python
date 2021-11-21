
/* ----------------------------
 * ------ SISTEMA DE ENVIOS---------
 * ----------------------------
 * 
 * 
 * ========= DML =============
 */

-- https://www.tutorialspoint.com/sqlite/sqlite_check.htm
-- https://stackoverflow.com/questions/1884818/how-do-i-add-a-foreign-key-to-an-existing-sqlite-table


-- Tablas
drop table if exists clientes;
drop table if exists clientes_detalles;
drop table if exists productos;

/*
drop table if exists facturas cascade;
drop table if exists facturas_detalles cascade;
drop table if exists pedidos cascade;
drop table if exists productos_detalles cascade;
drop table if exists envios cascade;
drop table if exists reposicion_stock cascade;
*/




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
-- ---------------------------------------------------------------------------

-- ======= TABLA PRODUCTOS ===========

create table productos(
	
id int primary key					unique,
cod_producto  varchar(30) 			unique,
detalle varchar(50) not null, 						
precio decimal(8,2) not null 		check( precio > 0)


);


-- ---------------------------------------------------------------------------


