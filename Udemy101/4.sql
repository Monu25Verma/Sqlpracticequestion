use employees;
select * from employees;
select * from salaries;
select * from dept_emp;
select * from dept_manager;
select * from titles;
select distinct(title) from titles;
select * from departments;

#1
select *
from employees e
inner join salaries s
ON e.emp_no = s.emp_no
where s.commission IS  NULL;

select * from employees where first_name  is NULL

#2
select *
from employees e
inner join titles t
ON e.emp_no = t.emp_no
where t.title != "Manager";

select *
from employees e
inner join titles t
ON e.emp_no = t.emp_no
where t.title Not in ("Manager", "Engineer");

#3
select ts.title from titles ts
inner join dept_emp d
ON ts.emp_no = d.emp_no
where d.dept_no = 'd003'
and ts.title = 'STAFF';

select ts.title from titles ts
inner join dept_emp d
ON ts.emp_no = d.emp_no
where d.dept_no IN ('d003')
and ts.title IN ('STAFF');

#4
select e.first_name from employees e
inner join salaries s ON e.emp_no = s.emp_no
inner join dept_emp d ON e.emp_no = d.emp_no
inner join titles t ON e.emp_no = t.emp_no
where d.dept_no IN ("d009") and t.title = "staff" and s.salary  > 1500;

#5
select * from employees where first_name LIKE 'S%' or  first_name like 'A%';

#6
select * from employees e
inner join dept_emp d
ON e.emp_no = d.emp_no
where (d.dept_no  NOT IN ('d001', 'd002'))

#7
select first_name from employees where first_name  not LIKE 'S%'

#8
select e.* from employees e
inner join titles t ON e.emp_no = t.emp_no
inner join dept_emp d on e.emp_no = d.emp_no
where d.dept_no = "d001" and  t.title = "staff"

#9
select e.* from employees e
inner join salaries s ON e.emp_no = s.emp_no
inner join titles t on e.emp_no = t.emp_no
where t.title = "Manager" and s.commission IS  NULL

#10
select e.* from employees e
inner join titles t ON e.emp_no = t.emp_no
inner join dept_emp d on e.emp_no = d.emp_no
where d.dept_no NOT IN ("d001", "d003")
and  t.title = "manager"

#11
select t.title from titles t
inner join dept_emp d on t.emp_no = d.emp_no
inner join salaries s on t.emp_no = s.emp_no
where d.dept_no IN ("d003") and s.salary > 2450 and t.title = "Manager"

#12
select t.title from titles t
inner join dept_emp d on t.emp_no = d.emp_no
inner join salaries s on t.emp_no = s.emp_no
where d.dept_no = "d002"
and s.salary > 2550
and t.title = "analyst"

#13
select * from employees where first_name LIKE 'M%' or  first_name like 'J%'

#14
select e.first_name ,  s.salary from employees e
inner join salaries s ON e.emp_no = s.emp_no
inner join dept_emp d on e.emp_no = d.emp_no
where d.dept_no NOT IN  ("d003")

#15
select * from employees where first_name not LIKE '%ES' or  first_name like '%R'

#16


select e.* from employees e
inner join titles t ON e.emp_no = t.emp_no
inner join dept_emp dt ON e.emp_no = dt.emp_no
inner join salaries s ON e.emp_no = s.emp_no
where dt.dept_no IN ("D001") and t.title = "Manager"
where s.salary in salaries limit 2

#17
select e.* from employees e
inner join titles t ON e.emp_no = t.emp_no
inner join salaries s ON e.emp_no = s.emp_no
where e.first_name like '%E' and t.title = "staff"

#18
select * from employees where year(hire_date) > 1981

#19
select * from employees where month(hire_date) = 2

#20
select e.* from employees e
inner join titles t ON e.emp_no = t.emp_no
inner join dept_emp d ON e.emp_no = d.emp_no
inner join salaries s ON e.emp_no = s.emp_no
where s.salary NOT  BETWEEN  (1000 and 3000) and t.title NOT IN ("MANAGER", "staff") and d.dept_no NOT IN ("d001","d002", "d003")

#21
select e.*, s.salary from employees e
inner join salaries s ON e.emp_no = s.emp_no
inner join dept_emp d ON e.emp_no  = d.emp_no
inner join titles t ON e.emp_no = t.emp_no
where s.salary NOT  between (1000 AND 2000) and t.title not in ("SALESMAN") and d.dept_no IN ("d001","d002","d003")

#22
select dept_name from departments
where dept_name LIKE '%O%'

#23
select  e.*, t.title from employees e
inner join titles t ON e.emp_no = t.emp_no
where t.title LIKE "%MAN%"

#24
select first_name, last_name from employees  where year(hire_date) > 1982 < 1987

#25
select * from employees where month(hire_date) IN (11,12)

#26
select e.first_name, s.commission from employees e
inner join salaries s  ON e.emp_no  = s.emp_no
where s.commission > s.salary

#27
select e.first_name, t.title from employees e
inner join titles t ON e.emp_no = t.emp_no
where e.first_name like 'S%' and t.title = "MANAGER"

#28
select e.first_name, s.salary from employees e
inner join salaries s ON e.emp_no = s.emp_no
where s.salary like "%0"

#29
select first_name from employees where first_name like '%ll%'

#30
select first_name from employees where first_name like 'A%' or first_name like 'E%' or first_name like 'I%'
or first_name like 'O%' or first_name like 'U%'
OR
SELECT first_name FROM employees WHERE first_name LIKE '[AEIOU]%';







