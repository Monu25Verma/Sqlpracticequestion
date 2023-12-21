#14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

create table if not exists job_history(
employee_id int not null primary key,
start_date date not null,
end_date date not null,
job_id int not null,
department_id decimal(4,0) default null,
foreign key (job_id) references job(job_id)
)Engine = InnoDB;