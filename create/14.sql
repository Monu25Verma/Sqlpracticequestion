#Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion.


create table if not exists countries(
country_id int not NULL primary key,
country_name varchar(20) not null,
check DISTINCT/UNIQUE(country_id)
 region_id decimal(6,2)
 );