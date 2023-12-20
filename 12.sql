#7Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.


create table IF NOT EXISTS countries(
country_id int, country_name varchar(20)
region_id int
check(country_name IN('Italy','India','China'))
);