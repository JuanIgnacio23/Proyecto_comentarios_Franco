USE comentarios_google;

-- Vista_restaurantes: esta vista busca visualizar información de los restaurantes.

CREATE VIEW 
   vista_restaurantes AS 
SELECT 
     nombre_restaurante
     , rating
     , total_comentarios
FROM
   Restaurantes;

-- 