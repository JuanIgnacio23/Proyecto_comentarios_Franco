# Entrega de proyecto final

* Alumno: Juan Ignacio Franco

* Comision: 57190

* Tutor: Ariel Annone

* Docente: Anderson Michel Torres

# Temática del proyecto
Se esta trabajando en el analisis de la competencia y demanda en la zona urbana donde se abrira un nuevo restaurante. Nos enfrentamos a la necesidad de diseñar una base de datos que contenga los servicios y caracteristicas que los restaurantes ofrecen, asi como tambien lo que las personas opinan del servicio ofrecido, para ello recopilamos datos de Google maps de cada uno de los restaurantes y sus comentarios. 


# Descripción del problema

1.**Gestión de usuarios y restaurantes**: Necesitamos una base de datos que nos permita registrar la información de los usuarios que consumieron en los restaurantes, así como de los restaurantes involucrados en en cada uno de los comentarios, marcando una percepcion de los clientes sobre el restaurante.

2.**Gestión de Categorías de restaurantes**: Es importante poder clasificar los restaurantes según su tipo, un restaurante de hamburgueseria o rotiseria y que tipo de servicio brinda. Esto nos ayudará a entender la diversificacion de los nichos del mercado y como valorizan los usuarios cada uno de estos segmentos.

3.**Gestión de Comentarios**: La base de datos debe permitirnos registrar cada uno de los comentarios y calificaciones que se generan para cada restaurante, asi como tambien el usuario que lo genera. Esto es fundamental para conocer y analizar que es lo que esperan o valoran los usuarios de los restaurantes que visitan.

# Objetivo
Diseñar una base de datos relacional que satisfaga la necesidad de recopilar información de la competencia y demanda que tendra el nuevo restaurante de la ciudad, a partir de los comentarios. La base de datos deberá ser eficiente para almacenar y gestionar los comentarios de Google sobre restautantes de la ciudad.

# Descripción de la Base de Datos - Comentarios sobre restaurantes
Esta base de datos está diseñada para gestionar comentarios de restaurantes en Google sobre una determinada ciudad, asi como la información relacionada con los clientes, restaurantes y tipo de categorias asociadas a los mismos.

# Tablas
1. **Restaurantes**:
   Almacena información básica sobre los restaurantes.
   Atributos: IDRESTAURANTE, NOMBRE, DIRECCIÓN, DIRECCION, REGION, RATING,TOTAL_COMENTARIOS.
   
2. **Comentarios**:
   Almacena los comentarios individuales de los usuarios sobre los restaurantes.
   Atributos: IDCOMENTARIO, IDRESTAURANTE, IDUSUARIO, RATING, COMENTARIO, FECHA_COMENTARIO, VOTOS_COMENTARIO.

3. **Usuario**:
   Almacena información sobre los usuarios que dejan comentarios.
   Atributos: IDUSUARIO, NOMBRE, TOTAL_COMENTARIOS.

4. **Categorías**:
   Almacena las categorías de comida que ofrecen los restaurantes.
   Atributos: IDCATEGORIA, NOMBRE_CATEGORIA.

5. **Restaurante_categorias**:
   Tabla intermedia que relaciona los restaurantes con sus cantegorías.
   Atributos: IDRESTAURANTE, IDCATEGORIA.

6. **Advertencias**:
   Almacena mensajes sobre los restaurantes a partir del trigger creado denominado 'restaurantes_populares'

# Problemática Resuelta
Esta base de datos permite gestionar las reseñas de los restaurantes y las demandas y/o valoraciones de los usuarios desde los comentarios de Google sobre los restaurantes de la ciudad. Algunos aspectos que abordan incluyen:
- Registro de los usuarios y los restaurantes involucrados.
- Clasificación de los comentarios y restaurantes según su tipo.
- Imagen que los usuarios relacionan con el restaurante.
- Registro del comentario realizado por los usuarios.

En resumen, esta base de datos proporciona una estructura para gestionar y analizar eficientemente las percepciones de los usuarios sobres los restaurantes de la ciudad, lo que contribuye a que el nuevo restaurante de la ciudad encuentre fuerzas, oportunidades, debilidades y amenazas en el mercado.


# Diagrama entidad relación (DER)

```
+----------------+
|   USUARIOS     |
+----------------+
| IDUSUARIO PF   |
|NOMBRE_USUARIO  |
|TOTAL_COMENTARIO|
+----------------+
        | 1:n
+-------------------+       +-------------------+              
|   COMENTARIO      |       |    RESTAURANTE    |             
+-------------------+       +-------------------+      
| IDCOMENTARIO P    |  n:1  | IDRESTAURANTE PK  |     
| IDRESTUARANTE FK  |<------| NOMBRE_RESTAURANTE|          
| IDUSUARIO   FK    |       | DIRECCION         |          
| RATING            |       | REGION            |                        
| COMENTARIO        |       | RATING            |                       
|   USUARIOS        |       | TOTAL_COMENTARIO  | <----------- +-------------------+
|                   |       +-------------------+      n:1     |    CATEGORIA      |  
+-------------------+                 |                        +------------------+                                           
                                      |                        | IDCATEGORIA PK    |
                                      |  n:1                   | NOMBRE_CATEGORIA  |
                                      |                        +-------------------+
                              +------------------+
                              |    ADVERTENCIAS  |
                              +------------------+
                              | ID_RESTAURANTE FK|
                              | MENSAJE          |
                              | FECHA            |
                              +------------------+

```

