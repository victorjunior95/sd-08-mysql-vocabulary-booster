select countries.COUNTRY_NAME as País, if(countries.REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão'
from hr.regions as regions 
inner join hr.countries as countries 
on regions.REGION_ID = countries.REGION_ID
order by countries.COUNTRY_NAME;
