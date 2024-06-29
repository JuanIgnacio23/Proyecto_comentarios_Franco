DROP DATABASE IF EXISTS comentarios_google;

CREATE DATABASE 
             IF NOT EXISTS comentarios_google;
             
USE comentarios_google;

CREATE TABLE Restaurantes (
        IdRestaurante INT NOT NULL AUTO_INCREMENT 
        , Nombre_restaurante VARCHAR(250) NOT NULL
        , Direccion VARCHAR(250)
        , Region VARCHAR(100) NOT NULL
        , Rating FLOAT NOT NULL
        , Total_comentarios INT NOT NULL
        , PRIMARY KEY(IdRestaurante)
);

CREATE TABLE Comentarios (
        IdComentario INT NOT NULL AUTO_INCREMENT 
        , IdRestaurante INT NOT NULL   -- > FK
        , IdUsuario INT NOT NULL  -- > FK
        , Rating FLOAT NOT NULL
        , Comentario TEXT NOT NULL
        , Fecha_Comentario DATETIME NOT NULL
        , Votos_comentario INT 
        , PRIMARY KEY(IdComentario)
);

CREATE TABLE Usuarios(
        IdUsuario INT NOT NULL AUTO_INCREMENT 
        , Nombre_usuario VARCHAR(250) NOT NULL
        , Total_comentarios INT 
        , PRIMARY KEY(IdUsuario)
);

CREATE TABLE Categorias (
        IdCategoria INT NOT NULL AUTO_INCREMENT 
        , Nombre_categoria VARCHAR(250) NOT NULL
        , PRIMARY KEY(IdCategoria)
);

CREATE TABLE Restaurante_categorias (
        IdRestaurante INT NOT NULL  -- > FK
        , IdCategoria INT NOT NULL  -- > FK
);

CREATE TABLE Fotos (
        IdFoto INT NOT NULL AUTO_INCREMENT 
        , IdComentario INT NOT NULL  -- > FK
        , URL_FOTO VARCHAR(500)
        , PRIMARY KEY(IdFoto)
);



ALTER TABLE Comentarios
ADD CONSTRAINT fk_IdRestaurante_id
FOREIGN KEY (IdRestaurante) REFERENCES Restaurantes (IdRestaurante);


ALTER TABLE Comentarios
ADD CONSTRAINT fk_IdUsuario_id
FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario);


ALTER TABLE Restaurante_categorias 
ADD CONSTRAINT fk_IdRestaurante_id
FOREIGN KEY (IdRestaurante) REFERENCES Restaurantes (IdRestaurante);


ALTER TABLE Restaurante_categorias 
ADD CONSTRAINT fk_IdCategoria
FOREIGN KEY (IdCategoria) REFERENCES Categorias (IdCategoria);


ALTER TABLE Fotos
ADD CONSTRAINT fk_IdComentario_id
FOREIGN KEY (IdComentario) REFERENCES Comentarios (IdComentario);





