# Q2 a. Write a SQL Statement that will show a count of schemas, tables, and columns (do not include views) in the AdventureWorks database.

b. Write a similar statement as part a but list each schema, table, and column (do not include views). This table can be used later in the course.


use AdventureWorks2019
select  *  from sys.tables
select * from sys.columns
select * from sys.schemas


select 
	count(distinct t.name) AS tableName
	,count(distinct s.name) AS SchemaName
	,count(c.name) AS columnName

from 
	sys.tables t inner join sys.columns c on c.object_id = t.object_id
	inner join sys.schemas s on s.schema_id = t.schema_id
 

 select
	count(distinct Table_schema) as schemaName,
	count(distinct table_name) as TableName,
	count(COLUMN_NAME) as ColumnName
 from INFORMATION_SCHEMA.COLUMNS where table_name not in(select  distinct Table_Name from INFORMATION_SCHEMA.views)


 select 
	t.name AS tableName,
	 s.name AS SchemaName
	,c.name AS columnName

from 
	sys.tables t inner join sys.columns c on c.object_id = t.object_id
	inner join sys.schemas s on s.schema_id = t.schema_id
 

 select
	 Table_schema as schemaName,
	 table_name as TableName,
	 COLUMN_NAME as ColumnName
 from INFORMATION_SCHEMA.COLUMNS where table_name not in(select  distinct Table_Name from INFORMATION_SCHEMA.views)