SELECT
  COUNTRY_NAME as País,
  IF(REGION_ID = 1, "incluído", "não incluído") as "Status Inclusão"
FROM hr.countries ORDER BY País ASC;
