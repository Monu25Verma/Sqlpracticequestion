#Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

create table if not exists job_histry(
employee_id int not null,
start_date DATE not null ,
end_date DATE not null,
check (end_date like '--/--/----')
job_id int not null,
department_id decimal (6,2)
);