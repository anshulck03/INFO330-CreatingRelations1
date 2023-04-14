CREATE TABLE students 
(
    id INTEGER PRIMARY KEY,
    firstname VARCHAR(40),
    lastname VARCHAR(80),
    age NUMERIC(3)
);

INSERT INTO students(id, firstname, lastname, age)
VALUES (1, 'Fred', 'Flintstone', 35),
        (2, 'Wilma', 'Flintstone', 33),
        (3, 'Barney', 'Rubble', 33),
        (4, 'Betty', 'Rubble', 29),
        (5, 'Pebbles', 'Flintstone', 1),
        (6, 'Bam-Bam', 'Rubble', 1),
        (7, 'Bruh', 'Bro', 5),
        (8, 'Howdy', 'Dowdy', 10),
        (9, 'Yippie', 'Whoopie', 27), 
        (10, 'Robert', 'James', 57);

