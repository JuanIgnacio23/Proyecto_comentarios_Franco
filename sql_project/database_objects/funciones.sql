USE comentarios_google;

DROP FUNCTION IF EXISTS comentarios_region;
DROP FUNCTION IF EXISTS rating_categorias;


-- Función para obtener el numero de comentarios acumulado por region:

DELIMITER //

CREATE FUNCTION comentarios_region 
(region VARCHAR(10)) RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN 
     DECLARE numero_comentarios INT;
     
     SELECT count(*)
     INTO numero_comentarios
     FROM comentarios AS c
     JOIN restaurantes AS r
     ON c.id_restaurante = r.id_restaurante
     WHERE r.region = region;
     
     RETURN numero_comentarios;
 
END;  //

DELIMITER ;


  
--  Funcion para obtener el rating promedio de los restaurantes en una categoria especifica

DELIMITER //

CREATE FUNCTION avg_rating_categoria(categoria_nombre VARCHAR(250)) 
RETURNS FLOAT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_rating FLOAT;
    
    SELECT AVG(rating) INTO avg_rating
    FROM restaurantes r
    JOIN categorias c ON r.id_categoria = c.id_categoria
    WHERE c.nombre_categoria = categoria_nombre;
    
    RETURN avg_rating;
END //

DELIMITER ;

