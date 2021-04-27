SELECT countries.COUNTRY_NAME AS 'País',
IF (regions.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.regions 
INNER JOIN hr.countries
ON regions.REGION_ID = countries.REGION_ID
ORDER BY countries.COUNTRY_NAME;
