# BasedeDatos
# Entregable 3.1
## **1. Análisis del dataset**

El dataset proporcionado contiene información detallada sobre películas, actores, equipos de producción, calificaciones de usuarios y palabras clave relacionadas. Este análisis se enfoca en comprender la estructura, calidad y utilidad de los datos para la gestión cinematográfica.

### **Características principales:**
- **Volumen de datos:** El dataset incluye múltiples tablas interrelacionadas, cada una diseñada para representar un aspecto específico del ecosistema cinematográfico.
- **Diversidad de datos:** Contiene datos categóricos, numéricos, booleanos y textuales que abarcan desde características técnicas (duración, presupuesto, ganancias) hasta atributos subjetivos (popularidad, calificaciones de usuarios).
- **Complejidad estructural:** Varios campos almacenan información en formato JSON, lo que requiere transformaciones adicionales para su análisis o integración en sistemas relacionales.

### **Calidad del dataset:**
1. **Consistencia:** Algunos campos, como `genres`, `production_companies` y `spoken_languages`, están en formato JSON, lo que puede dificultar su procesamiento y análisis directo en bases relacionales.
2. **Integridad:** El dataset parece contener valores nulos o vacíos en campos clave como `budget`, `revenue` y `runtime`, lo que podría afectar los análisis.
3. **Precisión:** Los valores almacenados en algunos campos, como `popularity` y `vote_average`, deben ser revisados para garantizar que sigan un formato y escala adecuados.

### **Oportunidades de mejora:**
- Normalización de tablas para reducir redundancias y mejorar la integridad referencial.
- Limpieza de datos nulos o inconsistentes, especialmente en campos esenciales para análisis financieros (`budget`, `revenue`).
- Transformación de campos JSON a estructuras tabulares para facilitar consultas complejas.

---

## **2. Descripción general del dataset**

El dataset está diseñado para gestionar y analizar datos relacionados con películas y su ecosistema. A continuación, se presentan las características generales:

### **Contenido:**
- **Películas:** Información básica como títulos, fechas de lanzamiento, géneros, duración, idioma original, presupuesto y ganancias.
- **Colecciones:** Agrupaciones de películas relacionadas, con datos como identificador, nombre y rutas de imágenes asociadas.
- **Elenco y equipo técnico:** Detalles sobre actores, personajes, roles técnicos y géneros.
- **Producción:** Información sobre compañías y países relacionados con la creación de las películas.
- **Idiomas y palabras clave:** Idiomas originales y traducidos, además de palabras clave que ayudan en la clasificación de películas.
- **Calificaciones y popularidad:** Puntuaciones de usuarios y métricas de popularidad para medir la aceptación de las películas.

### **Estructura:**
El dataset está organizado en tablas relacionales, incluyendo:
- **`Collection`**: Información sobre colecciones de películas.
- **`Pelicula`**: Detalles individuales de cada película.
- **`PaginaPelicula`**: URLs y detalles de páginas web relacionadas.
- **`Language`**: Idiomas disponibles.
- **`Production Companies` y `Production Countries`**: Información sobre las compañías productoras y países asociados.
- **`Elenco` y `Crew`**: Actores y equipo técnico relacionados con cada película.
- **`Rating`**: Opiniones y calificaciones de usuarios.
- **`Palabras Clave`**: Términos asociados con cada película.

### **Objetivo del dataset:**
El propósito principal es proporcionar una base de datos robusta para el análisis y gestión del contenido cinematográfico, permitiendo:
- Estudio de métricas de popularidad y recaudación.
- Identificación de patrones de producción y consumo.
- Gestión eficiente de datos relacionados con películas, actores y equipos técnicos.

