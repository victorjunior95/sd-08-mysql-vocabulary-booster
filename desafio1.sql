SELECT 
    locale.COUNTRY_NAME AS 'País',
    IF(locale.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS locale ORDER BY locale.COUNTRY_NAME;
