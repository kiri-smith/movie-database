SELECT *
FROM movies
JOIN reviews ON movies.movie_id = reviews.id;