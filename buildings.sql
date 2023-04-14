CREATE TABLE buildings (
    name VARCHAR(80) NOT NULL,
    shortname VARCHAR(10) UNIQUE, 
    id INTEGER(RAND()) PRIMARY KEY
);

CREATE TABLE rooms (
    number INTEGER,
    buildingid , 
    seating INTEGER
);
