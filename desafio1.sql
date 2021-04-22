SELECT c.COUNTRY_NAME AS "País", IF(c.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries AS c
INNER JOIN regions AS r
ON c.REGION_ID = r.REGION_ID
ORDER BY COUNTRY_NAME ASC;
