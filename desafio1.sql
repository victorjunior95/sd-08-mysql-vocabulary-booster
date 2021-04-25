SELECT COUNTRY_NAME AS País,
IF(REGION_ID = 1, 'incluído', 'não incluído')
As `Status Inclusão`
FROM countries
ORDER BY País;
