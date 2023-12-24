#3Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

create table  if not exists country_new
AS select * from countries;