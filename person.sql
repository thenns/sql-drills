CREATE TABLE people (
    person_id serial PRIMARY KEY,
    name VARCHAR (50) NOT NULL,
    age INT NOT NULL,
    height MKS NOT NULL,
    city VARCHAR (50) NOT NULL,
    favorite_color VARCHAR (20)
);

INSERT INTO people (name, age, height, city, favorite_color)
VALUES ('jane', 25, 170cm, 'washington dc', 'blue')
VALUES ('john', 30, 165cm, 'salt lake city', 'red')
VALUES ('mary', 47, 167cm, 'dallas', 'green')
VALUES ('mike', 18, 185cm, 'portland', 'black')
VALUES ('michelle', 32, 160cm, 'san diego', 'brown')
RETURNING *;

SELECT * FROM people ORDER BY height ASC;
SELECT * FROM people ORDER BY height DESC;
SELECT * FROM people ORDER BY age ASC;
SELECT * FROM people WHERE age > 20;
SELECT * FROM people WHERE age = 18;
SELECT * FROM people WHERE age < 20 & age > 30;
SELECT * FROM people WHERE age <> 27;
SELECT * FROM people WHERE favorite_color <> 'red';
SELECT * FROM people WHERE favorite_color <> 'red' & favorite_color <> 'blue';
SELECT * FROM people WHERE favorite_color = 'orange' | favorite_color = 'green';
SELECT * FROM people WHERE favroite_color IN ('orange', 'green', 'blue');
SELECT * FROM people WHERE favorite_color IN ('yellow', 'purple');
