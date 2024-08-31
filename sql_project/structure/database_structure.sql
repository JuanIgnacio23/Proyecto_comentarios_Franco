
DROP DATABASE IF EXISTS comentarios_google;
CREATE DATABASE IF NOT EXISTS comentarios_google;

USE comentarios_google;

-- Crear las tablas con las claves primarias definidas

CREATE TABLE categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(250) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(250) NOT NULL,
    total_comentarios INT,
    PRIMARY KEY (id_usuario) 
);

CREATE TABLE restaurantes (
    id_restaurante INT NOT NULL AUTO_INCREMENT,
    id_categoria INT NOT NULL,
    nombre_restaurante VARCHAR(250) NOT NULL,
    direccion VARCHAR(250),
    region VARCHAR(100) NOT NULL,
    rating FLOAT NOT NULL,
    total_comentarios INT NOT NULL,
    PRIMARY KEY (id_restaurante),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE restaurante_categorias (
    id_categoria INT NOT NULL,
    restaurante INT NOT NULL,
    PRIMARY KEY (id_categoria, restaurante),
    FOREIGN KEY (restaurante) REFERENCES restaurantes(id_restaurante),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);



CREATE TABLE comentarios (
    id_comentario INT NOT NULL AUTO_INCREMENT,
    id_restaurante INT NOT NULL,
    id_usuario INT NOT NULL,
    rating FLOAT NOT NULL,
    comentario TEXT NOT NULL,
    votos_comentario INT,
    PRIMARY KEY (id_comentario),
    FOREIGN KEY (id_restaurante) REFERENCES restaurantes(id_restaurante),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);


CREATE TABLE advertencias (
    id_restaurante INT NOT NULL,
    mensaje VARCHAR(255),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_restaurante, mensaje), 
    FOREIGN KEY (id_restaurante) REFERENCES restaurantes(id_restaurante)
);

CREATE TABLE usuarios_importantes(
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(250) NOT NULL,
    total_comentarios INT,
    PRIMARY KEY (id_usuario) 
);

