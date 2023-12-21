#15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.


create table if not exists employees(
employee_id int unique primary key not null,
first_name varchar(20) DEFAULT null,
last_name varchar(20) not NULL,
email varchar(10) not null,
phone_number varchar(10) default null,
hire_date date,
job_id decimal(4, 0),
salary int,
commission int,
manager_id decimal(4,0) default null,
department_id  decimal(4,1) default null,
 foreign key(department_id) reference departments(department_id,manager_id)
);