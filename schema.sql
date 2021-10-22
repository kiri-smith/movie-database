DROP DATABASE IF EXISTS movie_db;
CREATE DATABASE movie_db;

USE movie_db;

CREATE TABLE movies (
movie_id INT NOT NULL,
movie_name VARCHAR(30) NOT NULL,
year_produced INT NOT NULL,
director VARCHAR(30) NOT NULL,
PRIMARY KEY(movie_id)
);

CREATE TABLE reviews (
review TEXT,
author VARCHAR(30),
id INT,
FOREIGN KEY (id)
REFERENCES movies(movie_id)
ON DELETE SET NULL
);