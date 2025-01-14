# ProyectoIntegrador_PFR
Repositorio del proyecto integrador - Programación funcional y reactica


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
### 2. Análisis de datos en columnas numéricas (estadísticas básicas)

Este script utiliza la librería `pandas` para leer y procesar un archivo CSV que contiene datos relacionados con películas. A continuación se explica el propósito de cada sección y línea de código.

```python
import pandas as pd

# Ruta del archivo
archivo_path = r'C:\Users\alexs\Downloads\pi_movies_small.csv'  # RUTA DEL ARCHIVO

# Intentar cargar el archivo CSV con diferentes opciones
try:
    # Usar delimitador explícito si es necesario (por ejemplo, punto y coma)
    df = pd.read_csv(archivo_path, delimiter=';', encoding='utf-8', on_bad_lines='warn')

    # Cambiar la configuración para mostrar más columnas
    pd.set_option('display.max_columns', 25)  # Muestra hasta 25 columnas

    pd.set_option('display.max_rows', 25)     # Muestra hasta 25 filas

    # Verificar las primeras filas para asegurarse de que se cargaron correctamente
    print("Primeras 25 filas del archivo:")
    print(df.head(25))  # Imprime las primeras 25 filas del archivo

    # Verificar el número de filas y columnas
    print("\nFilas y columnas en el archivo:")
    print(df.shape)

    # Estadísticas básicas de las columnas numéricas
    print("\nEstadísticas básicas de las columnas numéricas:")
    print(df.describe())

    # Estadísticas adicionales: Número de valores nulos por columna
    print("\nNúmero de valores nulos por columna:")
    print(df.isnull().sum())

except Exception as e:
    print(f"Ha ocurrido un error: {e}")
```

## Explicación del Código:

### Importación de librerías:

```python
import pandas as pd
```
- **Explicación:**  
  Se importa la librería `pandas` que se usa comúnmente para la manipulación y análisis de datos en Python. 

### Definición de la ruta del archivo:

```python
# Ruta del archivo
archivo_path = r'C:\Users\alexs\Downloads\pi_movies_small.csv'  # Ajusta la ruta según tu archivo
```
- **Explicación:**  
  Se define la ruta del archivo CSV que se va a cargar en el script. Es importante que la ruta se ajuste correctamente según la ubicación real del archivo en tu sistema.

### Carga del archivo CSV:

```python
# Intentar cargar el archivo CSV con diferentes opciones
try:
```
- **Explicación:**  
  Se usa un bloque `try` para intentar cargar el archivo CSV y manejar cualquier posible error que ocurra durante el proceso de carga.

```python
    # Usar delimitador explícito si es necesario (por ejemplo, punto y coma)
    df = pd.read_csv(archivo_path, delimiter=';', encoding='utf-8', on_bad_lines='warn')
```
- **Explicación:**  
  - Se usa `pd.read_csv()` para leer el archivo CSV en un DataFrame de `pandas`.
  - El parámetro `delimiter=';'` especifica que el archivo está delimitado por punto y coma (`;`), lo cual es común en archivos CSV de ciertas regiones.
  - `encoding='utf-8'` asegura que el archivo sea leído con el formato de codificación UTF-8.
  - `on_bad_lines='warn'` permite que el script continúe incluso si encuentra líneas problemáticas, y solo muestra una advertencia.

### Ajuste de configuración para mostrar más filas y columnas:

```python
    # Cambiar la configuración para mostrar más columnas
    pd.set_option('display.max_columns', 25)  # Muestra hasta 25 columnas

    pd.set_option('display.max_rows', 25)     # Muestra hasta 25 filas
```
- **Explicación:**  
  Estas líneas configuran `pandas` para que se muestren hasta 25 columnas y 25 filas cuando imprimas el DataFrame en la consola. Esto te ayuda a revisar una porción más grande de los datos sin tener que desplegar todo el conjunto de datos si es muy grande.

### Verificación de las primeras filas:

```python
    # Verificar las primeras filas para asegurarse de que se cargaron correctamente
    print("Primeras 25 filas del archivo:")
    print(df.head(25))  # Imprime las primeras 25 filas del archivo
```
- **Explicación:**  
  `df.head(25)` devuelve las primeras 25 filas del archivo. Esto es útil para inspeccionar visualmente una muestra de los datos y asegurarse de que se han cargado correctamente.

### Verificación de filas y columnas:

```python
    # Verificar el número de filas y columnas
    print("\nFilas y columnas en el archivo:")
    print(df.shape)
```
- **Explicación:**  
  `df.shape` devuelve una tupla que muestra el número de filas y columnas del DataFrame. Esto proporciona un vistazo rápido a la estructura del archivo cargado.

