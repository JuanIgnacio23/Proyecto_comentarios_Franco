

USE comentarios_google;


DROP TRIGGER IF EXISTS trg_checker_comentarios;


DELIMITER //
CREATE TRIGGER trg_checker_comentarios
BEFORE INSERT ON comentarios_google.restaurantes
FOR EACH ROW 
BEGIN 
     IF NEW.total_comentarios > 100 THEN 
	    INSERT INTO advertencias (mensaje)
        VALUES (CONCAT('El Restaurante'," ", NEW.nombre_restaurante, ' es muy popular'));
	 END IF;
     
	 IF NEW.total_comentarios < 10 THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El numero de comentarios no es relevante para el analisis';
    END IF;
END //
DELIMITER ;



  
  




