#12Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the column country_id will be unique and store an auto incremented value

create table IF NOT EXISTS countries(
country_id int NOT NULL UNIQUE  AUTO_INCREMENT, PRIMARY KEY
 country_name varchar(20),
region_id int
);
DESC countries);
