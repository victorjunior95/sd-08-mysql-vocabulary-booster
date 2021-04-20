SELECT * from hr.countries;

SELECT COUNTRY_NAME AS País,IF(REGION_ID = 1,'incluido','nao incluido') AS `Status Inclusão` FROM hr.countries ORDER BY COUNTRY_NAME ASC;