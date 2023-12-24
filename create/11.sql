#Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.


create table jobs(
job_id int not NULL,
job_title varchar(30) NOT NULL,
min_salary decimal(5, 2),
max_salary decimal(5, 2)       #p d - > precision , decimal     #eg:999.99
check(max_salary <= 25000)
 );