SELECT
pais.COUNTRY_NAME AS "País",
IF(regiao.REGION_NAME = "Europe", "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries AS pais
INNER JOIN hr.regions AS regiao
ON pais.REGION_ID = regiao.REGION_ID
ORDER BY pais.COUNTRY_NAME;
