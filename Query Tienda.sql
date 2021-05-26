SELECT nombre FROM tienda.producto;
SELECT nombre, precio FROM tienda.producto;
SELECT * FROM tienda.producto;
SELECT nombre, precio, precio * 1.22 from tienda.producto;
SELECT nombre AS "nom de producto", precio AS euros, precio * 1.22 AS dolars FROM tienda.producto;
SELECT UPPER(nombre), precio from tienda.producto;
SELECT LOWER(nombre), precio from tienda.producto;
SELECT nombre, CONCAT(UPPER(SUBSTRING(nombre,1,2)), SUBSTRING(nombre,3)) FROM tienda.fabricante;
SELECT nombre, ROUND(precio, 0) FROM tienda.producto;
SELECT nombre, TRUNCATE(precio, 0) FROM tienda.producto;
SELECT codigo_fabricante FROM tienda.producto;
SELECT DISTINCT codigo_fabricante FROM tienda.producto;
SELECT * from tienda.fabricante ORDER BY nombre ASC;
SELECT * FROM tienda.fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM tienda.producto ORDER BY nombre, precio DESC;
SELECT * FROM tienda.fabricante LIMIT 5;
SELECT * FROM tienda.fabricante LIMIT 3,2;
SELECT * FROM tienda.producto ORDER BY precio ASC LIMIT 1;
SELECT * FROM tienda.producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM tienda.producto WHERE codigo_fabricante = 2;
SELECT p.nombre, precio, f.nombre FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo;
SELECT p.nombre, precio, f.nombre FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre ASC;
SELECT p.nombre, p.codigo, p.codigo_fabricante, f.nombre FROM tienda.producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT p.nombre, p.precio, f.nombre FROM tienda.producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1;
SELECT p.nombre, p.precio, f.nombre FROM tienda.producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1;
SELECT p.nombre FROM tienda.producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = "lenovo";
SELECT p.nombre FROM tienda.producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = "crucial" AND precio > 200;
SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = "asus" OR f.nombre = "hewlett-packard" OR f.nombre = "seagate";  
SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre IN ("asus", "hewlett-packard", "seagate");
SELECT p.nombre, p.precio FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE "%e";
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE "%w%";
SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre;
SELECT DISTINCT f.codigo, f.nombre FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante;
SELECT f.nombre, p.nombre FROM tienda.fabricante f LEFT JOIN tienda.producto p ON f.codigo = p.codigo_fabricante;
SELECT f.nombre FROM tienda.fabricante f LEFT JOIN tienda.producto p ON f.codigo = p.codigo_fabricante WHERE p.nombre IS NULL;
SELECT p.nombre, f.nombre AS fabricante FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "lenovo";
SELECT * FROM tienda.producto p WHERE p.precio = (SELECT p.precio FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "lenovo" LIMIT 1);
SELECT p.nombre from tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "lenovo" LIMIT 1;
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "hewlett-packard" ORDER BY p.precio ASC LIMIT 1;
SELECT p.nombre FROM tienda.producto p WHERE p.precio >= (SELECT p.precio FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "lenovo" ORDER BY precio DESC LIMIT 1);
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.precio > (SELECT AVG(p.precio) FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "asus") AND p.codigo_fabricante = f.codigo AND f.nombre = "asus";






