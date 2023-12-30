#Question 2:
#a. Write a SQL Statement that will show a count of schemas, tables, and columns (do not include views) in the AdventureWorks database.

select * from sys.tables
select * from sys.columns
select * from sys.schemas


select count(Distinct s.name) as schemaName,
	   count(Distinct t.name) as tableName,
	   count(c.name) as columnName

from   sys.tables  t
INNER join  sys.columns  c on c.object_id = t.object_id
INNER join  sys.schemas s  on s.schema_id = t.schema_id


#b. Write a similar statement as part a but list each schema, table, and column (do not include views). This table can be used later in the course.

select
	count(distinct TABLE_SCHEMA) as tableschema,
	count(distinct TABLE_NAME) as tableschema,
	count(COLUMN_NAME) as tableschema
from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME not in (select TABLE_NAME from INFORMATION_SCHEMA.VIEWS)
