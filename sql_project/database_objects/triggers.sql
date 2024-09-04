

USE comentarios_google;


DROP TRIGGER IF EXISTS restaurantes_populares;
DROP TRIGGER IF EXISTS restaurantes_pocos_comentarios;

-- Trigger para dejar un mensaje en la tabla 'advertencias' en caso de que el restaurante supere los 100 comentarios

DELIMITER //

CREATE TRIGGER restaurantes_populares
BEFORE INSERT ON comentarios_google.restaurantes
FOR EACH ROW 
BEGIN 
     IF NEW.total_comentarios > 100 THEN 
	    INSERT INTO advertencias (mensaje)  
        VALUES (CONCAT('El Restaurante'," ", NEW.nombre_restaurante, ' es muy popular'));
	 END IF;
     
END //

DELIMITER ;

-- Trigger para rechazar restaurantes con pocos comentarios
  
DELIMITER //

CREATE TRIGGER restaurantes_pocos_comentarios
BEFORE INSERT ON comentarios_google.restaurantes
FOR EACH ROW 
BEGIN 
     IF NEW.total_comentarios < 10 THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El numero de comentarios no es relevante para el analisis';
    END IF;
END //

DELIMITER ;
  



