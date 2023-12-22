#16. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.
A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table


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

