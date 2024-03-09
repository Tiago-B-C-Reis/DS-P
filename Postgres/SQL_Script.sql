-- Command to create the first database
CREATE DATABASE first_database;

-- Command to create the second database
CREATE DATABASE second_database;


-- Switch to the first database
\c first_database;

-- Create a table in the first database
CREATE TABLE table1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);


-- Switch to the second database
\c second_database;

-- Create a table in the second database
CREATE TABLE table2 (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100),
    population INT
);
