#Q5Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.


select substring(Address, 1 , INSTR(Address, '(')-1) AS EmpAddress from EmployeeInfo;
