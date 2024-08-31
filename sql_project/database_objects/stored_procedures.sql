USE Comentarios_google;

-- Procedimiento para que los codigos numericos (1,2,3,4) de la columna "Region" sean representados por "Sur","Norte","Oeste","Este".

SET SQL_SAFE_UPDATES = 0; -- > Se utilizo para poder ejecutar un "UPDATE" sin la utilizacion de un WHERE

-- Se creo una columna nueva en la tabla RESTAURANTES identica a la columna "Region":



ALTER TABLE restaurantes
ADD COLUMN region_nuevo VARCHAR (50);

-- Procedure actualizar_region:

DROP PROCEDURE IF EXISTS actualizar_region;

DELIMITER //

CREATE PROCEDURE actualizar_region()
BEGIN
    UPDATE restaurantes
    SET region_nuevo = CASE
    WHEN region = 1 THEN "Sur"
    WHEN region = 2 THEN "Norte"
    WHEN region = 3 THEN "Oeste"
    WHEN region = 4 THEN "Este"
    ELSE Region

END;
    
END ; //

DELIMITER ;


ALTER TABLE restaurantes
DROP COLUMN region; -- > Eliminacion de la columna con variables numericas


ALTER TABLE restaurantes
CHANGE COLUMN region_nuevo Region VARCHAR(50); -- > Cambio de columna





-- Procedimiento para identificar los comentarios positivos y negativos.


ALTER TABLE comentarios_google.comentarios
ADD COLUMN tipo_comentario text;

DROP PROCEDURE IF EXISTS procedure_tipo_comentario;

DELIMITER //

CREATE PROCEDURE procedure_tipo_comentario()
BEGIN
    UPDATE comentarios_google.comentarios
    SET tipo_comentario = CASE
    WHEN rating <= 3 THEN "Negativo"
    ELSE "Positivo"

END;
    
END ; //

DELIMITER ;



