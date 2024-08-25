-- QUERIES PARA VERIFICAR LAS CREACIONES Y CHEQUEAR DE QUE FUE EXITOSA LA CREACION DE CADA UNA

USE comentarios.google;


-- VERIFICACION DE IMPORTACION

SELECT *
FROM Categorias;

SELECT *
FROM Usuarios;

SELECT *
FROM Restaurantes;

SELECT *
FROM restaurante_categorias;

SELECT *
FROM Comentarios;

SELECT *
FROM advertencias;


-- VERIFICACION DE VISTAS

SELECT * FROM vista_comentarios_restaurantes;

SELECT 
	 r.id_restaurante
     ,r.nombre_restaurante
     ,COUNT(c.id_comentario) AS total_comentarios
	 ,AVG(c.rating) AS promedio_rating
FROM Restaurantes r
LEFT JOIN Comentarios c 
ON r.id_restaurante = c.id_restaurante
GROUP BY r.id_restaurante, r.nombre_restaurante;


SELECT * FROM vista_comentarios_populares;

SELECT
    c.id_comentario
    ,r.nombre_restaurante
    ,u.nombre_usuario
    ,c.rating
    ,c.comentario
    ,c.votos_comentario
FROM Comentarios AS c
JOIN Restaurantes AS r 
ON c.id_restaurante = r.id_restaurante
JOIN Usuarios AS u 
ON c.id_usuario = u.id_usuario
ORDER BY c.votos_comentario DESC;



-- VERIFICACION DE FUNCIONES

SELECT comentarios_region('Norte');

SELECT COUNT(*)
FROM comentarios AS c
JOIN restaurantes AS r
ON c.id_restaurante = r.id_restaurante
WHERE r.region = 'Norte';

 SELECT rating_categorias ('familiar')

SELECT AVG(rating)
     INTO avg_rating
     FROM restaurantes AS r
     JOIN Restaurante_categorias  AS rc
     ON r.id_restaurante = rc.restaurante
     JOIN Categorias AS c
     ON rc.id_categoria = c.id_categoria
     WHERE c.nombre_categoria = 'familiar';


-- VERIFICACION DE PROCEDURES

SELECT id_restaurante, region
FROM Restaurantes;

SELECT id_restaurante, tipo_comentario
FROM Restaurantes;

-- VERIFICACION DE TRIGGERS

INSERT INTO restaurantes (nombre_restaurante, direccion, region, rating, total_comentarios, id_categoria)
VALUES ('Restaurante Popular', '123 Main St', 'Centro', 4.5, 150, 1);

INSERT INTO restaurantes (nombre_restaurante, direccion, region, rating, total_comentarios, id_categoria)
VALUES ('Restaurante Poco Popular', '456 Elm St', 'Norte', 3.0, 5, 2);

-- Verificación de permisos

SHOW GRANTS FOR 'Usuario1'@'%';
SHOW GRANTS FOR 'Usuario2'@'%';
SHOW GRANTS FOR 'Usuario3'@'%';
SHOW GRANTS FOR 'Usuario4'@'%';
SHOW GRANTS FOR 'Usuario5'@'%';