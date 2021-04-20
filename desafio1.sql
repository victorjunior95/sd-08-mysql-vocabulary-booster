SELECT 
    A.COUNTRY_NAME AS 'País',
    IF(B.REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS `Status Inclusão`
FROM
    hr.countries A
        JOIN
    hr.regions B ON A.REGION_ID = B.REGION_ID
ORDER BY A.COUNTRY_NAME;
