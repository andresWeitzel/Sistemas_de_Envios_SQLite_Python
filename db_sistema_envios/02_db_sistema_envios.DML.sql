/* ----------------------------
 * ------ SISTEMA DE ENVIOS---------
 * ----------------------------
 * 
 * 
 * ========= DML =============
 */

delete from clientes;
delete from clientes_detalles;
delete from productos;
delete from productos_detalles;
delete from reposicion_stock;
delete from pedidos;
delete from facturas;
delete from facturas_detalles;
delete from envios;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA CLIENTES ===========

select * from clientes;

-- DESCRIPCION ESTRUCTURA DE TABLA
 pragma table_info([clientes]);


insert into clientes (id, cod_cliente , nombre, apellido, edad) values 
(1 , '0000189' , 'Martin' , 'Gutierrez' ,21),
(2 , '0000190' , 'Sofia' , 'Lowrosky' ,32),
(3 , '0000191' , 'Jimena' , 'Ñunoa' ,35);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA CLIENTES_DETALLES ===========
select *  from clientes_detalles;

pragma table_info([clientes_detalles]);


insert into clientes_detalles (id, id_cliente, tipo_doc , nro_doc, nro_tel, email) values 
(1 , 1 , 'DNI' , '38078666' , '4567-4877' ,'-'),
(2 , 2 ,  'DNI' , '28883464' , '99874566' ,'SofiaLowsj@gmail.com'),
(3 , 3 ,  'DNI' , '838992020' , '1178694765' ,'-');



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PRODUCTOS ===========

select *  from productos;

pragma table_info([productos]);


insert into productos (id, codigo, nombre , precio) values 
(1 , 'AHJ78999' , 'Teclado Gamer j789' , 3700.200),
(2 , 'SGHYU759' , 'Disco SSD 1tb' , 9700.200),
(3 , 'RTYU7458' , 'Zapatillas Running' , 12000.200),
(4 , 'JHKYU447' , 'Sweater/Abrigo' , 5700.200),
(5 , 'LLO98666' , 'Mueble de Pino' , 15000.200);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PRODUCTOS_DETALLES ===========


select *  from productos_detalles;

pragma table_info([productos_detalles]);


insert into productos_detalles (id, id_producto, marca, descripcion, peso, stock) values 
(1 , 1, 'Asus' , 'Teclado Gamer retroiluminacion, seteo de luces rgb, funciones espaciales' , 200, 20),
(2 , 2, 'Toshiba' , 'Disco SSD Capacidad 1tb lectura 200mb/seg' , 100, 20),
(3 , 3, 'Topper' , 'Zapatillas para correr hiper eficientes, levitacion asincronica' , 300, 12),
(4 , 4, 'Gucci' , 'Sweater/Abrigo solo color rosa salmonado' , 1200, 15),
(5 , 5, 'Vicentin' , 'Mueble de Pino corte axial, fabricacion madera de siberia' , 6300, 9);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA REPOSICION_STOCK ===========



select *  from reposicion_stock;

pragma table_info([reposicion_stock]);


insert into reposicion_stock (id, id_producto, cantidad, estado, fecha, hora) values 
(1 , 1,  5 , 'Productos Agregados' ,'2021-01-09', '08:30:00' ),
(2 , 2,  12, 'Productos Agregados' , '2021-01-09', '08:40:00' );



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA PEDIDOS ===========

select *  from pedidos;


pragma table_info([pedidos]);


insert into pedidos (id, id_producto, id_cliente, detalles, cantidad, estado, fecha, hora) values
(1, 1, 1 , 'Se requiere  5 Teclados', 5 , 'PENDIENTE','2021-06-09', '08:30:00'),
(2, 1, 2 , 'Se requiere  2 Teclados', 2 , 'PENDIENTE','2021-02-12', '10:30:00'),
(2, 2, 2 , 'Se requiere  1 Disco SSD', 1 , 'PENDIENTE','2021-02-12', '10:30:00');





-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA FACTURAS ===========


select * from facturas;


pragma table_info([facturas]);

insert into facturas(id, id_pedido, precio_total) values
(1, 1, 20000),
(2, 2, 15000);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA FACTURAS_DETALLES ===========


select * from facturas_detalles;


pragma table_info([facturas_detalles]);

insert into facturas_detalles(id, id_factura, tipo_pago, descripcion, descuento, precio_final ) values
(1, 1 , 'EFECTIVO', 'Pago al contado', 300 , 25000),
(2, 2 , 'TARJETA', '3 Pagos con Interés', 200 , 18000);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= TABLA ENVIOS ==========

select * from envios;


pragma table_info([envios]);

insert into envios (id, id_factura, estado, tipo, fecha, hora) values

(1, 1, 'PENDIENTE', 'EXPRESS', '2021-06-12', '10:30:00'),
(2, 2, 'PENDIENTE', 'ESTANDAR', '2021-07-22', '13:30:00');
