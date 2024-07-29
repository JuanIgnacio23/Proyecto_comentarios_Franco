USE comentarios_google;

-- IMPORTANTE PARA QUE ENTIENDA QUE DEBE HACER LA IMPORTACION

SET GLOBAL local_infile = true;

OAD DATA LOCAL INFILE'Restaurantes.csv'
INTO TABLE comentarios_google.Restaurantes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
 ( nombre_restaurante 
  , direccion 
  , region 
  , rating 
  , total_comentarios);

  --

LOAD DATA LOCAL INFILE'Comentarios.csv'
INTO TABLE comentarios_google.Comentarios
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
( rating 
  , comentario 
  , fecha_comentario 
  , votos_comentario );

--

LOAD DATA LOCAL INFILE'Usuarios.csv'
INTO TABLE comentarios_google.Usuarios
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre_usuario 
 , total_comentarios);

 --

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'Categorias.csv'
INTO TABLE comentarios_google.Categorias
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre_categoria);

--

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'Fotos.csv'
INTO TABLE comentarios_google.Fotos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(URL_FOTO);

