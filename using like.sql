#Select all data for cats whose breed starts with an 'R', favourite toy starts with the word 'ball',
#and coloration name ends with an 'm'.


select * from cat
where breed LIKE 'R%'
	and fav_toy LIKE 'ball%'
	and coloration LIKE '%m'
;