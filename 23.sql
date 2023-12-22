#19Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE SET NULL action will set the foreign key column values in the child table(employees) to NULL when the record in the parent table(jobs) is deleted, with a condition that the foreign key column in the child table must accept NULL values and the ON UPDATE SET NULL action resets the values in the rows in the child table(employees) to NULL values when the rows in the parent table(jobs) are updated.


create table if not exists employees(
employee_id int not null primary key,
first_name varchar(10) default null,
last_name varchar(10) default null,
job_id decimal(6,0) not null,
salary int not null,
foreign key(job_id) references jobs(job_id),
ON DELETE CASCADE ON UPDATE RESTRICT
) engine = InnoDB;