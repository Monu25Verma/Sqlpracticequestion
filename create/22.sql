#17Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.

create table if not exists employees(
employee_id int not null  unique primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(10),
phone_number int not null,
hire_date date,
job_id decimal(6,1) foreign key default null, #3001.0
salary int not null,
commission decimal(4,1),
manager_id int default null,
department_id int default null,
foreign key(department_id) references departments(department_id)
foreign key(job_id) references jobs(job_id)
 ) engines = InnoDB;

