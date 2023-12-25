#13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value and that combined values must have exists into the table departments.

create table if not exists employees(
department_id int primary key unique,
department_name varchar(20), default not null),
manager_id decimal(4,0) primary key,
location_id decimal(4,0),
);


insert into employees values();