### Estadísticas básicas de las columnas numéricas:

```python
    # Estadísticas básicas de las columnas numéricas
    print("\nEstadísticas básicas de las columnas numéricas:")
    print(df.describe())
```
- **Explicación:**  
  - `df.describe()` genera estadísticas básicas (como el conteo, la media, la desviación estándar, el valor mínimo y máximo) de las columnas numéricas en el DataFrame. 
  - Se imprime esta información para dar un resumen rápido de los datos numéricos en el archivo.

### Verificación de valores nulos:

```python
    # Estadísticas adicionales: Número de valores nulos por columna
    print("\nNúmero de valores nulos por columna:")
    print(df.isnull().sum())
```
- **Explicación:**  
  - `df.isnull()` devuelve un DataFrame de valores booleanos indicando si cada celda es nula (`True`) o no (`False`).
  - `sum()` calcula la cantidad de valores nulos por columna, lo cual es útil para identificar la calidad de los datos.

### Manejo de errores:

```python
except Exception as e:
    print(f"Ha ocurrido un error: {e}")
```
- **Explicación:**  
  - Si ocurre cualquier error durante el proceso de lectura o análisis del archivo, este bloque `except` captura la excepción y muestra un mensaje con el error.
  - Esto es útil para depurar el código en caso de que algo salga mal, como un error en la ruta del archivo o problemas con los datos.

---

## Resumen

Este script lee un archivo CSV utilizando la librería `pandas`, realiza algunas comprobaciones sobre las columnas presentes, genera estadísticas básicas para las columnas numéricas y muestra algunas filas de ejemplo. También verifica si hay valores nulos en las columnas y maneja cualquier error que pueda ocurrir durante el proceso.

El propósito de este código es facilitar la carga y análisis preliminar de un conjunto de datos en formato CSV. Esto es útil para obtener una visión general de los datos antes de realizar análisis más profundos.

### 3. Análisis de datos en columnas tipo texto (algunas col. - distribución de frecuencia). OJO: no considerar columnas en formato JSON

En este ejercicio, realizamos un análisis de las columnas que contienen datos de tipo texto en el conjunto de datos, excluyendo aquellas que contienen datos en formato JSON. El objetivo es calcular la distribución de frecuencia de los valores en esas columnas. A continuación se explica el proceso y se presenta el código completo.

#### Código para el análisis:

```python
import pandas as pd
import json

# Ruta del archivo CSV
archivo_path = r'C:\Users\alexs\Downloads\pi_movies_small.csv'  # RUTA DEL ARCHIVO

# Intentar cargar el archivo CSV con delimitador punto y coma y manejo de errores
try:
    # Usar delimitador explícito si es necesario (por ejemplo, punto y coma)
    df = pd.read_csv(archivo_path, delimiter=';', encoding='utf-8', on_bad_lines='warn')

    # Lista de columnas que contienen datos en formato JSON que no deben ser analizadas
    columnas_excluidas = ['genres', 'keywords', 'cast', 'crew', 'ratings']

    # Filtrar columnas de tipo texto que no sean JSON
    columnas_texto = [col for col in df.columns if df[col].dtype == 'object' and col not in columnas_excluidas]

    # Análisis de distribución de frecuencia de las columnas tipo texto
    for col in columnas_texto:
        print(f"\nDistribución de frecuencia de la columna '{col}':")
        print(df[col].value_counts())

except Exception as e:
    print(f"Ha ocurrido un error: {e}")
```

#### Explicación del código:

1. **Importación de las librerías necesarias**:
   ```python
   import pandas as pd
   import json
   ```
   Se importan las librerías necesarias: `pandas` para el manejo de los datos y `json` para el tratamiento de los posibles datos JSON que podamos encontrar en las columnas.

2. **Especificación de la ruta del archivo CSV**:
   ```python
   archivo_path = r'C:\Users\alexs\Downloads\pi_movies_small.csv'  # Ajusta la ruta según tu archivo
   ```
   Aquí se define la ruta del archivo CSV desde donde se cargarán los datos. Debes asegurarte de que la ruta sea correcta y el archivo esté disponible.

3. **Carga del archivo CSV con manejo de errores**:
   ```python
   df = pd.read_csv(archivo_path, delimiter=';', encoding='utf-8', on_bad_lines='warn')
   ```
   Se usa la función `pd.read_csv` para cargar el archivo CSV en un DataFrame. En este caso, se indica que el delimitador es el punto y coma (`;`), que es común en algunos archivos CSV. También se establece la codificación `utf-8` y se especifica que, en caso de encontrar líneas problemáticas, se deben advertir pero no detener la ejecución.

