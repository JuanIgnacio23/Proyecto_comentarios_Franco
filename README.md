## Temática del proyecto
Se esta trabajando en el analisis de la competencia y demanda en la zona urbana donde se abrira un nuevo restaurante. Nos enfrentamos a la necesidad de diseñar una base de datos que contenga los servicios y caracteristicas que los restaurantes ofrecen, asi como tambien lo que las personas opinan del servicio ofrecido, para ello recopilamos datos de Google maps de cada uno de los restaurantes y sus comentarios. 


## Descripción del problema:

1. **  **

2. 


## Objetivo:
Diseñar una base de datos relacional que satisfaga la necesidad de recopilar información de la competencia y demanda que tendra el nuevo restaurante de la ciudad, a partir de los comentarios. La base de datos deberá ser eficiente para almacenar y gestionar los comentarios de Google sobre restautantes de la ciudad.

## Descripción de la Base de Datos - Comentarios sobre restaurantes
Esta base de datos está diseñada para gestionar comentarios de restaurantes en Google sobre una determinada ciudad, asi como la información relacionada con los clientes, restaurantes y tipo de categorias asociadas a los mismos.

## Tablas:
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

6. **Fotos**:
   Almacena las fotos que los usuarios publican junto a su comentario.
   Atributos: IDFOTO, IDCOMENTARIO, URL_FOTO.

## Problemática Resuelta:
Esta base de datos permite gestionar las reseñas de los restaurantes y las demandas y/o valoraciones de los usuarios desde los comentarios de Google sobre los restaurantes de la ciudad. Algunos aspectos que abordan incluyen:
       Registro de los usuarios y los restaurantes involucrados.
       Clasificación de los comentarios y restaurantes según su tipo.
       Imagen que los usuarios relacionan con el restaurante.
       Registro del comentario realizado por los usuarios.

En resumen, esta base de datos proporciona una estructura para gestionar y analizar eficientemente las percepciones de los usuarios sobres los restaurantes de la ciudad, lo que contribuye a que el nuevo restaurante de la ciudad encuentre fuerzas, oportunidades, debilidades y amenazas en el mercado.


## Diagrama entidad relación (DER)



  


   
   
