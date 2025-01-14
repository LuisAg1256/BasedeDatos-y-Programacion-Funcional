# BasedeDatos
## 1. Tabla: Tabla de datos del proyecto integrador

| Nombre del Campo | Tipo de Dato | Propósito                                                   | Observaciones                      |
|------------------|--------------|-------------------------------------------------------------|------------------------------------|
| Adult               | boolean      | Identifica si la pelicula es para adultos o no.          |                 |
| belong_to_collection        | String       | Identifica a que grupo de peliculas pertenece una pelicula  | Puede contener URLs y ademas es un JSON|
| budget           | Double       | Presupuesto de la pelicula                                    |                                    |
| genres      | String       |  Género o categorías asociadas.   | Puede contener URLs y ademas es un JSON               |
| homepage      | String       | Ruta de la pelicula a una pagina web con informacion sobre ella  | Puede contener URLs               |
| id      | String       | Identificador de la pelicula     |          |
| imdb_id      | String       | Identificador de la base de datos de la pelicula     |              |
| original_languague      | String       | Idioma original de la pelicula    |               |
| original_title      | String       | Titulo original de la pelicula   |             |
| overview      | String       | Descripcion de la pelicula                      |              |
| popularity      | String       | Popularidad de la pelicula                            |              |
| poster_Path      | String       | Ruta del poster de la coleccion |          |
| production_companies      | String       | Compañias productoras de la pelicula          | Es un archivo JSON              |
| production_countries      | String       | Pais o paises en el que se produce la pelicula                           |  Es un archivo JSON          |
| release_date      | String       | Fecha de lanzamiento de la pelicula        |              |
| revenue      | String       | Ganancias de la pelicula                           |             |
| runtime      | String       | Duracion de la pelicula                          |               |
| spoken_languagues      | String       | Idiomas al que esta doblada la pelicula  |  Es un archivo JSON            |
| status      | String       | Estado de la pelicula                         |              | 
| tagline      | String       | Representacion leve de la pelicula                          |     |
| title      | String       | Ruta del póster de la colección.                            |   |
| video      | boolean       | Si contiene o no un video                            |                |
| vote_average      | Double       | Promedio de votos                          |            |
| vote_count      | Int       | Conteo de votos                          |              |
| keywords      | String       | Las palabras clave de la pelicula  | Es un archivo JSON             |
| cast      | String       | Los actores que intervienen dentro de la pelicula con su respectivo orden, identificadores y personaje al que interpretan  | Es un archivo JSON                |
| crew      | String       | El equipo tecnico detras de la pelicula que ayuda en su produccion y desarrollo   | Es un archivo JSON               |
| ratings      | String       | La validacion y aceptacion por parte de los usuarios de la pelicula   | Es un archivo JSON              |
## 2. Las diferentes tablas creadas a partir del diseño conecptual
Diccionario de Datos
### Tabla: Collection
•	ID: Integer. Identificador único de la colección.

•	back_Path: String. Ruta de la imagen de fondo asociada a la colección.

•	Nombre: String. Nombre de la colección.

•	poster_Path: String. Ruta del póster de la colección.

### Tabla: Pelicula
•	Id: Integer. Identificador único de la película.

•	Adult: Boolean. Indica si la película es para público adulto.

•	Title: String. Título de la película.

•	Popularity: Float. Indicador de popularidad basado en métricas específicas.

•	Fecha_Lanzamiento: Date. Fecha de estreno de la película.

•	Descripcion: Text. Resumen o sinopsis de la película.

•	Estado: String. Estado de la película (por ejemplo, "Lanzada", "En producción").

•	Trailer (Video): Boolean. Indica si hay un tráiler disponible.

•	Imdb_id: String. Identificador único en la base de datos IMDb.

•	Ganancia: Float. Recaudación total de la película.

•	Eslogan: String. Frase promocional de la película.

•	Genre: String. Género o categorías asociadas a la película.

•	Duracion: Integer. Duración de la película en minutos.
### Tabla: PaginaPelicula
•	Link: String. URL de la página web relacionada con la película.

•	Nombre: String. Nombre de la página.

•	Propietario: String. Propietario o entidad responsable de la página.
### Tabla: Language
•	Id_ISO: String. Código ISO del idioma.

•	Name: String. Nombre del idioma.

### Tabla: Production Companies
•	Id: Integer. Identificador único de la compañía productora.

•	Name: String. Nombre de la compañía productora.
### Tabla: Elenco
•	Gender: Integer. Género del actor (1: Mujer, 2: Hombre, 0: No especificado).

•	Id_Actor: Integer. Identificador único del actor.

•	Character: String. Nombre del personaje interpretado por el actor.

•	Profile_Path: String. Ruta de la imagen del perfil del actor.

•	Cast_id: Integer. Identificador único del elenco.

•	Name_Actor: String. Nombre del actor.

### Tabla: Production Countries
•	Id_: String. Código o identificador único del país.

•	Name: String. Nombre del país.
### Tabla: Crew
•	Profile_Path: String. Ruta de la imagen de perfil del miembro del equipo.

•	Credit_id: String. Identificador único del crédito.

•	Department: String. Departamento al que pertenece el miembro del equipo (por ejemplo, "Dirección", "Producción").

•	Job: String. Puesto específico desempeñado en la producción.

•	Name: String. Nombre del miembro del equipo.

•	Gender: Integer. Género del miembro del equipo (1: Mujer, 2: Hombre, 0: No especificado).
### Tabla: Rating
•	User_Id: Integer. Identificador único del usuario que realizó la calificación.

•	Rating: Float. Puntuación asignada a la película.

•	TimeStamp: DateTime. Fecha y hora en que se realizó la calificación.
### Tabla: Palabras Clave
•	Id: Integer. Identificador único de la palabra clave.

•	Name: String. Nombre o descripción de la palabra clave.
## 3. Descripcion del problema 
El sistema está diseñado para gestionar de manera eficiente los datos asociados con una base de películas. Este incluye información detallada sobre las películas, como su título, género, popularidad, fecha de lanzamiento, duración, estado y eslogan. Además, almacena datos sobre colecciones, idiomas disponibles, países de producción, compañías productoras y páginas web relacionadas.

El sistema también administra la participación de actores (elenco) y del equipo técnico (crew), con detalles como sus roles, perfiles y género. Se incluye un módulo para gestionar calificaciones y opiniones de los usuarios, lo que permite realizar análisis de popularidad y percepción.

Adicionalmente, el sistema soporta palabras clave para categorizar y facilitar la búsqueda de películas. Todo esto se complementa con la integración de tráileres y datos de recaudación, lo que lo convierte en una herramienta robusta para el análisis, gestión y promoción de contenido cinematográfico.
