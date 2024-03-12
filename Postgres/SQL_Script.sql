-- Command to create the first database
CREATE DATABASE db_group_F;

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


\l -- list all databases
\c db_group_F -- connect to a database
\dt -- list all tables in the current database
\q -- quit psql

CREATE TABLE customers (id int GENERATED ALWAYS AS IDENTITY
PRIMARY KEY, name text);

ALTER TABLE customers REPLICA IDENTITY USING INDEX customers_pkey;

INSERT INTO customers (name) VALUES ('joe'), ('bob'), ('sue');

CREATE TABLE customers_replica (id int PRIMARY KEY, name text);