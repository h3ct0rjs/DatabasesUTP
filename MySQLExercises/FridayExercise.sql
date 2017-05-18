1. SELECT AVG(cuota) AS cuota_media, AVG(ventas) AS ventas_media FROM empleados
2. SELECT AVG(importe) AS importe_medio, SUM(importe) AS importe_total, AVG(importe/cant) AS precio_venta_medio FROM pedidos
3. SELECT AVG(precio) AS p_medio_ACI FROM productos WHERE idfab = 'ACI'
4. SELECT SUM(importe) AS total_pedidos_V_Pantalla FROM empleados INNER JOIN pedidos ON empleados.numemp = pedidos.rep WHERE nombre = 'Vicente Pantalla'
5. SELECT MIN(fechapedido) AS primer_pedido FROM pedidos 
6.SELECT COUNT AS cuantos_pedidos_mayores FROM pedidos WHERE importe > 25000