4. **Exclusión de columnas con datos JSON**:
   ```python
   columnas_excluidas = ['genres', 'keywords', 'cast', 'crew', 'ratings']
   ```
   Aquí se definen las columnas que contienen datos en formato JSON y que no serán analizadas en el análisis de frecuencia. Estas columnas suelen tener estructuras complejas que no se manejan de la misma forma que las columnas de texto simple.

5. **Filtrado de las columnas tipo texto**:
   ```python
   columnas_texto = [col for col in df.columns if df[col].dtype == 'object' and col not in columnas_excluidas]
   ```
   Se crea una lista de las columnas que contienen datos de tipo texto (`dtype == 'object'`) y que no están en la lista de columnas excluidas. Estas son las columnas que se analizarán en el siguiente paso.

6. **Análisis de la distribución de frecuencia**:
   ```python
   for col in columnas_texto:
       print(f"\nDistribución de frecuencia de la columna '{col}':")
       print(df[col].value_counts())
   ```
   Para cada columna de tipo texto que no está excluida, se usa el método `value_counts()` para calcular la frecuencia de cada valor único en la columna. Esto devuelve una serie con los valores y su respectiva cantidad de ocurrencias. El resultado se imprime para que sea visible.

7. **Manejo de errores**:
   ```python
   except Exception as e:
       print(f"Ha ocurrido un error: {e}")
   ```
   Si ocurre cualquier error en el proceso, se captura y se imprime el mensaje de error correspondiente para ayudar en la depuración.

#### Resumen:

Este código permite realizar un análisis básico sobre las columnas de texto en un conjunto de datos, específicamente para contar cuántas veces se repite cada valor único en las columnas seleccionadas. Al excluir las columnas que contienen datos en formato JSON, nos aseguramos de no procesar información compleja que no se puede analizar de la misma forma. Este análisis es útil para identificar patrones, errores de entrada o para obtener una visión general de los datos en las columnas de texto.

### 4.Consultar sobre librería play-json (trabajo json en scala) y hacer:
### Usar cualquier JSON pequeño para aprender play-json
### Usar en algunas columnas JSON para obtener datos.
```scala 
// Importa la librería play-json, que se utiliza para trabajar con JSON en Scala
import play.api.libs.json._

// Define una clase case llamada Movie, que representa una película con tres atributos:
// - title: el título de la película (String)
// - genres: una lista de géneros asociados a la película (List[String])
// - budget: el presupuesto de la película en dólares (Int)
case class Movie(title: String, genres: List[String], budget: Int)

// Define un objeto companion(objeto que se asocia con la clase y permite definir propiedades y funciones ) para la clase Movie que extiende App para que pueda ejecutarse como programa principal
object Movie extends App {
  // Define un formato implícito para la clase Movie
  // Esto permite que play-json serialice (convertir Movie a JSON) y deserialice (convertir JSON a Movie) automáticamente
  implicit val movieFormat: Format[Movie] = Json.format[Movie]
}

// Define una cadena en formato JSON que representa una película
val jsonString = """{"title":"Inception","genres":["Action","Sci-Fi"],"budget":160000000}"""

// Parsea (convierte)  la cadena JSON a un objeto play-json de tipo JsValue
val parsedJson = Json.parse(jsonString)

// Convierte el objeto JsValue en una instancia de Movie utilizando el formato implícito definido anteriormente
val movie = parsedJson.as[Movie]

// Imprime la instancia de Movie deserializada desde el JSON
println(movie)

// Convierte la instancia de Movie de vuelta a JSON utilizando el formato implícito
val backToJson = Json.toJson(movie)

// Imprime el JSON generado a partir de la instancia de Movie
println(backToJson)

// Procesa una colección (asumiendo que `rows` es una lista de objetos que tienen un atributo `genres` en formato JSON):
// 1. Extrae la columna `genres` de cada fila, asegurándose de filtrar aquellas que están vacías.
// 2. Parsea cada valor JSON en un objeto JsValue.
val genresJson = rows.map(_.genres).filter(_.nonEmpty).map(Json.parse)

// Analiza los datos JSON de la columna `genres`:
// 1. Navega por cada JSON para obtener los valores de los campos "name" (de los géneros).
// 2. Convierte esos valores en una lista de cadenas.
// 3. Agrupa los géneros por su nombre.
// 4. Cuenta cuántas veces aparece cada género en las filas y crea un mapa con el resultado.
val genreCounts = genresJson.flatMap(json => (json \\ "name").map(_.as[String])).groupBy(identity).mapValues(_.size)

// Imprime el conteo de géneros agrupados
println(genreCounts)

```
![image](https://github.com/user-attachments/assets/b330492b-4109-4efa-aa17-34f7eebeb507)
 
