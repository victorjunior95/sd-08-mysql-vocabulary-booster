SELECT
  COUNTRY_NAME AS Pa í s,
  IF (REGION_ID = 1, 'incluído', 'não incluído') as `Status Inclusão`
FROM
  hr.countries
ORDER BY
  COUNTRY_NAME;
