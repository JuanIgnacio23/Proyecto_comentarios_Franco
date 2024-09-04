USE comentarios_google;

-- Creación de roles

DROP ROLE if exists 'role_crud_tables', 'role_select_tables';

CREATE ROLE 'role_crud_tables', 'role_select_tables';

-- Creación de permisos

GRANT ALL ON comentarios_google.* TO 'role_crud_tables';
GRANT SELECT ON comentarios_google.* TO 'role_select_tables';
GRANT INSERT, UPDATE, DELETE ON comentarios_google.* TO 'role_crud_tables';

-- Creación de usuarios

DROP USER IF EXISTS 'Usuario1'@'%',
                    'Usuario2'@'%',
                    'Usuario3'@'%',
                    'Usuario4'@'%',
                    'Usuario5'@'%';
                   
-- role_crud_tables

CREATE USER 'Usuario1'@'%' IDENTIFIED BY 'abc';
CREATE USER 'Usuario2'@'%' IDENTIFIED BY 'abc';
CREATE USER 'Usuario3'@'%' IDENTIFIED BY 'abc';

-- role_select_tables

CREATE USER 'Usuario4'@'%' IDENTIFIED BY 'cba';
CREATE USER 'Usuario5'@'%' IDENTIFIED BY 'cba';

-- Otorgamiento de roles

GRANT 'role_crud_tables' TO
     'Usuario1'@'%',
     'Usuario2'@'%',
     'Usuario3'@'%';

GRANT 'role_select_tables' TO
     'Usuario4'@'%',
     'Usuario5'@'%';

-- Otorgamiento de DEFAULT ROLES
SET DEFAULT ROLE 'role_crud_tables' TO
            'Usuario1'@'%',
            'Usuario2'@'%', 
            'Usuario3'@'%';

SET DEFAULT ROLE 'role_select_tables' TO
            'Usuario4'@'%', 
            'Usuario5'@'%';

FLUSH PRIVILEGES;
 

