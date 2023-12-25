#14. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and job_id contains the values which must have exists into the table departments and jobs.


create table if not exists employees(
department_id int primary key unique,
department_name varchar(20), default not null),
job_id decimal(4,0) primary key,
location_id decimal(4,0),
);


insert into employees values();