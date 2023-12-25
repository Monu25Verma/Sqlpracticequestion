#12Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which are exists in job_id column of jobs table.



insert into job_history values()
where job_history.job_id in (select distinct(job_id) from
jobs);