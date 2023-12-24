#6. Write a SQL statement insert rows from country_new table to countries table.


insert into countries
select * from country_new;