DROP SCHEMA

IF EXISTS ProyectoIntegrador;
	CREATE SCHEMA ProyectoIntegrador COLLATE = utf8_general_ci;

USE ProyectoIntegrador;
-- Create table for Job
CREATE TABLE Job (
    ID_Job INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for Department
CREATE TABLE Department (
    ID_Department INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ID_Job INT,
    FOREIGN KEY (ID_Job) REFERENCES Job(ID_Job)
);

-- Create table for DS
CREATE TABLE DS (
    ID INT,
    ID INT,
    PRIMARY KEY (ID_Staff, ID_Department),
    FOREIGN KEY (ID_Staff) REFERENCES Staff(ID_Staff),
    FOREIGN KEY (ID_Department) REFERENCES Department(ID_Department)
);

-- Create table for Staff
CREATE TABLE Staff (
    ID_Staff INT PRIMARY KEY,
    Profile_Path VARCHAR(255),
    Name VARCHAR(255) NOT NULL,
    ID_Gender INT,
    FOREIGN KEY (ID_Gender) REFERENCES Gender(ID_Gender)
);

-- Create table for Gender
CREATE TABLE Gender (
    ID_Gender INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

-- Create table for Pelicula (Movie)
CREATE TABLE Pelicula (
    ID_Pelicula INT PRIMARY KEY,
    Adult BOOLEAN,
    ID_Collection INT,
    Title VARCHAR(255) NOT NULL,
    Popularity DECIMAL(10, 2),
    Fecha_Lanzamiento DATE,
    Descripcion TEXT,
    Ganancia DECIMAL(15, 2),
    Estado VARCHAR(50),
    Trailer VARCHAR(255),
    Imdb_id VARCHAR(50),
    ID_LENGUAJE INT,
    homePage VARCHAR(255),
    Estogan VARCHAR(255),
    Genero VARCHAR(255),
    Duracion INT,
    FOREIGN KEY (ID_Collection) REFERENCES Collection(ID_Collection),
    FOREIGN KEY (ID_LENGUAJE) REFERENCES Lenguaje(ID_LENGUAJE)
);

-- Create table for Collection
CREATE TABLE Collection (
    ID_Collection INT PRIMARY KEY,
    Back_Path VARCHAR(255),
    Nombre VARCHAR(255) NOT NULL,
    Poster_Path VARCHAR(255)
);

-- Create table for Genre Movie
CREATE TABLE GenreMovie (
    ID_GenreMovie INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for GP (Genre-Pelicula relationship)
CREATE TABLE GP (
    ID_Pelicula INT,
    ID_GenreMovie INT,
    PRIMARY KEY (ID_Pelicula, ID_GenreMovie),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula),
    FOREIGN KEY (ID_GenreMovie) REFERENCES GenreMovie(ID_GenreMovie)
);

-- Create table for Performance
CREATE TABLE Performance (
    ID_Actors INT,
    ID_Pelicula INT,
    Characterd VARCHAR(255),
    Orderd INT,
    Credit_id VARCHAR(255),
    PRIMARY KEY (ID_Actors, ID_Pelicula),
    FOREIGN KEY (ID_Actors) REFERENCES Actors(ID_Actors),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for Actors
CREATE TABLE Actors (
    ID_Actors INT PRIMARY KEY,
    Profile_Path VARCHAR(255),
    Name_Actor VARCHAR(255) NOT NULL,
    ID_Gender INT,
    FOREIGN KEY (ID_Gender) REFERENCES Gender(ID_Gender)
);

-- Create table for Development
CREATE TABLE Development (
    ID_Staff INT,
    ID_Pelicula INT,
    Credit_id VARCHAR(255),
    PRIMARY KEY (ID_Staff, ID_Pelicula),
    FOREIGN KEY (ID_Staff) REFERENCES Staff(ID_Staff),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for PalabrasClave (Keywords)
CREATE TABLE PalabrasClave (
    ID_PC INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for PCP (PalabrasClave-Pelicula relationship)
CREATE TABLE PCP (
    ID_PC INT,
    ID_Pelicula INT,
    PRIMARY KEY (ID_PC, ID_Pelicula),
    FOREIGN KEY (ID_PC) REFERENCES PalabrasClave(ID_PC),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for ProductionCompanies
CREATE TABLE ProductionCompanies (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ID_Pelicula INT,
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for ProductionCountries
CREATE TABLE ProductionCountries (
    ID_ISOC INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for PP (ProductionCountries-Pelicula relationship)
CREATE TABLE PP (
    ID_ISOC INT,
    ID_Pelicula INT,
    PRIMARY KEY (ID_ISOC, ID_Pelicula),
    FOREIGN KEY (ID_ISOC) REFERENCES ProductionCountries(ID_ISOC),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for Lenguaje (Language)
CREATE TABLE Lenguaje (
    ID_LENGUAJE INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create table for Dubbing
CREATE TABLE Dubbing (
    ID_ISOL INT,
    ID_Pelicula INT,
    PRIMARY KEY (ID_ISOL, ID_Pelicula),
    FOREIGN KEY (ID_ISOL) REFERENCES Lenguaje(ID_LENGUAJE),
    FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula)
);

-- Create table for usuarios (Users)
CREATE TABLE usuarios (
    user_id INT PRIMARY KEY
);

-- Create table for UP (User-Pelicula relationship)
CREATE TABLE UP (
    ID_user_id INT,
    ID_pelicula INT,
    Rating DECIMAL(3, 2),
    vote_count INT,
    TimeStamp DATETIME,
    vote_average DECIMAL(3, 2),
    PRIMARY KEY (ID_user_id, ID_pelicula),
    FOREIGN KEY (ID_user_id) REFERENCES usuarios(user_id),
    FOREIGN KEY (ID_pelicula) REFERENCES Pelicula(ID_Pelicula)
);