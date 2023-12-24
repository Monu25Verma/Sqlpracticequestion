#Write a SQL statement to create a table countries set a constraint  not NULL.

CREATE TABLE IF NOT EXISTS countries(
country_id int primary key NoT NULL,
country_name varchar(10)NoT NULL,
region_id int NoT NULL
);