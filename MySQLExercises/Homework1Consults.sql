 SELECT IDFAB, IDPRODUCTO, DESCRIPCION, PRECIO, (PRECIO * 1.19) AS PRECIO_IVA FROM productos
 SELECT NUMPEDIDO, FAB, PRODUCTO, CANT, (IMPORTE / CANT) AS PRECIO_UNITARIO, IMPORTE FROM pedidos
 SELECT NOMBRE, (year(curdate()) - EDAD) AS A�O_NACIMIENTO, (datediff(Curdate(), CONTRATO)) AS DIAS_TRABAJADOS FROM empleados
 SELECT * FROM clientes ORDER BY REPCLIE
 SELECT * FROM oficinas ORDER BY REGION, CIUDAD
 SELECT * FROM pedidos ORDER BY FECHAPEDIDO
 SELECT * FROM pedidos ORDER BY `pedidos`.`IMPORTE` DESC LIMIT 4
 SELECT NUMPEDIDO, FAB, PRODUCTO, CANT, (IMPORTE / CANT) AS PRECIO_UNITARIO, IMPORTE FROM pedidos ORDER BY PRECIO_UNITARIO ASC LIMIT 5
 SELECT * FROM pedidos WHERE MONTH(FECHAPEDIDO) = 3
 SELECT NUMEMP FROM empleados WHERE OFICINA is NOT NULL
 SELECT OFICINA FROM oficinas WHERE DIR IS NULL
 SELECT * FROM oficinas WHERE (REGION = 'NORTE') OR (REGION = 'ESTE') ORDER BY REGION DESC
 SELECT * FROM empleados WHERE NOMBRE LIKE 'ju%'
 SELECT * FROM productos WHERE IDPRODUCTO LIKE '%x'
