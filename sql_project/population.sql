USE comentarios_google;

-- IMPORTANTE PARA QUE ENTIENDA QUE DEBE HACER LA IMPORTACION

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'.\data_csv\Comentarios.csv'
INTO TABLE comentarios_google.Comentarios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
( rating 
  , comentario 
  , fecha_comentario 
  , votos_comentario );

--

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'./data/Categorias.csv'
INTO TABLE comentarios_google.Categorias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(nombre_categoria);

--

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'.\data_csv\Fotos.csv'
INTO TABLE comentarios_google.Fotos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(URL_FOTO);

--

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE'.\data_csv\Restaurantes.csv'
INTO TABLE comentarios_google.Restaurantes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
 ( nombre_restaurante 
  , direccion 
  , region 
  , rating 
  , total_comentarios);

--

LOAD DATA LOCAL INFILE'.\data_csv\Usuarios.csv'
INTO TABLE comentarios_google.Usuarios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(nombre_usuario 
 , total_comentarios);