-- First attempt at creating a new table
CREATE TABLE favorite (
    name varchar(100),
    color varchar(25),
    food varchar(25),
    id serial
);

-- First record
INSERT INTO favorite (name, color, food) VALUES ('Matthew', 'blue', 'everything bagels');

-- Darnit, Bob!
INSERT INTO favorite (name, color) VALUES ('Bob', 'bacon');

-- The data is messed up; nuke it from orbit
DROP TABLE favorite;

-- Try again, this time ensuring that all columns have values
CREATE TABLE favorite (
    name varchar(100) NOT null,
    color varchar(25) NOT null,
    food varchar(25) NOT null,
    id serial
);

-- Matthew's record was fine.
-- Fixing Bob...
INSERT INTO favorite (name, color, food) VALUES ('Bob', 'bacon', 'bob???');

-- Dangit, we fixed him wrong
DELETE FROM favorite WHERE id = 3;

-- Fix Bob for real now
INSERT INTO favorite (name, color, food) VALUES ('Bob', 'bob', 'bacon');

-- Rest of the class
INSERT INTO favorite (name, color, food) values('Christina', 'blue', 'spaghetti');
INSERT INTO favorite (name, color, food) VALUES('Ben', 'blue', 'chocolate');
INSERT INTO favorite (name, color, food) VALUES('Connor', 'green', 'hot wings');
INSERT INTO favorite (name, color, food) VALUES('Mayme', 'coral', 'shrimp');
INSERT INTO favorite (name, color, food) VALUES('Philip', 'black', 'oreos');
INSERT INTO favorite (name, color, food) VALUES('Micah', 'aqua', 'sushi');
INSERT INTO favorite (name, color, food) VALUES('Kendra', 'green', 'apple fritters');
INSERT INTO favorite (name, color, food) VALUES('Derrick', 'green', 'crab');
INSERT INTO favorite (name, color, food) VALUES('Holly', 'green', 'salmon');
INSERT INTO favorite (name, color, food) VALUES('Jacob', 'red', 'pizza');
INSERT INTO favorite (name, color, food) VALUES('Janine', 'purple', 'cheese');

-- Get everything from the table!
SELECT * FROM favorite;

-- Same as above, but specifically listing all fields
SELECT name, color, food, id FROM favorite;

-- Only people who like blue
SELECT * FROM favorite WHERE color = 'blue';

-- Get everything from the table, in name order
SELECT * FROM favorite ORDER BY name;

-- Count students who like different colors
SELECT color, COUNT(*) FROM favorite GROUP BY color;

-- Count students by favorite color, most popular color first
SELECT color, COUNT(*) AS total FROM favorite GROUP BY color ORDER BY total DESC;

-- Count students by favorite color, most popular color first, ordering by color name when there is a tie
SELECT color, count(*) AS total FROM favorite GROUP BY color ORDER BY total desc, color;

-- Select all students, ordered by favorite food
SELECT name, food FROM favorite ORDER BY food;
