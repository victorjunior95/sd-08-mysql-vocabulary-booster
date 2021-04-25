/* -- Desafio1.SQL */ 

SELECT tbC.COUNTRY_NAME 'País',
IF (tbR.region_name = 'Europe', 'incluído', 'não incluído') 'Status Inclusão'
FROM hr.countries tbC
INNER JOIN hr.regions tbR
ON tbC.REGION_ID = tbR.REGION_ID
ORDER BY tbC.COUNTRY_NAME;
