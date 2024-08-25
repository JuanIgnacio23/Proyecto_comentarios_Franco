USE comentarios_google;

-- Creación dos areas

CREATE ROLE 'DEV', 'QA';

-- Creación los permisos

GRANT ALL ON comentarios_google.* TO 'DEV';
GRANT SELECT ON comentarios_google.* TO 'QA';
GRANT INSERT, UPDATE, DELETE ON comentarios_google.* TO 'DEV';

-- Creación de usuarios

DROP USER IF EXISTS 'Usuario1'@'%',
                    'Usuario2'@'%',
                    'Usuario3'@'%',
                    'Usuario4'@'%',
                    'Usuario5'@'%';
                   
-- DEV

CREATE USER 'Usuario1'@'%' IDENTIFIED BY 'abc';
CREATE USER 'Usuario2'@'%' IDENTIFIED BY 'abc';
CREATE USER 'Usuario3'@'%' IDENTIFIED BY 'abc';

-- QA

CREATE USER 'Usuario4'@'%' IDENTIFIED BY 'cba';
CREATE USER 'Usuario5'@'%' IDENTIFIED BY 'cba';

-- Otorgamiento de roles

GRANT 'DEV' TO
     'Usuario1'@'%',
     'Usuario2'@'%',
     'Usuario3'@'%';

GRANT 'QA' TO
     'Usuario4'@'%',
     'Usuario5'@'%';

-- Otorgamiento de DEFAULT ROLES
SET DEFAULT ROLE 'DEV' TO
            'Usuario1'@'%',
            'Usuario2'@'%', 
            'Usuario3'@'%';

SET DEFAULT ROLE 'QA' TO
            'Usuario4'@'%', 
            'Usuario5'@'%';

FLUSH PRIVILEGES;
 

-- Verificación de permisos

SHOW GRANTS FOR 'Usuario1'@'%';
SHOW GRANTS FOR 'Usuario4'@'%';