USE comentarios_google;

DROP VIEW IF EXISTS vista_comentarios_restaurantes ;
DROP VIEW IF EXISTS vista_comentarios_populares;
DROP VIEW IF EXISTS vista_restaurantes_alta_calificacion;
DROP VIEW IF EXISTS vista_restaurantes_comentarios_region;

-- Vista_comentarios_restaurantes: esta vista busca visualizar información de los restaurantes.

CREATE VIEW vista_comentarios_restaurantes AS 
SELECT 
	 r.id_restaurante
     ,r.nombre_restaurante
     ,COUNT(c.id_comentario) AS total_comentarios
	 ,AVG(c.rating) AS promedio_rating
FROM restaurantes r
LEFT JOIN comentarios c 
ON r.id_restaurante = c.id_restaurante
GROUP BY r.id_restaurante, r.nombre_restaurante;



-- Vista de comentarios populares

CREATE VIEW vista_comentarios_populares AS
SELECT
    c.id_comentario
    ,r.nombre_restaurante
    ,u.nombre_usuario
    ,c.rating
    ,c.comentario
    ,c.votos_comentario
FROM comentarios AS c
JOIN restaurantes AS r 
ON c.id_restaurante = r.id_restaurante
JOIN usuarios AS u 
ON c.id_usuario = u.id_usuario
ORDER BY c.votos_comentario DESC;
     
     
-- Vista de comentarios con alta calificacion

CREATE VIEW vista_restaurantes_alta_calificacion AS
SELECT
    r.id_restaurante,
    r.nombre_restaurante,
    r.rating
FROM
    restaurantes AS r
WHERE
    r.rating > 4.0;

-- Vista para poder ver el numero de comentarios por region

CREATE VIEW vista_comentarios_region AS
SELECT
    r.region,
    COUNT(c.id_comentario) AS total_comentarios
FROM
    restaurantes AS r
LEFT JOIN
    comentarios AS c ON r.id_restaurante = c.id_restaurante
GROUP BY
    r.region
LIMIT 4;