# Listado de tablas y descripcion


  ____________________________________________________________
  |     Tabla   |     Columna    |       Tipo de Datos        |
  |:-----------:|:--------------:|:--------------------------:| 
  | CATEGORIA   |  ID_CATEGORIA  |INT NOT NULL AUTO_INCREMENTE|  
  |             |NOMBRE_CATEGORIA|  VARCHAR(250) NOT NULL     |
  









  |     Tabla   |       Columna      |       Tipo de Datos         |
  |:-----------:|:------------------:|:---------------------------:|
  |  USUARIOS   |  ID_USUARIOS       | INT NOT NULL AUTO_INCREMENT | 
  |             | NOMBRE_USUARIO     | VARCHAR(250) NOT NULL       | 
  |             |TOTAL_COMENTARIOS   |    INT                      | 














  |     Tabla   |       Columna      |       Tipo de Datos         |
  |:-----------:|:------------------:|:---------------------------:|
  |RESTAURANTES |ID_RESTAURANTE      | INT NOT NULL AUTO_INCREMENT | 
  |             |ID_CATEGORIA        | INT NOT NULL                | 
  |             |NOMBRE_RESTAURANTE  | VARCHAR(250) NOT NULL       | 
  |             |DIRECCION           | VARCHAR (250)               |  
  |             |REGION              | VARCHAR(100) NOT NULL       | 
  |             |RATING              | FLOAT NOT NULL              | 
  |             |TOTAL_COMENTARIOS   | INT NOT NULL                | 





















  |     Tabla   |       Columna      |       Tipo de Datos         |
  |:-----------:|:------------------:|:---------------------------:|
  | COMENTARIOS |ID_COMENTARIO       | INT NOT NULL AUTO_INCREMENT |
  |             |ID_RESTAURANTE      | INT NOT NULL                | 
  |             |ID_CATEGORIA        | INT NOT NULL                | 
  |             |RATING              | FLOAT NOT NULL              | 
  |             |COMENTARIO          | TEXT NOT NULL               |  
  |             |VOTOS_COMENTARIO    | INT                         | 
  










  |     Tabla   |     Columna    |            Tipo de Datos            |
  |:-----------:|:--------------:|:-----------------------------------:| 
  | ADVERTENCIAS| ID_RESTAURANTE |  INT NOT NULL                       |  
  |             | MENSAJE        |  VARCHAR (250)                      |
  |             | FECHA          |  TIMESTAMP DEFAULT CURRENT_TIMESTAMP|


 # Estructura e ingesta de datos
   Se realiza por medio del archivo population.sql. La carga de cada una de las tablas se realiza por medio de una copia de los archivos csv colocados en la carpeta data_csv. 
  * Archivo Categorias.csv fue utilizado para la carga de datos en la tabla Categorias.
  * Archivo Comentarios.csv fue utilizado para la carga de datos en la tabla Comentarios.
  * Archivo Restaurantes.csv fue utilizado para la carga de datos en la tabla Restaurantes.
  * Archivo Usuarios.csv fue utilizado para la carga de datos en la tabla Usuarios.


 # Objetivo de la base de datos

 ## Documentación de Vistas

 ### Vista: vista_comentarios_restaurantes
 
 #### Descripcion:  esta vista busca visualizar informacion adicional sobre los restaurantes como el rating promedio que obtienen

#### Columnas:
 
   * id_restaurante: identificador unico del restaurante.
   * nombre_restaurante: nombre del restaurante.
   * total_comentarios: numero de comentarios que obtuvo su restaurante.
   * promedio_rating: calificacion promedio del restaurante en base a la calificacion individual de cada usuario.

#### Ejemplo de consulta:

``` SQL
         SELECT * FROM vista_comentarios_restaurantes
         WHERE total_comentarios > 20
         ORDER BY promedio_rating DESC;
```

 ### Vista: Vista_comentarios_populares
 
 #### Descripcion:  esta vista busca visualizar los comentarios mas votados por los usuarios.

#### Columnas:
 
   * id_comentario: identificador unico del comentario.
   * nombre_restaurante: nombre del restaurante.
   * nombre_usuario: nombre de quien deja su comentario.
   * rating: calificacion promedio del restaurante que envia el usuario.
   * comentario: opinion que deja el usuario sobre el restaurante.
   * votos_comentario: numero de votos que obtuvo el comentario.

