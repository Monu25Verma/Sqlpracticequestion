#Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.


create table IF NOT EXISTS  dup_countries
AS SELECT * from countries;
