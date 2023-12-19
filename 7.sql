#Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which is already exists.

create table IF NOT EXISTS countries(
country_id int primary key,
country_name varchar(10)
 region_id int
 );