## 3. Analisis descriptivo 
| **Nombre del Dataset**                       | Dataset de películas.                                      |
|----------------------------------------------|-----------------------------------------------------------------------------|
| **Objetivo del Dataset**                     | Gestionar y analizar información sobre películas, actores, equipos técnicos, calificaciones y palabras clave para estudios de popularidad, rentabilidad y otros análisis relacionados con la industria cinematográfica. |
| **Cuántas películas están incluidas**        | **Por determinar** (se debe contar el total de registros únicos en la tabla `Pelicula`). |
| **Cuáles son los géneros más comunes y menos presentados** | Los géneros más comunes y menos presentados pueden analizarse explorando el campo `genres` en la tabla `Pelicula` y calculando la frecuencia de cada género. |
| **Cuántas películas se producen por año**    | Se puede obtener al agrupar los datos por año usando el campo `release_date`. Esto permite identificar tendencias anuales en la producción cinematográfica. |
| **Se define si hay más de un director de películas incluido** | Sí, se puede verificar revisando los datos en la tabla `Crew` donde el campo `Job` es "Director". |
| **Cuáles otros datos o metadatos se incluyen en el Dataset** | Información sobre presupuesto, recaudación, duración, idiomas, países de producción, palabras clave, calificaciones de usuarios, popularidad y colecciones asociadas. |
| **Qué información podría analizar con este Dataset (al menos 3 ideas)** | 1. Relación entre presupuesto y recaudación. <br> 2. Comparación de géneros más populares por región o año. <br> 3. Análisis de tendencias en duración de películas a lo largo de los años. |
| **Con qué datos de películas que encuentran en sitios como - Netflix, IMDB, TMDB- se relaciona el dataset** | Se relaciona con métricas como `popularity`, `vote_average`, `genres`, `cast`, `crew`, y otros metadatos comunes en plataformas como IMDb y TMDB. |

## 4. Descripcion de datos del dataset 

| Nombre del Campo | Tipo de Dato | Propósito                                                   | Observaciones                      |
|------------------|--------------|-------------------------------------------------------------|------------------------------------|
| Adult               | boolean      | Identifica si la pelicula es para adultos o no.          |                 |
| belong_to_collection        | JSON       | Identifica a que grupo de peliculas pertenece una pelicula  | Puede contener URLs y ademas es un JSON|
| budget           | Double       | Presupuesto de la pelicula                                    |                                    |
| genres      | JSON       |  Género o categorías asociadas.   | Puede contener URLs y ademas es un JSON               |
| homepage      | String       | Ruta de la pelicula a una pagina web con informacion sobre ella  | Puede contener URLs               |
| id      | String       | Identificador de la pelicula     |          |
| imdb_id      | String       | Identificador de la base de datos de la pelicula     |              |
| original_languague      | String       | Idioma original de la pelicula    |               |
| original_title      | String       | Titulo original de la pelicula   |             |
| overview      | String       | Descripcion de la pelicula                      |              |
| popularity      | String       | Popularidad de la pelicula                            |              |
| poster_Path      | String       | Ruta del poster de la coleccion |          |
| production_companies      | JSON       | Compañias productoras de la pelicula          | Es un archivo JSON              |
| production_countries      | JSON       | Pais o paises en el que se produce la pelicula                           |  Es un archivo JSON          |
| release_date      | String       | Fecha de lanzamiento de la pelicula        |              |
| revenue      | String       | Ganancias de la pelicula                           |             |
| runtime      | String       | Duracion de la pelicula                          |               |
| spoken_languagues      | JSON       | Idiomas al que esta doblada la pelicula  |  Es un archivo JSON            |
| status      | String       | Estado de la pelicula                         |              | 
| tagline      | String       | Representacion leve de la pelicula                          |     |
| title      | String       | Ruta del póster de la colección.                            |   |
| video      | boolean       | Si contiene o no un video                            |                |
| vote_average      | Double       | Promedio de votos                          |            |
| vote_count      | Int       | Conteo de votos                          |              |
| keywords      | JSON       | Las palabras clave de la pelicula  | Es un archivo JSON             |
| cast      | JSON       | Los actores que intervienen dentro de la pelicula con su respectivo orden, identificadores y personaje al que interpretan  | Es un archivo JSON                |
| crew      | JSON       | El equipo tecnico detras de la pelicula que ayuda en su produccion y desarrollo   | Es un archivo JSON               |
| ratings      | JSON       | La validacion y aceptacion por parte de los usuarios de la pelicula   | Es un archivo JSON              |
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