#### Ejemplo de consulta:
``` SQL
       SELECT * FROM vista_comentarios_populares
       ORDER BY votos_comentario DESC;
```
 ### Vista: vista_restaurantes_alta_calificacion
 
 #### Descripcion:  esta vista busca visualizar los comentarios con alta calificacion

#### Columnas:
 
   * id_restaurante: identificador unico del restaurante.
   * nombre_restaurante: nombre del restaurante.
   * rating: calificacion promedio del restaurante que envia el usuario.

#### Ejemplo de consulta:
``` SQL
       SELECT * FROM vista_restaurantes_alta_calificacion
       ORDER BY rating DESC;
```

 ### Vista: vista_comentarios_region
 
 #### Descripcion:  esta vista busca visualizar los comentarios por region.

#### Columnas:
 
   * region: marca area geográfica donde se ubica cada restaurante.
   * total_comentarios: numero de comentarios que se obtiene en este caso por region.
  

#### Ejemplo de consulta:
``` SQL
       SELECT * FROM vista_comentarios_region
```

 ## Documentación de Funciones

 ### Funcion: comentarios_region
 
 #### Descripcion:  Función para obtener el numero de comentarios acumulado por region.

#### Parámetros: 
* Region: orientación geográfica del lugar donde se encuentra el restaurante dentro de la ciudad.
#### Retorno:
* numero_comentarios: Cantidad de comentarios que acumula la region.

#### Ejemplo de consulta:
 ``` SQL
       SELECT comentario_region('sur');
``` 

 ### Funcion: rating_categoria
 
 #### Descripcion:  funcion para obtener el rating promedio de los restaurantes en una categoria especifica

#### Parámetros: 
* categoria_nombre: nombre de las categorias que integran los restaurantes.
#### Retorno:
* avg_rating: rating promedio obtenido por la categoria.

#### Ejemplo de consulta:
 ``` SQL
       SELECT rating_categoria('familiar');
``` 

 ## Documentación de Procedimientos Almacenados

### Procedimiento: actualizar_region

#### Descripción: Este procedimiento actualiza los codigos numericos (1,2,3,4) de la columna "Region" sean representados por "Sur","Norte","Oeste","Este".

#### Parámetros: 
* Region: orientación geográfica del lugar donde se encuentra el restaurante dentro de la ciudad.
#### Retorno:
* Region correspondiente a cada uno de los numeros enteros indicados.

#### Ejemplo de consulta:
 ``` SQL
       CALL actualizar_region('1');
``` 
### Procedimiento: procedure_tipo_comentario

#### Descripción: Este procedimiento  identifica los comentarios positivos y negativos.

#### Parámetros: 
* rating: calificacion del restaurante que envia el usuario. 
#### Retorno:
* tipo_comentario: genera dos respuestas "positivo", "negativo".

#### Ejemplo de consulta:
 ``` SQL
       CALL procedure_tipo_comentario('3');
```
 ## Documentación de Triggers

### Trigger: restaurantes_populares

#### Descripción: Este trigger registra los restaurantes mas populares en terminos de número de comentarios acumulados.

#### Detalles:
* Tabla afectada: advertencias
* Acción: INSERT
* Información registrada: total_comentarios

#### Ejemplo:
* Se inserta un nuevo cliente y su total de comentarios en la tabla Restaurantes.
* El trigger registra la acción en la tabla Restaurantes con los detalles correspondientes y en base a su resultado agrega o no,un nuevo registro a la tabla advertencias.

### Trigger: restaurantes_pocos_comentarios

#### Descripción: Este trigger registra los restaurantes menos populares en terminos de número de comentarios acumulados.

#### Detalles:
* Tabla afectada: Restaurantes
* Acción: INSERT
* Información registrada: total_comentarios

#### Ejemplo:
* Se inserta un nuevo cliente y su total de comentarios en la tabla Restaurantes.
* El trigger registra la acción en la tabla Restaurantes con los detalles correspondientes.

# Roles y permisos
``
./objects/user_roles.sql
``

Se genera dos roles:

1. ``role_crud_tables`` : Este rol tiene permisos para generar CRUD  en todas las tablas de la base de datos.
2. ``role_select_tables`` : Este rol tiene permisos solo para SELECT en todas las tablas de la base de datos.

Además, se crea dos usuarios para el primer rol y tres usuarios para el segundo y se les asigna los roles correspondientes.

# Back up de la base de datos

Se puede generar un comando en el archivo ``make backup`` que me permite ejecutar un backup de manera manual.

# Herramientas y tecnologias utilizadas

* Makefile (para generar una interfaz de procesos)
* Docker (para generar un container)
* MySQL (motor de bases de datos)
* MySQL Workbench (interfaz grafica)
* Mockaroo (para otorgar datos ficticios)

# Como levantar el proyecto en CodeSpaces GitHub

* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creación del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores
