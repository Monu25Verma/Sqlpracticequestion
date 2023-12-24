#11. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion.


CREATE TABLE IF NOT EXISTS countries(
country_id int unique primary key NoT NULL,
country_name varchar(10)NoT NULL,
region_id int NoT NULL
);