-- Command to create the first database
CREATE DATABASE db_group_F;

-- Command to create the second database
CREATE DATABASE db_grupo_f_replica;


-- Switch to the first database
\c db_grupo_f;

-- Create a table in the first database
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);


-- Switch to the second database
\c db_grupo_f_replica;

-- Create a table in the second database
CREATE TABLE customers_replica (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100),
    population INT
);


\l -- list all databases
\c db_grupo_f -- connect to a database
\dt -- list all tables in the current database
\q -- quit psql

CREATE TABLE customers (id int GENERATED ALWAYS AS IDENTITY
PRIMARY KEY, name text);

ALTER TABLE customers REPLICA IDENTITY USING INDEX customers_pkey;

INSERT INTO customers (name) VALUES ('joe'), ('bob'), ('sue');

CREATE TABLE customers_replica (id int PRIMARY KEY, name text);