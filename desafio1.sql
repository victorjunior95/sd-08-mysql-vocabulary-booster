SELECT
  c.COUNTRY_ID AS `País`,
  IF(r.REGION_NAME = 'europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS c
INNER JOIN hr.regions AS r ON c.REGION_ID = r.REGION_ID
ORDER BY `País`;