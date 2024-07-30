USE comentarios_google;

-- Vista_comentarios_restaurantes: esta vista busca visualizar información de los restaurantes.

CREATE VIEW 
   vista_comentarios_restaurantes AS 
SELECT 
	 r.id_restaurante
     ,r.nombre_restaurante
     ,COUNT(c.id_comentario) AS total_comentarios
	 ,AVG(c.rating) AS promedio_rating
FROM Restaurantes r
LEFT JOIN Comentarios c 
ON r.id_restaurante = c.id_restaurante
GROUP BY r.id_restaurante, r.nombre_restaurante;

--

-- Vista_comentarios_populares : 

CREATE VIEW vista_comentarios_populares AS
SELECT
    c.id_comentario
    ,r.nombre_restaurante
    ,u.nombre_usuario
    ,c.rating
    ,c.comentario
    ,c.fecha_comentario
    ,c.votos_comentario
FROM Comentarios c
JOIN Restaurantes r 
ON c.id_restaurante = r.id_restaurante
JOIN Usuarios u 
ON c.id_usuario = u.id_usuario
ORDER BY c.votos_comentario DESC;

--

-- Restaurantes_foto : muestra la relacion visual que tienen los usuarios de los restaurantes con respecto a las fotos tomadas.

CREATE VIEW vista_restaurantes_fotos AS
SELECT DISTINCT
    r.id_restaurante,
    r.nombre_restaurante
FROM Restaurantes r
JOIN Comentarios c ON r.id_restaurante = c.id_restaurante
JOIN Fotos f ON c.id_comentario = f.id_comentario;