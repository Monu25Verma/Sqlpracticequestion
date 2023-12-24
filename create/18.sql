#13Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the combination of columns country_id and region_id will be unique.

create table IF NOT EXISTS countries(
country_id int NOT NULL UNIQUE  PRIMARY KEY,
country_name varchar(20),
region_id int unique PRIMARY KEY not NULL
);


