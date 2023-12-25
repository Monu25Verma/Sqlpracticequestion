#11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.

create table if not exists countries(
country_id int  auto_increment primary key,
country_name varchar(40) not null default 'N/A',
region_id integer not null
);

insert into countries values(7, 'india', 2000);
