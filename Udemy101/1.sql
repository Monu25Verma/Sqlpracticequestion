#Write a SQL Statement that will give you a count of each object type in the Adventure Works database. Order by count descending

select  type, count(*) as CNT
from sys.object
group by type
order by 2 DESC;            #2nd columns make desc