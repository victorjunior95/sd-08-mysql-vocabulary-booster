select country_name as País,
if(region_id = 1, 'incluido', 'não incluído') as `Status Inclusão`
from hr.countries
order by País;
