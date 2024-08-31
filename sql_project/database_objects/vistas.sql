USE comentarios_google;

-- Vista_comentarios_restaurantes: esta vista busca visualizar información de los restaurantes.

CREATE VIEW 
   vista_comentarios_restaurantes AS 
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
     


