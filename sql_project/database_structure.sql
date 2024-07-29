-- Se crea la base de datos:

DROP DATABASE IF EXISTS comentarios_google;

CREATE DATABASE 
             IF NOT EXISTS comentarios_google;
             
USE comentarios_google;

-- Se crean las tablas correspondiente a la base de datos:

CREATE TABLE Restaurantes (
        id_restaurante INT NOT NULL AUTO_INCREMENT 
        , nombre_restaurante VARCHAR(250) NOT NULL
        , direccion VARCHAR(250)
        , region VARCHAR(100) NOT NULL
        , rating FLOAT NOT NULL
        , total_comentarios INT NOT NULL
        , PRIMARY KEY(id_restaurante)
);


CREATE TABLE Comentarios (
        id_comentario INT NOT NULL AUTO_INCREMENT 
        , id_restaurante INT NOT NULL   -- > FK
        , id_usuario INT NOT NULL  -- > FK
        , rating FLOAT NOT NULL
        , comentario TEXT NOT NULL
        , fecha_comentario DATETIME NOT NULL
        , votos_comentario INT 
        , PRIMARY KEY(id_comentario)
);


CREATE TABLE Usuarios(
        id_usuario INT NOT NULL AUTO_INCREMENT 
        , nombre_usuario VARCHAR(250) NOT NULL
        , total_comentarios INT 
        , PRIMARY KEY(id_usuario)
);


CREATE TABLE Categorias (
        id_categoria INT NOT NULL AUTO_INCREMENT 
        , nombre_categoria VARCHAR(250) NOT NULL
        , PRIMARY KEY(id_categoria)
);


CREATE TABLE Restaurante_categorias (
		id_categoria INT NOT NULL  -- > FK
        , restaurante INT NOT NULL  -- > FK
);


CREATE TABLE Fotos (
        id_foto INT NOT NULL AUTO_INCREMENT 
        , id_comentario INT NOT NULL  -- > FK
        , URL_FOTO VARCHAR(500)
        , PRIMARY KEY(id_foto)
);

-- Se crean las foreign key correspondientes a cada una de las tablas:

ALTER TABLE Comentarios
ADD CONSTRAINT fk_IdRestaurante_id
FOREIGN KEY (id_restaurante) REFERENCES Restaurantes (id_restaurante);


ALTER TABLE Comentarios
ADD CONSTRAINT fk_IdUsuario_id
FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario);


ALTER TABLE Restaurante_categorias 
ADD CONSTRAINT fk_IdRestaurante
FOREIGN KEY (restaurante) REFERENCES Restaurantes (id_restaurante);


ALTER TABLE Restaurante_categorias 
ADD CONSTRAINT fk_IdCategoria
FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria);


ALTER TABLE Fotos
ADD CONSTRAINT fk_IdComentario
FOREIGN KEY (id_comentario) REFERENCES Comentarios (id_comentario);

