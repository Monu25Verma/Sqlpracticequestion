#Q1Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.

select upper(EmpFname)  AS EmpName from EmployeeInfo;