SELECT 
    country_name AS 'País',
    IF(REGION_ID = 1,
        'incluido',
        'não incluido') AS 'Status de inclusão'
FROM
    hr.countries
ORDER BY 'País';
