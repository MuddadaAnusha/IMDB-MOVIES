SELECT * FROM movies;
SELECT * FROM directors;
SELECT COUNT(*) FROM movies;
SELECT * FROM directors WHERE name in ('James Cameron','Luc Besson','John Woo');
SELECT * FROM directors WHERE name LIKE 'S%';
SELECT COUNT(*) FROM directors WHERE gender = 'female';
SELECT name FROM directors WHERE gender = 'female'
LIMIT 1
OFFSET 9;
SELECT name FROM directors WHERE gender = 'female'
LIMIT 10;
SELECT * FROM movies ORDER BY popularity DESC LIMIT 3;
SELECT * FROM movies ORDER BY revenue DESC LIMIT 3;
SELECT title, vote_average FROM movies WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;
SELECT m.title FROM movies m
JOIN directors d ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';

SELECT d.name, COUNT(m.id) AS total_movies
FROM movies m JOIN directors d
ON m.director_id = d.id GROUP BY d.name
ORDER BY total_movies DESC LIMIT 1;
SELECT d.name FROM movies m, directors d
WHERE m.director_id = d.id GROUP BY d.name
ORDER BY SUM(m.revenue - m.budget) DESC LIMIT 1;